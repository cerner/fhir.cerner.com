---
title: OpenID Connect | DSTU 2 API
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
username, or could be an opaque identifier, such as a UUID.  Both the 
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
3.1.3.7 of [OpenID Connect Core][OPENID].

For applications interoperating only with Cerner's authorization 
server, no explicit signature validation is required when retrieving
the access token directly from the token endpoint (as advertised via
the FHIR<sup>®</sup> conformance document).

For applications that interoperate with multiple implementations, or
are distributed in nature, identity tokens should be verified (including
signature) per section 3.1.3.7 of [OpenID Connect Core][OPENID].
Signing keys may be retrieved via the following steps:

* The OpenID Provider Configuration Information should be retrieved per
section 4.1 of [OpenID Connect Discovery][OPENID-DISCOVERY].
* The URI of the JSON Web Key Set ("jwks_uri") should be extracted.
* Examine the id of the JSON Web Key used to sign the OpenID Connect
token, and retrieve it from the JSON Web Key Set.

## Session Management

SMART<sup>®</sup> on FHIR<sup>®</sup> currently does not prescribe
mechanisms for managing session state between applications, or
providing a sign-out experience for users.

## Additional User Information

Cerner's implementation does not currently support the "profile"
scope for OpenID Connect, which would traditionally provide
access to demographic information and the FHIR<sup>®</sup>
endpoint URL for an individual.

[OPENID]: http://openid.net/specs/openid-connect-core-1_0.html
[SMART]:  http://docs.smarthealthit.org/authorization/
[CLOUDKEY]: https://wiki.ucern.com/display/public/reference/Cloud+Key+Management
[OPENID-DISCOVERY]: http://openid.net/specs/openid-connect-discovery-1_0.html
