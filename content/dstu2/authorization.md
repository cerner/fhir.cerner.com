---
title: Authorization | FHIR DSTU 2 API
---

# Authorization Server Client Documentation #
---------------------------------------------

### Introduction ###
The Cerner Authorization Server currently supports [OAuth 2.0][1] [SMART on FHIR][5] launch workflows. As a client, it will require interaction between the client (your client application), the user, the authorization server, a SMART Launch server and a FHIR resource server.

### Registration ###
In order for your client application to utilize any FHIR protected resources, your client application must first register. To do this please [contact us][11] with the following fields, all fields are **required**.

* Name - Application name, this should match what the name of the app will be in the app store  
* Redirect/Callback URI  
* Email address  
* Logo URI - The logo will need to be a [Scalable Vector Graphics][7] image
* SMART Launch URI

Once approved, a **client identifier** will be provided for use with the Cerner Authorization Server. As a registered client, Cerner organizations may then ask for your client application to be enabled, which is necessary in order to gain access to their protected FHIR resources.

### Supported Scopes ###
The Cerner Authorization Server supports many, but not all, of the [SMART][5] or [OAuth/OpenID Connect][6] scopes. The following scopes are **supported**.

* online_access
* launch
* openid
* profile
* [User-level and patient-specific scopes][12] for requesting clinical data

### Requesting an authorization code ###
Cerner currently supports the [SMART][5] launch workflow from within an EHR, such as Cerner Millennium's PowerChart. This allows for current context information (patient info, encounter info, user info, etc.) to be provided to the client application upon launching. Below is a flowchart of the EHR-initiated [SMART][5] launch workflow.

