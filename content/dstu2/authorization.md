---
title: Authorization | DSTU 2 API
---

# Authorization Server Client Documentation #
---------------------------------------------

### Introduction ###
The Cerner Authorization Server currently supports [OAuth 2.0][1] [SMART on FHIR<sup>®</sup>][4] launch workflows. As a client, it will require interaction between the client (your client application), the user, the authorization server, a SMART Launch server and a resource server that implements the FHIR<sup>®</sup> standard.

### Registration ###
In order for your client application to utilize any protected resources, your client application must first register. To do this please [contact us][10] with the following fields, all fields are **required**.

* Name - Application name, this should match what the name of the app will be in the app store  
* Redirect/Callback URI  
* Email address  
* Logo URI - The logo will need to be a [Scalable Vector Graphics][6] image  
* SMART Launch URI

Once approved, a **client identifier** will be provided for use with the Cerner Authorization Server. As a registered client, Cerner organizations may then ask for your client application to be enabled, which is necessary in order to gain access to their protected resources.

### Supported Scopes ###
The Cerner Authorization Server supports many, but not all, of the [SMART][4] or [OAuth/OpenID Connect][5] scopes. The following scopes are **supported**.

* online_access
* launch
* openid
* profile
* [User-level and patient-specific scopes][11] for requesting clinical data

### Requesting an authorization code ###
Cerner currently supports the [SMART][4] launch workflow from within an EHR, such as Cerner Millennium's PowerChart. This allows for current context information (patient info, encounter info, user info, etc.) to be provided to the client application upon launching. Below is a flowchart of the EHR-initiated [SMART][4] launch workflow.

