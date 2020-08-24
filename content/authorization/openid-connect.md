---
title: OpenID Connect
layout: authorization
---

# Authorization Server OpenID Connect Support

## Introduction

[OpenID Connect][OPENID] describes itself as "a simple identity layer
on top of the OAuth 2.0 protocol".  The specification provides a set
of message structures, a messaging protocol, and a security framework
to allow a system that has authenticated a user to securely convey said
identity to another service provider (relying party).  Cerner's
authorization server implements support for OpenID Connect in
conjunction with the [SMART on FHIR<sup>®</sup>][SMART] profile
of OAuth 2.  Client applications may use this as a source of
"single sign-on" for users when protecting resources outside of the EMR
(example: user-generated data that is stored by the client application).

In addition to SSO, SMART on FHIR<sup>®</sup> also leverages OpenID
Connect to convey the location of the authenticated user's
FHIR<sup>®</sup> endpoint, as described by the HL7<sup>®</sup>
FHIR<sup>®</sup> standard.

## Requesting OpenID Connect

Per [OpenID Connect][OPENID] and [SMART on FHIR<sup>®</sup>][SMART],
a client application requests the scope of "openid" to receive an identity
token within the access token response.

## Identifying the User

Upon retrieving an access token, an identity token will be presented in
the access token response.  These are parsed as JSON web tokens per
the [OpenID Connect][OPENID] specification.  Within identity tokens, two
values are of importance in identifying the user:

* Issuer (iss)
* Subject (sub)

The subject value of the identity assertion corresponds to the user
identifier asserted by the authentication system being used, locally
unique within context of the "issuer".  This value may be a user's
username, or could be an opaque identifier (such as a UUID), depending
on the tenant's identity strategy.  Both the
issuer and subject value combined constitute a globally-unique
identifier for the authenticated user.

User identifiers remain permanent, except in the following conditions:

* The EHR switches a group of users to utilize a new authentication
system.
* A user's identifier is changed in the upstream authentication system.
* The organization changes EHR systems.

Neither OpenID Connect nor SMART on FHIR<sup>®</sup> prescribe mechanisms
for addressing the above scenarios.  As such, application developers should
consider proprietary mechansims for handling such scenarios if
critical user information is managed outside of the EHR.

## Validating OpenID Connect Identity Tokens

The client application receiving the identity token must validate that
the audience (aud) claim matches its own client identifier, per section
3.1.3.7 of [OpenID Connect Core][OPENID-TokenValidation].

For applications interoperating only with Cerner's authorization
server, no explicit signature validation is required when retrieving
the access token directly from the token endpoint (as advertised via
the FHIR<sup>®</sup> conformance document).

For applications that interoperate with multiple implementations, or
are distributed in nature, identity tokens should be verified (including
signature) per section 3.1.3.7 of [OpenID Connect Core][OPENID-TokenValidation].
Signing keys may be retrieved via the following steps:

* The OpenID Provider Configuration Information should be retrieved per
section 4.1 of [OpenID Connect Discovery][OPENID-DISCOVERY-ProviderConfiguration].
* The URI of the JSON Web Key Set ("jwks_uri") should be extracted.
* Examine the id of the JSON Web Key used to sign the OpenID Connect
token, and retrieve it from the JSON Web Key Set.

The following is an example of an access token response containing
an OpenID Connect identity token:

