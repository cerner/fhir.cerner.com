RFC:  HL7 SMART App Launch Active User Presence Extension
============================================

## Introduction

The HL7 SMART App Launch specification [defines the scope<sup>1</sup>][smart-scopes] of ```online_access```, enabling an application to obtain [refresh tokens<sup>2</sup>][oauth2-refresh] that _"will be usable for as long as the end-user remains online"_.  In certain use cases, conflicts between user experience and security can arise when the user's primary interaction with the electronic health record is through a SMART on FHIR application.  In these scenarios, the electronic health record may have awareness that an application is continuing to utilize FHIR resources and refresh tokens, but there is no guarantee that such activity constitutes "active user presence".  Best practices for session management, such as those [prescribed by NIST 800-63B<sup>2</sup>][nist-session-management], describe requirements for users to be re-authenticated after "inactivity".  When users are not directly interacting with an application that is part of the electronic health record, a mechanism by which a SMART on FHIR application can communicate active user presence is desirable to prevent the user from experiencing unnecessary re-authentication events.

To address this concern, this extension provides a mechanism by which a SMART on FHIR authorization server may declare that a refresh token is subject to inactivity constraints as part of its own token responses.  Through this extension a SMART on FHIR application may correspondingly include a parameter in token refresh requests that conveys how long ago the application last detected active user presence.


###  Protocol Flow
```
                                                 +-------------------+
                                                 |   Authz Server    |
       +--------+                                | +---------------+ |
       |        |--(A)-- Access Token Request ---->|               | |
       |        |                                | |               | |
       |        |                                | |               | |
       |        |<-(B)-- Access, Refresh Token ----|               | |
       |        |           + "active_ttl"       | |     Token     | |
       | Client |                                | |    Endpoint   | |
       |        |                                | |               | |
       |        |--(C)-- Refresh Request --------->|               | |
       |        |          + "active_at"         | |               | |
       |        |                                | |               | |
       |        |<-(D)------ Access Token ---------|               | |
       +--------+          + "active_ttl"        | +---------------+ |
                                                 +-------------------+

                     Figure 1: Abstract Protocol Flow
```
This specification adds additional parameters to the SMART on FHIR Access Token Response, Refresh Request, and Refresh Response shown in abstract form in Figure 1.

A. The client performs an Access Token Request using an established authorization code that was established with an ```online_access``` scope.

B. The Token Endpoint responds with an access token and refresh token as usual, but additionally includes the parameter ```active_ttl```.  This value signifies the quantity of seconds (time-to-live) remaining before user is no longer considered active, which will automatically invalidate the refresh token without further activity..

C. Prior to the invalidation time specified by ```active_ttl```, the client application performs a Refresh Request as usual but includes a parameter ```active_at``` that specifies how many seconds in the past that the client application last detected active user presence.

D. The Token Endpoint responds as usual but includes another ```active_ttl``` value, again signifying the new quantity of seconds remaining before the refresh token will be automatically invalidated without active user presence.

This specification uses time vectors in seconds rather than absolute date/time objects as to avoid issues with clock skew between the authorization server and the application.

## Notational Conventions

The key words "MUST", "MUST NOT", "REQUIRED", "SHALL", "SHALL NOT", "SHOULD", "SHOULD NOT", "RECOMMENDED", "NOT RECOMMENDED", "MAY", and "OPTIONAL" in this document are to be interpreted as described in ["Key words for use in RFCs to Indicate Requirement Levels"<sup>4</sup>][ietf-keywords].  If these words are used without being spelled in uppercase, then they are to be interpreted with their natural language meanings.

 This specification uses the [Augmented Backus-Naur Form (ABNF) notation of RFC 5234<sup>5</sup>][RFC5234].

## Terminology

__Active User Presence__: Any event that can be construed as a human interaction with a computing device.  This includes, but is not limited to mouse, keyboard, scroll, click, tap, and gesture interactions.

## Protocol

### Authorization Server Declares Active User Presence Requirement

When issuing token responses containing refresh tokens scoped for ```online_access```, the SMART on FHIR authorization server returns the number of seconds after which the session will be considered inactive, ```active_ttl```, in the following manner:

```
active_ttl = 1*DIGIT
```

The inclusion of this attribute in a token response from an authorization server signals to the SMART application that the authorization server supports / has implemented this specification, and that it will accept additional parameters to signal user presence as part of the token refresh process.

If no active user presence is detected by an actor participating with the authorization server (the electronic health record or a SMART on FHIR application) after this number of seconds has passed, the authorization server __SHOULD__ invalidate any refresh tokens associated with the user session.

### Application Performs Token Refresh

When an application sends a Refresh Request, it __MAY__ include the parameter ```active_at``` to specify the number of seconds that have passed since active user presence was detected, in the following manner:

```
active_at = 1*DIGIT
```

If the refresh token is still valid and the "active_at" parameter is present, the authorization server calculates the instance of last activity in the SMART app by subtracting ```active_at``` from the current date/time:

```current date/time - active_at = instance of user's last activity in the SMART app```

If the instance of user’s last activity in the SMART app is more recent than the instance of the user’s last activity known to the authorization server, then the authorization server SHALL update its record of the instance of the user’s last activity for the session and use that in its calculation of an updated ```active_ttl``` value to return in the response to the Refresh Request.

Negative ```active_at``` values __MUST__ be rejected, treating the request as if the ```active_at``` parameter were not included.

If the refresh token is invalid, either due to lapse of user activity or other invalidation, the server responds per section 5.2.  The application __MAY__ initiate a new authorization grant request, if appropriate.  An authorization server __MAY__ allow other means (outside of the scope of this specification) to re-enable the refresh token.  As such, applications __SHOULD__ provide a retry option to end users.

## References

<sup>1</sup> [SMART App Launch: Scopes and Launch Context - Scopes for requesting a refresh token][smart-scopes]

<sup>2</sup> [NIST Special Publication 800-63B Digital Identity Guidelines, Authentication and Lifecycle Management - Table 4-1 AAL Summary of Requirements][nist-session-management]

<sup>3</sup> [The OAuth 2.0 Authorization Framework - Refreshing an Access Token][oauth2-refresh]

<sup>4</sup> [Key words for use in RFCs to Indicate Requirement Levels][ietf-keywords]

<sup>5</sup> [Augmented Backus-Naur Form (ABNF) notation of RFC 5234][RFC5234]

[smart-scopes]: http://hl7.org/fhir/smart-app-launch/scopes-and-launch-context/index.html#scopes-for-requesting-a-refresh-token
[nist-session-management]: https://pages.nist.gov/800-63-3/sp800-63b.html#63bSec4-Table1
[oauth2-refresh]: https://tools.ietf.org/html/rfc6749#section-6
[ietf-keywords]: https://tools.ietf.org/html/rfc2119
[RFC5234]: https://tools.ietf.org/html/rfc5234