![alt text](http://www.websequencediagrams.com/cgi-bin/cdraw?lz=dGl0bGUgRUhSIEFwcCBMYXVuY2ggRmxvdwoKTm90ZSAgbGVmdCBvZiBFSFI6IFVzZXIgbAAgBWVzIGFwcApFSFItPj5BcHA6IFJlZGlyZWN0IHRvIGFwcDoAIgYAQQZyaWdoAEIFACMHcXVlc3QgYXV0aG9yaXphdGlvbgpBcHAtPj4AYwUAPwxlaHI6ACEIZQCBARRPbiBhcHByb3ZhbABzHHIAgRgHX3VyaT9jb2RlPTEyMyYuLi4AcwYAgVsFUE9TVCAvdG9rZW4AGgkAggIGAIF6DUNyZWF0ZSAAIwU6XG4ge1xuYWNjZXNzXwA2BT1zZWNyZXQtAEMFLXh5eiZcbnBhdGllbnQ9NDU2JlxuZXhwaXJlc19pbjogMzYwMFxuLi4uXG59Cn0AgksGAIJLBVsATgYAYQYgcmVzcG9uc2VdAIMSBwCCRA5BACUGAF8HIGRhdGFcbnZpYSBGSElSIEFQSQCBWgtHRVQgL2ZoaXIvUACBDwYvNDU2XG5BAIMBDDogQmVhcmVyIACBOxAAg2wFAIEaB3tyZXNvdXJjZVR5cGU6ICIASAciLCAiYmlydGhEYXRlIjogLi4ufQo&s=default "SMART launch diagram")

Once a launch context is received by your client application from the EHR, it must be sent to the authorization server so that an authorization code may be requested. To request an authorization code, to turn in for an access code, you will need to issue a **GET** request to the authorization server's authorize endpoint, which is provided by the [SMART conformance statement][9]. At this point the authorization server will redirect the user to authenticate if they are not already authenticated. Your client application should use the system's browser for performing this exchange rather than an embedded browser. The **GET** request will **require** the following query parameters.

* response_type - currently only support "code"
* client_id  
* launch - Note: only required if using a [SMART][4] launch context
* aud - Required if using a [SMART][4] launch. This should be the fhir server root url.
* scope - Note: launch **must** be one of the scopes if using a [SMART][4] launch context. When requesting clinical data, [SMART scopes][11] for requesting clinical data must be provided. At minimum, one scope must be provided in order for a successful request to occur.

It is also **recommended** that your client application provides the following query parameters.

* state - to prevent [cross-site request forgery attacks][2]
* redirect_uri - note: The redirect_uri **must** match what was originally registered and requested

The authorization server authorize URL can be found in the security section of the [conformance document](conformance.md)

If the user does not currently have an active session, the Authorization Server will redirect the user to the identity provider for the client organization in order to authenticate.

If successful, the authorization server will redirect the user-agent back to your client applications redirect_uri with a **code** query parameter. This is the authorization code that can be exchanged for an access token.

```
https://test.com/cb?code=1234-567890ab-cdef
```

Note: Using embedded browsers prevents single sign-on and authentication may fail for certain organizations who implement third party authentication systems.

### Requesting an access token ###
Once an authorization code has been acquired, a back-channel **POST** to the authorization server's token endpoint can be made to request an access token. Following the [OAuth 2.0][1] spec, the authorization server accepts a content type of **application/x-www-form-urlencoded** from your client application with the following information.

* grant_type - currently only support "authorization_code"
* code
* client_id
* redirect_uri (only necessary if it was provided when the authorization code was requested)

The authorization server authorize URL can be found in the security section of the [conformance document](conformance.md)

```
grant_type=authorization_code&code={AUTHORIZATION_CODE}&client_id={YOUR_CLIENT_ID}&redirect_uri={YOUR CALLBACK URI, IF PROVIDED}
```

If successful, the authorization server will return a **200 OK** response with a content-type of [**application/json**][3] similar to the example below.

```
{
   "access_token":"eyJraWQiOiIyMDE2LTAyLTE2VDE2OjM2OjQ4LjY5MiIsInR5cCI6IkpXVCIsImFsZyI6IkVTMjU2In0.eyJzdWIiOiJIRDAxNjUxNCIsInVybjpjb206Y2VybmVyOmF1dGhvcml6YXRpb246Y2xhaW1zIjp7InZlciI6IjEuMCIsInRudCI6IjJjNDAwMDU0LTQyZDgtNGU3NC04N2I3LTgwYjViZDVmZGU5ZiIsImF6cyI6Im9ubGluZV9hY2Nlc3MifSwiYXpwIjoiZGV2anMiLCJpc3MiOiJodHRwczpcL1wvYXV0aG9yaXphdGlvbi5kZXZjZXJuZXIuY29tXC8iLCJleHAiOjE0NTU4OTkzOTEsImlhdCI6MTQ1NTg5ODc5MSwianRpIjoiOTQ1YjQ5ZjctMTFiMi00NmQ2LWEwZjctZGJmNjcxMzVmYTJlIiwidXJuOmNlcm5lcjphdXRob3JpemF0aW9uOmNsYWltczp2ZXJzaW9uOjEiOnsidmVyIjoiMS4wIiwicHJvZmlsZXMiOnsic21hcnQtdjEiOnsiYXpzIjoib25saW5lX2FjY2VzcyJ9fSwiY2xpZW50IjoiZGV2anMiLCJ1c2VyIjp7InN1YiI6IkhEMDE2NTE0IiwicGVyc29uYSI6InBhdGllbnQiLCJpZHNwIjoiOGUzM2FlM2QtNDg3Mi00ZDJmLWEwNTktNWYyMzA3ZmNiZjNiIiwiaWRzcFVyaSI6Imh0dHBzOlwvXC9hc3NvY2lhdGVzLmRldmNlcm5lci5jb21cL2FjY291bnRzXC9vcGVuaWQifSwidGVuYW50IjoiMmM0MDAwNTQtNDJkOC00ZTc0LTg3YjctODBiNWJkNWZkZTlmIn19.EnvJ8hRDIZcb9pKsfOaFGXhpAnfzi7rDMks0mAnAp0Lsbooe-JPoVPY8FT00xWP9JelbGdKGpoNLt0enGVGhnQ",
   "token_type":"Bearer",
   "expires_in":570,
   "refresh_token":"1234-567890ab-cdef"
}
```

The [bearer access token][7] returned from the authorization server is what you provide to the protected resource. If a refresh token was also requested, it will be returned as well. Access tokens are good for 10 minutes and it is recommended refreshing it before use if less than 5 minutes remain before it expires.  

### OpenID Connect ###
If the scopes "openid" and "profile" were originally provided, an [OpenID Connect][8] id_token will be included per the [SMART][4] specification that includes the user's URL (userfhirurl) as the "profile" claim. This is typically a link to a FHIR<sup>®</sup> standard Practitioner resource.

```
{
  "access_token" : "18adCadfj_lj13S3ada8.41jVCo_dgalL",
  "encounter" : "91731344",
  "patient" : "121341578",
  "id_token" : "eyAiYWxnIjoibm9uZSIKfQ==.ewogICJpc3MiOiAiaHR0cHM6Ly9hdXRob3JpemF0aW9uLmRldmNlcm5lci5jb20vb2F1dGgyIiwKICAic3ViIjogIm1yNTE0QGNlcm5lci5jb20iLAogICJhdWQiOiAiY2xpZW50X2FwcCIsCiAgIm5vbmNlIjogIm4tMFM2X1d6QTJNaiIsCiAgImV4cCI6IDEzMTEyODE5NzAsCiAgImlhdCI6IDEzMTEyODA5NzAsCiAgInByb2ZpbGUiOiJodHRwczovL2V4YW1wbGUuY29tLzEyMzQiCn0="
}
```

### Using an access token ###
In order to use an access token, your client application needs to provide the access token received from the authorization server to the protected resource. The following is a non-normative example of the usage of the token to access a protected RESTful web service on a resource server.  It will need to be added as an authorization HTTP header.

```
Authorization: Bearer {ACCESS_TOKEN}
```

If the access token is valid and your application is authorized, the resource server will allow your client application to access its protected resources.

### Using a Refresh Token ###
The authorization server has support for **online access** refresh tokens. Refresh tokens **must** be used in conjunction with the **online_access** scope. In order to use a refresh token, the user's session **must** remain active. To request a refresh token, **online_access** must be added to the scope query parameter when requesting an authorization code. If this scope is not added, a refresh token will not be returned. Following the [OAuth 2.0][1] spec, the authorization server accepts a content type of **application/x-www-form-urlencoded** **POST** from your client application with the following information.

* grant_type - "refresh_token"
* refresh_token

```
grant_type=refresh_token&refresh_token={REFRESH_TOKEN}
```

If successful, the authorization server will return a **200 OK** response with a content-type of [**application/json**][3] similar to the non-normative example below.

```
{
   "access_token":"eyJraWQiOiIyMDE2LTAyLTE2VDE2OjM2OjQ4LjY5MiIsInR5cCI6IkpXVCIsImFsZyI6IkVTMjU2In0.eyJzdWIiOiJIRDAxNjUxNCIsInVybjpjb206Y2VybmVyOmF1dGhvcml6YXRpb246Y2xhaW1zIjp7InZlciI6IjEuMCIsInRudCI6IjJjNDAwMDU0LTQyZDgtNGU3NC04N2I3LTgwYjViZDVmZGU5ZiIsImF6cyI6Im9ubGluZV9hY2Nlc3MifSwiYXpwIjoiZGV2anMiLCJpc3MiOiJodHRwczpcL1wvYXV0aG9yaXphdGlvbi5kZXZjZXJuZXIuY29tXC8iLCJleHAiOjE0NTU4OTk2NzAsImlhdCI6MTQ1NTg5OTA3MCwianRpIjoiZWI0Njg1ZDItZGM1MC00Y2NjLWE0YTktYWI1MjJlNzdjZTg1IiwidXJuOmNlcm5lcjphdXRob3JpemF0aW9uOmNsYWltczp2ZXJzaW9uOjEiOnsidmVyIjoiMS4wIiwicHJvZmlsZXMiOnsic21hcnQtdjEiOnsiYXpzIjoib25saW5lX2FjY2VzcyJ9fSwiY2xpZW50IjoiZGV2anMiLCJ1c2VyIjp7InN1YiI6IkhEMDE2NTE0IiwicGVyc29uYSI6InBhdGllbnQiLCJpZHNwIjoiOGUzM2FlM2QtNDg3Mi00ZDJmLWEwNTktNWYyMzA3ZmNiZjNiIiwiaWRzcFVyaSI6Imh0dHBzOlwvXC9hc3NvY2lhdGVzLmRldmNlcm5lci5jb21cL2FjY291bnRzXC9vcGVuaWQifSwidGVuYW50IjoiMmM0MDAwNTQtNDJkOC00ZTc0LTg3YjctODBiNWJkNWZkZTlmIn19.FpGIHS438A9ocU4ozx5s8PzpZ4OhZ6St7S6uP5galSkxrgof07ao1bv2LtFqcbyaFGUTeU3J0NtV82Sfg7GpqA",
   "token_type":"Bearer",
   "expires_in":570
}
```

The refresh token issued is good while the user's session is still valid and can be used over and over again until the user's session is no longer valid or the refresh token has been revoked due to being compromised.

### Error Codes ###
There are numerous possible situations that can cause an error while attempting to retrieve an access token. Some are displayed directly to users when the client application redirect URI cannot be trusted while others are returned to the client application in the error_uri as per section 4.1.2.1 of the [OAuth 2.0][1] specification. If an error is returned to the application, an application should display it's own error page and include the link from the error response.

##### Error URNs for the Authorization Server #####
* **urn:cerner:error:authorization-server:oauth2:grant:invalid-request** - The authorization request was syntactically invalid.
* **urn:cerner:error:authorization-server:oauth2:grant:unknown-client** - The client application is not registered.
* **urn:cerner:error:authorization-server:oauth2:grant:invalid-redirect-uri** - The requested redirect URI does not match the one registered for the client application.
* **urn:cerner:error:authorization-server:oauth2:grant:invalid-redirect-uri-trailing-slash** - The requested redirect URI does not match the one registered for the client application because of a trailing slash at the end of one of the URIs.
* **urn:cerner:error:authorization-server:oauth2:grant:redirect-uri-not-absolute** - The requested or registered redirect URI is not absolute.
* **urn:cerner:error:authorization-server:oauth2:grant:redirect-uri-not-registered** - The requested or registered redirect URI is not registered.
* **urn:cerner:error:authorization-server:oauth2:grant:unknown-tenant** - The client redirect URI was known and valid, but the tenant provided was unknown.
* **urn:cerner:error:authorization-server:oauth2:grant:tenant-not-configured** - The tenant id was known and valid, but the identity service provider id for the provided persona was not.
* **urn:cerner:error:authorization-server:oauth2:grant:unauthorized-client-for-tenant** - The client redirect URI was known and valid, but is not authorized for use with the specified tenant.
* **urn:cerner:error:authorization-server:oauth2:grant:server-error** - The client redirect URI was known and valid, but other fatal errors occurred during processing.
* **urn:cerner:error:authorization-server:oauth2:grant:unsupported-response-type** - A response type other than "code" was requested.
* **urn:cerner:error:authorization-server:oauth2:grant:csrf-security-failure** - The CSRF token used in confirming the user's approval was invalid; we will immediately notify the client app that we are unable to satisfy the request.
* **urn:cerner:error:authorization-server:oauth2:grant:denied-by-server** - The server denied the grant because the client is not authorized for any of the scopes it requested.
* **urn:cerner:error:authorization-server:oauth2:grant:denied-by-user** - The user denied the grant, either directly, or by choosing to cancel during the authentication process.
* **urn:cerner:error:authorization-server:oauth2:grant:invalid-patient-id** - The patient id does not exist or the user does not have access to the selected patient id's records.
* **urn:cerner:error:authorization-server:oauth2:grant:authorized-representative-server-error** - A server error was received from the authorized representative service.

* **urn:cerner:error:authorization-server:oauth2:token:unsupported-grant-type** - The grant type is not one supported by this server.
* **urn:cerner:error:authorization-server:oauth2:token:invalid-redirect-uri** - The URI provided did not match the original request, or is not a valid URI.
* **urn:cerner:error:authorization-server:oauth2:token:empty-scopes** - The resulting token contains no scopes, either due to unsatisfied constraints specified in the token request, or because the client is no longer authorized for the scopes associated with the refresh token.
* **urn:cerner:error:authorization-server:oauth2:token:terminated-client** - The client application has a valid token, but is no longer registered.
* **urn:cerner:error:authorization-server:oauth2:token:code:invalid** - The authorization code presented is either invalid or has expired.
* **urn:cerner:error:authorization-server:oauth2:token:code:client:mismatch** - The client provided did not match the original authorization code request.
* **urn:cerner:error:authorization-server:oauth2:token:code:tenant:mismatch** - The tenant provided did not match the original authorization code request.
* **urn:cerner:error:authorization-server:oauth2:token:code:tenant-terminated** - The client application is no longer authorized to access tenant resources specified in the original authorization code.
* **urn:cerner:error:authorization-server:oauth2:token:code:tenant-invalid** - The tenant for which a token requested in not registered.
* **urn:cerner:error:authorization-server:oauth2:token:invalid_authorization_header** - The Authorization Header used in client_credentials grants for B2B workflows is invalid.
* **urn:cerner:error:authorization-server:oauth2:token:invalid_client_credentials** - The client credentials were invalid.
* **urn:cerner:error:authorization-server:oauth2:token:patient-scope-requires-one-patient-id** - There must be exactly one patient id selected when requesting a patient/*.* scope.
* **urn:cerner:error:authorization-server:oauth2:token:tenant-not-enabled-for-testing** - The tenant is not enabled for obtaining testing tokens on behalf of users.
* **urn:cerner:error:authorization-server:oauth2:token:client-not-enabled-for-testing** - The client is not enabled for obtaining testing tokens on behalf of users.
* **urn:cerner:error:authorization-server:oauth2:token:invalid-testing-scenario** - The simulated testing scenario is not normally possible, such as combining system and user scopes, or providing too many (or no) patients in the request.

* **urn:cerner:error:authorization-server:oauth2:token:refresh-token:token-invalid** - The refresh token presented is either invalid, expired, or was terminated by the user.
* **urn:cerner:error:authorization-server:oauth2:token:refresh-token:session-invalid** - The refresh token presented was valid, but was scoped for online_access, and the user session has been logged out or expired.
* **urn:cerner:error:authorization-server:oauth2:token:refresh-token:tenant-terminated** - The client application is longer authorized to access tenant resources specified in the original grant for the refresh token.

* **urn:cerner:error:authorization-server:smart-v1:grant:launch:audience-required** - A launch scope was requested, but an audience was not supplied.
* **urn:cerner:error:authorization-server:smart-v1:grant:launch:launch-code-required** - A launch scope was requested, but a launch code was not supplied.
* **urn:cerner:error:authorization-server:smart-v1:grant:launch:unknown-resource-server** - An application received a launch originating from an unknown resource server.
* **urn:cerner:error:authorization-server:smart-v1:grant:launch:invalid-code** - An application sent an invalid launch code.
* **urn:cerner:error:authorization-server:smart-v1:grant:launch:mismatchted-identity** - A different user is currently authenticated on the user's device to the EHR launching mechanism.
* **urn:cerner:error:authorization-server:smart-v1:grant:launch:unsupported-version** - The EHR does not support the version of launch that was requested.
* **urn:cerner:error:authorization-server:smart-v1:grant:launch:unspecified** - Resolution of launch data failed at the EHR for unspecified reasons.
* **urn:cerner:error:authorization-server:smart-v1:grant:launch:unregistered-service** - The launch resolution service was not configured for a given tenant.
* **urn:cerner:error:authorization-server:smart-v1:grant:launch:audience-not-white-listed** - The audience resource requested is not approved.

* **urn:cerner:error:authorization-server:unregistered-authorized-representatives-server** - The Authorized Representatives service was not configured properly.
* **urn:cerner:error:authorization-server:preauthentication** - A fatal error in the pre-authentication process.
* **urn:cerner:error:authorization-server:server-error** - An unspecified server error.
* **urn:cerner:error:authorization-server:grant:session-service:authentication:cancelled** - The user or identity provider cancelled the authentication request.
* **urn:cerner:error:authorization-server:grant:session-service:authentication:error** - An unspecified server error occurred while authenticating.


[1]: https://tools.ietf.org/html/rfc6749  
[2]: https://www.owasp.org/index.php/Cross-Site_Request_Forgery_(CSRF)  
[3]: http://json.org/  
[4]: http://docs.smarthealthit.org/authorization/  
[5]: http://openid.net/specs/openid-connect-core-1_0.html#ScopeClaims  
[6]: https://en.wikipedia.org/wiki/Scalable_Vector_Graphics
[7]: https://tools.ietf.org/html/rfc6750
[8]: http://openid.net/connect/
[9]: http://docs.smarthealthit.org/authorization/conformance-statement/  
[10]: http://www.cerner.com/FHIR_Application_Authorization_Request/
[11]: http://docs.smarthealthit.org/authorization/scopes-and-launch-context/