<pre class="terminal">
{
    "access_token": "eyJraWQiOiIyMDIwLTA4LTE1VDE3OjM2OjE0Ljg1Ni5lYyIsInR5cCI6IkpXVCIsImFsZyI6IkVTMjU2In0.eyJzdWIiOiJwb3J0YWwiLCJ1cm46Y29tOmNlcm5lcjphdXRob3JpemF0aW9uOmNsYWltcyI6eyJ2ZXIiOiIxLjAiLCJ0bnQiOiJlYzI0NThmMi0xZTI0LTQxYzgtYjcxYi0wZTcwMWFmNzU4M2QiLCJhenMiOiJvcGVuaWQgcHJvZmlsZSB1c2VyXC9QYXRpZW50LnJlYWQifSwiYXpwIjoiZmhpci1sb2NhbCIsImlzcyI6Imh0dHBzOlwvXC9hdXRob3JpemF0aW9uLmNlcm5lci5jb21cLyIsImV4cCI6MTU5NzYyNjgxOCwiaWF0IjoxNTk3NjI2MjE4LCJqdGkiOiIzNGRkZWZiMC0wMzU5LTQwOTctYWJiZS00ZTk2YWFlY2NhNjUiLCJ1cm46Y2VybmVyOmF1dGhvcml6YXRpb246Y2xhaW1zOnZlcnNpb246MSI6eyJ2ZXIiOiIxLjAiLCJwcm9maWxlcyI6eyJzbWFydC12MSI6eyJhenMiOiJvcGVuaWQgcHJvZmlsZSB1c2VyXC9QYXRpZW50LnJlYWQifX0sImNsaWVudCI6eyJuYW1lIjoiRkhJUiBMb2NhbCBUZXN0IENsaWVudCIsImlkIjoiZmhpci1sb2NhbCJ9LCJ1c2VyIjp7InByaW5jaXBhbCI6InBvcnRhbCIsInBlcnNvbmEiOiJwcm92aWRlciIsImlkc3AiOiJlYzI0NThmMi0xZTI0LTQxYzgtYjcxYi0wZTcwMWFmNzU4M2QiLCJzZXNzaW9uSWQiOiIxYjBhZDY3Mi1mZjRmLTRiYzItYTNhNi05ZmUzOWI2N2JiZWIiLCJwcmluY2lwYWxUeXBlIjoidXNlcm5hbWUiLCJwcmluY2lwYWxVcmkiOiJodHRwczpcL1wvbWlsbGVubmlhLmNlcm5lci5jb21cL2luc3RhbmNlXC9lYzI0NThmMi0xZTI0LTQxYzgtYjcxYi0wZTcwMWFmNzU4M2RcL3ByaW5jaXBhbFwvMDAwMC4wMDAwLjAwQzIuNkRCNSIsImlkc3BVcmkiOiJodHRwczpcL1wvbWlsbGVubmlhLmNlcm5lci5jb21cL2FjY291bnRzXC9jMTk0MS5jZXJuX2FiY24uY2VybmVyYXNwLmNvbVwvZWMyNDU4ZjItMWUyNC00MWM4LWI3MWItMGU3MDFhZjc1ODNkXC9sb2dpbiJ9LCJ0ZW5hbnQiOiJlYzI0NThmMi0xZTI0LTQxYzgtYjcxYi0wZTcwMWFmNzU4M2QifX0.-ZfKiTNE2mv28HnussbTu4T3Pq9r_UPo1wYCHu46L6KO9objSEfUJKV4SA8JYoMtBwlH85DoR26Btl5fZ5zK4g",
    "scope": "openid profile user/Patient.read",
    "id_token": "eyJraWQiOiIyMDIwLTA4LTE1VDE3OjM2OjE0Ljg1OS5yc2EiLCJ0eXAiOiJKV1QiLCJhbGciOiJSUzI1NiJ9.eyJzdWIiOiJwb3J0YWwiLCJhdWQiOiJmaGlyLWxvY2FsIiwicHJvZmlsZSI6Imh0dHBzOlwvXC9maGlyLWVoci1jb2RlLmNlcm5lci5jb21cL2RzdHUyXC9lYzI0NThmMi0xZTI0LTQxYzgtYjcxYi0wZTcwMWFmNzU4M2RcL1ByYWN0aXRpb25lclwvMTI3NDIwNjkiLCJpc3MiOiJodHRwczpcL1wvYXV0aG9yaXphdGlvbi5jZXJuZXIuY29tXC90ZW5hbnRzXC9lYzI0NThmMi0xZTI0LTQxYzgtYjcxYi0wZTcwMWFmNzU4M2RcL29pZGNcL2lkc3BzXC9lYzI0NThmMi0xZTI0LTQxYzgtYjcxYi0wZTcwMWFmNzU4M2RcLyIsIm5hbWUiOiJQb3J0YWwsIFBvcnRhbCIsImV4cCI6MTU5NzYyNjgxOCwiaWF0IjoxNTk3NjI2MjE4LCJmaGlyVXNlciI6Imh0dHBzOlwvXC9maGlyLWVoci1jb2RlLmNlcm5lci5jb21cL2RzdHUyXC9lYzI0NThmMi0xZTI0LTQxYzgtYjcxYi0wZTcwMWFmNzU4M2RcL1ByYWN0aXRpb25lclwvMTI3NDIwNjkifQ.N-5R_9mZ2zmJGTiiwkPhnhOCbjpod9ghjQFuSK4imUNwYI-9po3eyjPB1IcZKkFCEZ0flZRZ8vmEUgj5EyMPA8xdiXPo5C3PQDMbKMw1wm_5nS95XGKNBNBgaQ7Nff69nRF4i4y9IhMO9ndxA7VtNCqP3NnxpeOXLCov-yl7zGlZLKJZ3DTQpBGhWOrWuH16Usk1UuXFp7-6Ih4e6DKkooJyUedEY0_fJ6i36_4xrFZ9D6wlP6F5F3hWbkTbrFEN239jnie8f-tr-mGr0r-KaxQqpG1pa_6UofopK7ngT_Guh46Ib0bUrgTlYDJ5EUDETIjvAwR3kA_2pPgJHfwjaw",
    "token_type": "Bearer",
    "expires_in": 570
}
</pre>