![alt text](http://www.websequencediagrams.com/cgi-bin/cdraw?lz=dGl0bGUgRUhSIEFwcCBMYXVuY2ggRmxvdwoKTm90ZSAgbGVmdCBvZiBFSFI6IFVzZXIgbAAgBWVzIGFwcApFSFItPj5BcHA6IFJlZGlyZWN0IHRvIGFwcDoAIgYAQQZyaWdoAEIFACMHcXVlc3QgYXV0aG9yaXphdGlvbgpBcHAtPj4AYwUAPwxlaHI6ACEIZQCBARRPbiBhcHByb3ZhbABzHHIAgRgHX3VyaT9jb2RlPTEyMyYuLi4AcwYAgVsFUE9TVCAvdG9rZW4AGgkAggIGAIF6DUNyZWF0ZSAAIwU6XG4ge1xuYWNjZXNzXwA2BT1zZWNyZXQtAEMFLXh5eiZcbnBhdGllbnQ9NDU2JlxuZXhwaXJlc19pbjogMzYwMFxuLi4uXG59Cn0AgksGAIJLBVsATgYAYQYgcmVzcG9uc2VdAIMSBwCCRA5BACUGAF8HIGRhdGFcbnZpYSBGSElSIEFQSQCBWgtHRVQgL2ZoaXIvUACBDwYvNDU2XG5BAIMBDDogQmVhcmVyIACBOxAAg2wFAIEaB3tyZXNvdXJjZVR5cGU6ICIASAciLCAiYmlydGhEYXRlIjogLi4ufQo&s=default "SMART launch diagram")

Once a launch context is received by your client application from the EHR, it must be sent to the authorization server so that an authorization code may be requested. To request an authorization code, to turn in for an access code, you will need to issue a **GET** request to the authorization server's authorize endpoint, which is provided by the [SMART][10] token and authorization extension. At this point the authorization server will redirect the user to authenticate if they are not already authenticated. Your client application should use the system's browser for performing this exchange rather than an embedded browser. The **GET** request will **require** the following query parameters.

* response_type
* client_id
* launch - Note: only required if using a [SMART][5] launch context
* aud - Required if using a [SMART][5] launch. This should be the fhir server root url.
* scope - Note: launch **must** be one of the scopes if using a [SMART][5] launch context. When requesting clinical data, [SMART scopes][12] for requesting clinical data must be provided.

It is also **recommended** that your client application provides the following query parameters.

* state - to prevent [cross-site request forgery attacks][2]
* redirect_uri - note: The redirect_uri **must** match what was originally registered

```
https://authorization.sandboxcerner.com/realms/{TENANT_ID}/protocols/smart/authorize?response_type=code&client_id={YOUR_CLIENT_ID}&state=12345&redirect_uri=https%3A%2F%2Ftest.com%2Fcb
```

If the user does not currently have an active session, the Authorization Server will redirect the user to the identity provider for the client organization in order to authenticate. 

If successful, the authorization server will redirect the user-agent back to your client applications redirect_uri with a **code** query parameter. This is the authorization code that can be exchanged for an access token.

```
https://test.com/cb?code=1234-567890ab-cdef
```

Note: Using embedded browsers prevents single sign-on and authentication may fail for certain organizations who implement third party authentication systems. 

### Requesting an access token ###
Once an authorization code has been acquired, a back-channel **POST** to the authorization server's token endpoint can be made to request an access token. Following the [OAuth 2.0][1] spec, the authorization server accepts a content type of **application/x-www-form-urlencoded** from your client application with the following information.

* grant_type
* code
* client_id
* redirect_uri (only if provided when the authorization code was requested)

```
https://authorization.sandboxcerner.com/realms/{TENANT_ID}/protocols/smart/token
```

```
grant_type=authorization_code&code={AUTHORIZATION_CODE}&client_id={YOUR_CLIENT_ID}&redirect_uri={YOUR CALLBACK URI}
```

If successful, the authorization server will return a **200 OK** response with a content-type of [**application/json**][3] similar to the example below.

```
{
   "access_token":"eyJraWQiOiIyMDE1LTA1LTE1VDE4OjI2OjUxLjM0NiIsInR5cCI6IkpXVCIsImFsZyI6IkVTMjU2In0.eyJzdWIiOiJLTDAyODA2NSIsInVybjpjb206Y2VybmVyOmF1dGhvcml6YXRpb24uY2xhaW1zIjp7InZlciI6IjEuMCIsInRudCI6IjhlMzNhZTNkLTQ4NzItNGQyZi1hMDU5LTVmMjMwN2ZjYmYzYiJ9LCJhenAiOiIyIiwiaXNzIjoiaHR0cDpcL1wvbG9jYWxob3N0OjgwODBcL2F1dGhvcml6YXRpb25cLzhlMzNhZTNkLTQ4NzItNGQyZi1hMDU5LTVmMjMwN2ZjYmYzYlwvdG9rZW4iLCJleHAiOjE0MzE3MTUxNDcsImlhdCI6MTQzMTcxNDU0NywianRpIjoiZmIzZDMwOGQtZmQ0Yy00MTk5LTlmZDQtZTU2ZmEwM2Y3ZTViIn0.Fv_6-LtIFzvf7DHleH-rXsjnaEMFgTHRyok4vJ8hkml5FQtnKejNSwECvqdex7hz6VyclcMy67D_bcafNZjNb",
   "token_type":"Bearer",
   "expires_in":600,
   "refresh_token":"1234-567890ab-cdef"
}
```

The [bearer access token][8] returned from the authorization server is a [JSON Web Token (JWT)][4]. The JWT is what you provide to the protected FHIR resource. If a refresh token was also requested, it will be returned as well. Access tokens are good for 10 minutes and it is recommended refreshing it before use if less than 5 minutes remain before it expires.  

### OpenID Connect ###
If the scopes "openid" and "profile" were originally provided, an [OpenID Connect][9] id_token will be included per the [SMART][5] specification that includes the user's FHIR resource URL (userfhirurl) as the "profile" claim.

```
{ 
  "access_token" : "18adCadfj_lj13S3ada8.41jVCo_dgalL",
  "encounter" : "91731344",
  "patient" : "121341578",
  "id_token" : "eyAiYWxnIjoibm9uZSIKfQ==.ewogICJpc3MiOiAiaHR0cHM6Ly9hdXRob3JpemF0aW9uLmRldmNlcm5lci5jb20vb2F1dGgyIiwKICAic3ViIjogIm1yNTE0QGNlcm5lci5jb20iLAogICJhdWQiOiAiY2xpZW50X2FwcCIsCiAgIm5vbmNlIjogIm4tMFM2X1d6QTJNaiIsCiAgImV4cCI6IDEzMTEyODE5NzAsCiAgImlhdCI6IDEzMTEyODA5NzAsCiAgInByb2ZpbGUiOiJodHRwczovL2V4YW1wbGUuY29tLzEyMzQiCn0="
}
```

Additionally, the claims specified in the launch resolution response will be included in the custom claims of the authorization token defined by Cerner.

```
"urn:com:cerner:authorization:claims" : 
{ 
    "azs" : [ 
        "test-scope1",
        "test-scope2" ],
      "encounter" : "91731344",
      "patient" : "121341578",
      "ppr":"100251",
      "tnt" : "8e33ae3d-4872-4d2f-a059-5f2307fcbf3b",
      "ver" : "1.0"
    }
```

### Using an access token ###
In order to use an access token, your client application needs to provide the access token received from the authorization server to the FHIR protected resource. The following is a non-normative example of the usage of the token to access a protected RESTful web service on a resource server.  It will need to be added as an authorization HTTP header.

```
Authorization: Bearer {ACCESS_TOKEN}
```

If the access token is valid, and your application is authorized, the FHIR resource server will allow your client application to access its protected resources.

### Using a Refresh Token ###
The authorization server has support for **online access** refresh tokens. Refresh tokens **must** be used in conjunction with the **online_access** scope. In order to use a refresh token, the user's session **must** remain active. To request a refresh token, **online_access** must be added to the scope query parameter when requesting an authorization code. If this scope is not added, a refresh token will not be returned. Following the [OAuth 2.0][1] spec , the authorization server accepts a content type of **application/x-www-form-urlencoded** **POST** from your client application with the following information.

* grant_type
* refresh_token

```
grant_type=refresh_token&refresh_token={REFRESH_TOKEN}
```

If successful, the authorization server will return a **200 OK** response with a content-type of [**application/json**][3] similar to the example below. 

```
{
   "access_token":"eyJraWQiOiIyMDE1LTA1LTE1VDE4OjI2OjUxLjM0NiIsInR5cCI6IkpXVCIsImFsZyI6IkVTMjU2In0.eyJzdWIiOiJLTDAyODA2NSIsInVybjpjb206Y2VybmVyOmF1dGhvcml6YXRpb24uY2xhaW1zIjp7InZlciI6IjEuMCIsInRudCI6IjhlMzNhZTNkLTQ4NzItNGQyZi1hMDU5LTVmMjMwN2ZjYmYzYiJ9LCJhenAiOiIyIiwiaXNzIjoiaHR0cDpcL1wvbG9jYWxob3N0OjgwODBcL2F1dGhvcml6YXRpb25cLzhlMzNhZTNkLTQ4NzItNGQyZi1hMDU5LTVmMjMwN2ZjYmYzYlwvdG9rZW4iLCJleHAiOjE0MzE3MTUxNDcsImlhdCI6MTQzMTcxNDU0NywianRpIjoiZmIzZDMwOGQtZmQ0Yy00MTk5LTlmZDQtZTU2ZmEwM2Y3ZTViIn0.Fv_6-LtIFzvf7DHleH-rXsjnaEMFgTHRyok4vJ8hkml5FQtnKejNSwECvqdex7hz6VyclcMy67D_bcafNZjNb",
   "token_type":"Bearer",
   "expires_in":600
}
```

The refresh token issued is good while the user's session is still valid and can be used over and over again until the user's session is no longer valid or the refresh token has been revoked due to being compromised. 

[1]: https://tools.ietf.org/html/rfc6749  
[2]: https://www.owasp.org/index.php/Cross-Site_Request_Forgery_(CSRF)  
[3]: http://json.org/  
[4]: https://tools.ietf.org/html//rfc7519  
[5]: http://docs.smarthealthit.org/authorization/  
[6]: http://openid.net/specs/openid-connect-core-1_0.html#ScopeClaims  
[7]: https://en.wikipedia.org/wiki/Scalable_Vector_Graphics
[8]: https://tools.ietf.org/html/rfc6750
[9]: http://openid.net/connect/
[10]: http://docs.smarthealthit.org/authorization/conformance-statement/  
[11]: http://www.cerner.com/FHIR_Application_Authorization_Request/
[12]: http://docs.smarthealthit.org/authorization/scopes-and-launch-context/