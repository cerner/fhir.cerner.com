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
    "access_token": "eyJraWQiOiIyMDE2LTEyLTE0VDE2OjQ5OjIxLjQ5OS5lYyIsInR5cCI6IkpXVCIsImFsZyI6IkVTMjU2In0.eyJzdWIiOiJwb3J0YWwiLCJ1cm46Y29tOmNlcm5lcjphdXRob3JpemF0aW9uOmNsYWltcyI6eyJ2ZXIiOiIxLjAiLCJ0bnQiOiIwYjhhMDExMS1lOGU2LTRjMjYtYTkxYy01MDY5Y2JjNmIxY2EiLCJhenMiOiJ1c2VyXC9QYXRpZW50LnJlYWQgb25saW5lX2FjY2VzcyBvcGVuaWQifSwiYXpwIjoiOTRiYmQ5MGQtNDgyYS00YTEwLWI3ZGYtYjQwZWRiMjc4ZGEyIiwiaXNzIjoiaHR0cHM6XC9cL2F1dGhvcml6YXRpb24uc2FuZGJveGNlcm5lci5jb21cLyIsImV4cCI6MTQ4MTc0Nzc4NCwiaWF0IjoxNDgxNzQ3MTg0LCJqdGkiOiIzNjQ4OWEyNS04YzRjLTQ0NjEtYTJjNy1iY2U3NDE0YTUxYWIiLCJ1cm46Y2VybmVyOmF1dGhvcml6YXRpb246Y2xhaW1zOnZlcnNpb246MSI6eyJ2ZXIiOiIxLjAiLCJwcm9maWxlcyI6eyJzbWFydC12MSI6eyJhenMiOiJ1c2VyXC9QYXRpZW50LnJlYWQgb25saW5lX2FjY2VzcyBvcGVuaWQifX0sImNsaWVudCI6eyJuYW1lIjoiU2FuZGJveENsaWVudCIsImlkIjoiOTRiYmQ5MGQtNDgyYS00YTEwLWI3ZGYtYjQwZWRiMjc4ZGEyIn0sInVzZXIiOnsicHJpbmNpcGFsIjoicG9ydGFsIiwicGVyc29uYSI6InByb3ZpZGVyIiwiaWRzcCI6IjBiOGEwMTExLWU4ZTYtNGMyNi1hOTFjLTUwNjljYmM2YjFjYSIsInByaW5jaXBhbFVyaSI6Imh0dHBzOlwvXC9taWxsZW5uaWEuc2FuZGJveGNlcm5lci5jb21cL2luc3RhbmNlXC8wYjhhMDExMS1lOGU2LTRjMjYtYTkxYy01MDY5Y2JjNmIxY2FcL3ByaW5jaXBhbFwvMDAwMC4wMDAwLjAwNDQuMUQ4NyIsImlkc3BVcmkiOiJodHRwczpcL1wvbWlsbGVubmlhLnNhbmRib3hjZXJuZXIuY29tXC9hY2NvdW50c1wvZmhpcnBsYXkudGVtcF9yaG8uY2VybmVyYXNwLmNvbVwvMGI4YTAxMTEtZThlNi00YzI2LWE5MWMtNTA2OWNiYzZiMWNhXC9sb2dpbiJ9LCJ0ZW5hbnQiOiIwYjhhMDExMS1lOGU2LTRjMjYtYTkxYy01MDY5Y2JjNmIxY2EifX0.AaMZoMXUrZmnKwdAVC5uT2rbRMSOfO_zUGVJKce6o4NlUS7ECEF6Q8I0vvGkJDWfULxaqf4ITo1PUOfPnarjxw",
    "refresh_token": "daf989e2-649a-48c8-b2d8-18efa70be0ef",
    "scope": "user/Patient.read online_access openid fhirUser",
    "id_token": "eyJraWQiOiIyMDE2LTEyLTE0VDE2OjQ5OjIxLjUxMS5yc2EiLCJ0eXAiOiJKV1QiLCJhbGciOiJSUzI1NiJ9.eyJzdWIiOiJwb3J0YWwiLCJhdWQiOiI5NGJiZDkwZC00ODJhLTRhMTAtYjdkZi1iNDBlZGIyNzhkYTIiLCJpc3MiOiJodHRwczpcL1wvYXV0aG9yaXphdGlvbi5zYW5kYm94Y2VybmVyLmNvbVwvdGVuYW50c1wvMGI4YTAxMTEtZThlNi00YzI2LWE5MWMtNTA2OWNiYzZiMWNhXC9vaWRjXC9pZHNwc1wvMGI4YTAxMTEtZThlNi00YzI2LWE5MWMtNTA2OWNiYzZiMWNhXC8iLCJleHAiOjE0ODE3NDc3ODQsImlhdCI6MTQ4MTc0NzE4NH0.YvF8Pqelk6Ze4srAjUnHZ192-bxaglYcbvbf8_AfDXtsmLKcSfHtQ9MmeGX5k6E-Mv4sqDEwzKPmU8p2GifOzYeJwu-TvJDCMDoqMk7WSLbb9wJk2gJ3Ipi7SEQcyVdPBGx9GMb4oX00bom0aliT2v-oGUeCcGOIPjVFM3eVaxgaHo7L_4shRX-FbUa96ORarD0c92m4PZZoiHqujCuRC7TjRfIvPXnBCCCl5naEo-gqkTNEfSf_jpfZPLAsQgW5jFcFiz9ihrBgM6A7yIE-1wSpIm9EiwY5gm3lJQTyGzYg3tzoOHIBWzbVTeTYTUlNMiwC_icHv2j9FDWHSxKTfw",
    "token_type": "Bearer",
    "expires_in": 570
}
</pre>