The claims of the identity token in the above example are as follows:

<pre class="terminal">
{
  "sub": "portal",
  "aud": "94bbd90d-482a-4a10-b7df-b40edb278da2",
  "profile": "https://fhir-ehr-code.cerner.com/r4/ec2458f2-1e24-41c8-b71b-0e701af7583d/Practitioner/12742069",
  "iss": "https://authorization.cerner.com/tenants/ec2458f2-1e24-41c8-b71b-0e701af7583d/oidc/idsps/ec2458f2-1e24-41c8-b71b-0e701af7583d/",
  "name": "Portal, Portal",
  "exp": 1597626818,
  "iat": 1597626218,
  "fhirUser": "https://fhir-ehr-code.cerner.com/r4/ec2458f2-1e24-41c8-b71b-0e701af7583d/Practitioner/12742069"
}
</pre>

In this example, the user identifier is "portal", the issuer is
``https://authorization.cerner.com/tenants/ec2458f2-1e24-41c8-b71b-0e701af7583d/oidc/idsps/ec2458f2-1e24-41c8-b71b-0e701af7583d/``
and the recipient client id is ``94bbd90d-482a-4a10-b7df-b40edb278da2``.

The following is an example URL for the location of an OpenID Connect
configuration document, derived from the issuer in the above id_token:

``https://authorization.cerner.com/tenants/ec2458f2-1e24-41c8-b71b-0e701af7583d/oidc/idsps/ec2458f2-1e24-41c8-b71b-0e701af7583d/.well-known/openid-configuration``

The following is example content of the configuration document:

<pre class="terminal">
{
    "response_types_supported": ["code"],
    "request_parameter_supported": false,
    "require_request_uri_registration": false,
    "request_uri_parameter_supported": true,
    "claims_parameter_supported": false,
    "jwks_uri": "https://authorization.cerner.com/jwk",
    "subject_types_supported": ["public"],
    "id_token_signing_alg_values_supported": ["RS256"],
    "issuer": "https://authorization.cerner.com/tenants/ec2458f2-1e24-41c8-b71b-0e701af7583d/oidc/idsps/ec2458f2-1e24-41c8-b71b-0e701af7583d/",
    "authorization_endpoint": "https://authorization.cerner.com/tenants/ec2458f2-1e24-41c8-b71b-0e701af7583d/oidc/idsps/ec2458f2-1e24-41c8-b71b-0e701af7583d/",
    "token_endpoint": "https://authorization.cerner.com/tenants/ec2458f2-1e24-41c8-b71b-0e701af7583d/oidc/idsps/ec2458f2-1e24-41c8-b71b-0e701af7583d/"
}
</pre>

In this example, the jwks_uri is: ``https://authorization.cerner.com/jwk``

## Session Management

SMART<sup>®</sup> on FHIR<sup>®</sup> currently does not prescribe
mechanisms for managing session state between applications, or
providing a sign-out experience for users.

[OPENID]: http://openid.net/specs/openid-connect-core-1_0.html
[OPENID-TokenValidation]: http://openid.net/specs/openid-connect-core-1_0.html#IDTokenValidation
[SMART]:  http://hl7.org/fhir/smart-app-launch/#smart-authorization-and-resource-retrieval
[OPENID-DISCOVERY-ProviderConfiguration]: http://openid.net/specs/openid-connect-discovery-1_0.html#ProviderConfigurationRequest