The claims of the identity token in the above example are as follows:

<pre class="terminal">
{
  "sub": "portal",
  "aud": "94bbd90d-482a-4a10-b7df-b40edb278da2",
  "iss": "https://authorization.sandboxcerner.com/tenants/0b8a0111-e8e6-4c26-a91c-5069cbc6b1ca/oidc/idsps/0b8a0111-e8e6-4c26-a91c-5069cbc6b1ca/",
  "exp": 1481747784,
  "iat": 1481747184,
  "name": "Portal User",
  "fhirUser": "https://fhir-ehr.sandboxcerner.com/r4/0b8a0111-e8e6-4c26-a91c-5069cbc6b1ca/Practitioner/98765"  
}
</pre>

In this example, the user identifier is "portal", the issuer is
``https://authorization.sandboxcerner.com/tenants/0b8a0111-e8e6-4c26-a91c-5069cbc6b1ca/oidc/idsps/0b8a0111-e8e6-4c26-a91c-5069cbc6b1ca/``
and the recipient client id is ``94bbd90d-482a-4a10-b7df-b40edb278da2``.

The following is an example URL for the location of an OpenID Connect
configuration document, derived from the issuer in the above id_token:

``https://authorization.sandboxcerner.com/tenants/0b8a0111-e8e6-4c26-a91c-5069cbc6b1ca/oidc/idsps/0b8a0111-e8e6-4c26-a91c-5069cbc6b1ca/.well-known/openid-configuration``

The following is example content of the configuration document:

<pre class="terminal">
{
    "response_types_supported": ["code"],
    "request_parameter_supported": false,
    "require_request_uri_registration": false,
    "request_uri_parameter_supported": true,
    "claims_parameter_supported": false,
    "jwks_uri": "https://authorization.sandboxcerner.com/jwk",
    "subject_types_supported": ["public"],
    "id_token_signing_alg_values_supported": ["RS256"],
    "issuer": "https://authorization.sandboxcerner.com/tenants/0b8a0111-e8e6-4c26-a91c-5069cbc6b1ca/oidc/idsps/0b8a0111-e8e6-4c26-a91c-5069cbc6b1ca/",
    "authorization_endpoint": "https://authorization.sandboxcerner.com/tenants/0b8a0111-e8e6-4c26-a91c-5069cbc6b1ca/oidc/idsps/0b8a0111-e8e6-4c26-a91c-5069cbc6b1ca/",
    "token_endpoint": "https://authorization.sandboxcerner.com/tenants/0b8a0111-e8e6-4c26-a91c-5069cbc6b1ca/oidc/idsps/0b8a0111-e8e6-4c26-a91c-5069cbc6b1ca/"
}
</pre>

In this example, the jwks_uri is: ``https://authorization.sandboxcerner.com/jwk``

## Session Management

SMART<sup>®</sup> on FHIR<sup>®</sup> currently does not prescribe
mechanisms for managing session state between applications, or
providing a sign-out experience for users.

[OPENID]: http://openid.net/specs/openid-connect-core-1_0.html
[OPENID-TokenValidation]: http://openid.net/specs/openid-connect-core-1_0.html#IDTokenValidation
[SMART]:  http://hl7.org/fhir/smart-app-launch/#smart-authorization-and-resource-retrieval
[OPENID-DISCOVERY-ProviderConfiguration]: http://openid.net/specs/openid-connect-discovery-1_0.html#ProviderConfigurationRequest
