---
title: Authorization
layout: authorization
---

# Authorization #
------------------------------------------------------------------------
* TOC
{:toc}

## Overview ##

Cerner's implementation of the HL7<sup>®</sup>
FHIR<sup>®</sup> Standard is protected using the
SMART<sup>®</sup> on FHIR<sup>®</sup> authorization framework.
SMART<sup>®</sup> on FHIR<sup>®</sup> defines a profile of the
[OAuth 2][OAUTH] framework for obtaining authorization to act on behalf
of users; it is highly recommended that developers review and understand
the OAuth 2 framework prior to implementing their authorization
workflow.  Cerner recommends the following IETF publications for review:

- [The OAuth 2.0 Authorization Framework][OAUTH]
- [OAuth 2.0 Threat Model and Security Considerations][OAUTH-THREAT]
- [OAuth 2.0 Security Best Current Practice][OAUTH-BCP]
- [The OAuth 2.0 Authorization Framework: Bearer Token Usage][RFC6750]
- [OAuth 2.0 for Native Apps][OAUTH-NATIVE]
  (Primarily for developers writing "native" applications.)

This guide offers:

- A technical overview for securely obtaining authorization on behalf of
  a user or a system, utilizing using Cerner's authorization server.
- Guidance for providing an optimal authorization user experience
  across a broad range of platforms.
- Guidance for ensuring broad compatiblity across a diverse range of
  deployment scenarios.
- Answers to frequently asked questions.

### Benefits of the Authorization Model ###

The use of an authorization protocol offers additional security for
users/enterprises by abstracting the credentials that users use to
authenticate to the EHR away from client applications.  Under this model,
restrictions can be applied to what actions a client application can
perform on behalf of the user; this is not possible in traditional
models where the application has direct access to the user's credentials.

Furthermore, by abstracting authentication away from client applications,
there is less risk such credentials will be compromised, and organizations
have more flexibility in offering differing forms of authentication
(possible examples include the use of Windows Hello technology, Apple
TouchID, etc.)

Finally, the token model employed by the OAuth 2 authorization framework
provides a useful means in a distributed service ecosystem to enforce
frequent validation that access has not otherwise been revoked or
expired.

A formal technical specification for authorization may be found
in the [Cerner FHIR<sup>®</sup> Service Authorization Specification][AUTHZ-SPEC].

### Differentiating SMART<sup>®</sup> and FHIR<sup>®</sup> ###

The HL7<sup>®</sup> FHIR<sup>®</sup> Standard defines an API to
access information within an electronic health record system.  The
SMART<sup>®</sup> framework defines an API for applications to
obtain an authorized context to access FHIR<sup>®</sup>
resources and exchange context information with client applications.

## Registration ##
In order for your client application to utilize any protected resources,
your client application must first be registered. A Cerner Care account is required to
register applications. Obtaining a Cerner Care account is free and
requires nothing but an email address.

If registering an application that is using the public app profile and requires access only when the user is online,
your client application must first register using our [code Console][CERNER-CODE-CONSOLE].

If you are a Cerner client developing an application, please see this [document][CLIENT-APPS-DOC] about how to make your
self-developed app available in your domain.

If registering a confidential client application (required for offline_access and
access on behalf of a system), follow the directions in the [Registering a System Account][SYSTEM-ACCOUNT-SECTION]
section. Check the respective FHIR<sup>®</sup> implementation documentation to determine availability.

Once registered, the **client identifier** will be provided for use with
the Cerner Authorization Server. As a registered client, Cerner
organizations may then ask for your client application to be enabled,
which is necessary in order to gain access to their protected resources.

### Registering a System Account ###

If an application will be using the offline_access scope, or accessing data on behalf of a system, it will need to
maintain a secret. Currently, our implementation provides management and rotation functionality for this workflow in our
System Accounts application. In order to register one of these applications, you must first request a system account,
and then register that as a SMART or FHIR application in our code Console.

Request a system account by following these steps:

- Login to the Cerner Central System Accounts application: <https://cernercentral.com/system-accounts>
  - If you are a Cerner client developing their own application, you may have a customized URL for Cerner Central that
  can be used instead. For example: https://yourcompanynamegoeshere.cernercentral.com/system-accounts
- Fill out the fields as follows:
  - **Description**:  \<App Name> - SMART/FHIR application - <short description/purpose of the App>
  - **Production System**: No
  - **Cerner Client**: No, unless you are a Cerner Client developing their own application. If you are a client:
    - **Client Name**: Your organization. For example: My Health System
    - **Client Number**: Only fill out if you know this, it is not required.
    - **Client Mnemonic**: Only fill out if you know this, it is not required.  
  - **Millennium System**: No
- Once the account is created, take the id from that account and use it in the GUID field when you register the
application as a SMART or FHIR application in the [code Console][CERNER-CODE-CONSOLE]. Without this step, your
application will not be recognized as an authorized application for FHIR. Note that requests for system accounts
currently undergo manual approval, and therefore it may take a few business days for the system account to be created.

Remember to protect the secret received via this process. Don't post this secret or email it in insecure fashion. Don't
include this secret or credentials requests for the authorization server in any posts requesting help. If you do
compromise the secret, you can rotate the credentials using the system accounts application above.

## Requesting Authorization on Behalf of a User ##

To access Cerner's FHIR<sup>®</sup> services on behalf of a user,
your client application must make an authorization request through
a user agent on the user's device.  This involves the following
steps:

- Discover the authorization and token endpoint URLs.
- Construct an authorization grant request URL.
- Invoking a browser with the authorization grant request URL.
- Receive the OAuth callback.
- Exchange the received grant for a token.
- Close the browser.
- Handle any exceptions encountered.
- Utilizing "refresh" tokens.

A formal technical specification for this process may be found
in the
[Cerner FHIR<sup>®</sup> Service Authorization Specification][AUTHZ-SPEC].

### Discovering Authorization URLs ###
Each instance of Cerner's FHIR<sup>®</sup> services advertise
the URL of its respective authorization server within its
FHIR<sup>®</sup> conformance document.

The FHIR<sup>®</sup> Conformance resource can be retrieved by performing
an HTTP GET against the resource located at the relative path
of ``./metadata`` from the FHIR<sup>®</sup> base URL. Examples of this call
can be found on the Conformance documentation for [Millennium](/millennium/dstu2/conformance/) or [Soarian](/soarian/dstu2/conformance/).

Within the structure of this document, three important URLs are
advertised in an extension to ``Conformance.rest.security``,
identified via the URL of
``http://fhir-registry.smarthealthit.org/StructureDefinition/oauth-uris``.

The first URL is the location of the authorization endpoint,
which is further identified by the sub-extension URL "authorize".

The second URL of importance is the location of the authorization
server's token endpoint, which is further identified by the
sub-extension URL "token".

The third URL of importance is the location of the authorization
server's user-facing authorization management workflow entry point, which
is further identified by the sub-extension URL "manage". This
sub-extension is advertised from user-facing instances of Cerner's
FHIR<sup>®</sup> server.

The following is non-normative example of a conformance document
containing this information:

<pre class="terminal">
{
  "resourceType": "Conformance",
  "rest": [
    {
      "security": {
        "extension": [
          {
            "url": "http://fhir-registry.smarthealthit.org/StructureDefinition/oauth-uris",
            "extension": [
              {
                "url": "token",
                "valueUri": "https://example.org/token"
              },
              {
                "url": "authorize",
                "valueUri": "https://example.org/authorize"
              },
              {
                "url": "manage",
                "valueUri": "https://example.org/patient/authorizations"
              }
            ]
          }
        ]
      }
    ]
  }
}      
</pre>

### Construct the Authorization Request URL ###

An authorization request takes the form of an x-www-form-urlencoded
query string, appended to the authorization endpoint's URL (as
discovered from the previous section.)  The base specification
for the structure of this request is defined in
[section 4.1 "Authorization Code Grant"](https://tools.ietf.org/html/rfc6749#section-4.1)
of RFC6749.

At minimum, the following parameters are included in the authorization
request; each are documented in the following sections:

- Requested "scopes" for services to access.
- A "state" parameter to prevent certain classes of malicious
  attacks.
- The target "audience" server URL.
- (Optional) a "redirect_uri" of the application.
- (Optional) a launch code, when supporting application launches from
  external sources.

#### Scopes ####

During the authorization process, client applications should identify
at runtime:

- The specific FHIR<sup>®</sup> resources that will be needed to accomplish
  the workflow.
- The type of access needed to the given FHIR<sup>®</sup> resource (read, write).
- If access should be constrained to a single patient, as selected by the user.
- The duration for which access is needed.

Each of the above pieces of information are presented in the authorization
request to the server in the form of "scopes".  Per the
[OAUTH specification][OAUTH], the scope of a request is "...a list of
space-delimited, case-sensitive strings.  The strings are defined by the
authorization server."  With SMART<sup>®</sup> on FHIR<sup>®</sup>, access
to FHIR<sup>®</sup> resources is controlled by scopes with the following
format:

<pre class="terminal">
scope-name            = resource-context "/" resource-type "." modification-rights
resource-context      = ("user" / "patient" / "system")
resource-type         = (Name)
modification-rights   = ("read" / "write");
</pre>

Examples of scopes include:

- ``user/Observation.read`` (Read all values from the Observation resource
  that the user has access to.)
- ``patient/MedicationOrder.read`` (Read medications for a specific patient.)
- ``user/Appointment.write`` (Create appointments.)

The "resource context" represents one of three possible choices:

- user:  Access to the resource is only constrained by the access of the user.
- patient:  Access to the resource is constrained within context of a single patient.
- system:  Used in system-based authorization workflows, as described in
  ["Requesting Authorization on Behalf of a System"](#system-authorization).

In certain cases, the authenticated user will be presented a choice to allow your
application to utilize the requested scopes on the user's behalf.  As such,
your application should request only the minimum scopes needed in order to
fulfill its function.

_Note_:  Many combinations of scopes are possible to be requested and approved,
but not all may be recognized by then given version of a FHIR<sup>®</sup> API resource being
used.  Please refer to the respective FHIR<sup>®</sup> API resource documentation for a full
list of its capabilities.

In addition to FHIR<sup>®</sup> resource scopes, the SMART<sup>®</sup>
on FHIR<sup>®</sup> authorization framework also defines these additional scopes
that further govern the behavior of authorization:

- openid: Provides access to the "principal" of the authenticated user per the
  [OpenID Connect][OPENID] specification.
- profile: Provides an OpenID Connect "profile" that contains the URL of the
  authenticated user's FHIR<sup>®</sup> resource.
- online_access: Allows an application to obtain tokens via a "refresh" process
  while the authenticated user has an active session present at the device.
- offline_access: Allows an application to continue to obtain tokens on behalf
  of the authenticated via a "refresh" process user until explicitly revoked by
  the user, an administrator, or your application.

Further information on the usage of these special scopes are further detailed
below.

##### Identity Scopes: 'openid' and 'profile' #####

Certain classes of applications may need to identify the user for whom it
is acting on behalf of.  Such requirements may include (but are not
limited to) the following:

- Requirements to audit or log activity using the user identifier or person's
  name.
- Display the user's name within the application or in out-of-band (e-mail)
  communications with the user.
- Performing identity matching to other non-EHR resources managed by the
  application.
- Authenticating the user in subsequent visits to provide an enriched
  experience, such as retaining user preferences, or protecting access to
  other non-EHR managed data (examples: user-created data).

The scope 'openid' will request that Cerner's authorization server supply
and [OpenID Connect][OPENID] identity token as part of the authorization
workflow.  Further details on utilizing the OpenID token can be found in
the [OpenID Connect Guide](../authorization/openid-connect).

The scope 'profile' will additionally request that the OpenID Connect
token include the claim "profileURL", as defined by the
SMART<sup>®</sup> on FHIR<sup>®</sup> authorization framework.  This
URL identifies the specific FHIR<sup>®</sup> resource URL of the
authenticated user.   This resource may be a Patient, Practitioner, or
Person resource, depending on the type of user whom is authenticated.

_NOTE_:  As of this writing, Cerner's Ignite implementation does not
support authorization for retrieval of Person resources; you
may proceed with a design that proactively attempts to retrieve the
resource such that your app takes advantage of this capability once
made available.

##### Duration Scopes: 'online_access' and 'offline_access' #####

The default duration of access received through the authorization grant
workflow is a single token that is valid for 570 seconds (~10 minutes).
For applications that need access to services for longer durations,
Cerner's Ignite platform supports the concept of
["refresh tokens"](#refresh_tokens).

With 'online_access', your application can continue to obtain access
tokens on behalf of the user until:

- The user explicitly logs out using their respective session
  authority.
- The user's session expires or is administratively terminated.
- Your application's access is terminated by the given
  organization.

With 'offline_access', an application can continue to obtain
access tokens in perpetuity on behalf of the user until:

- The user or administrator explicitly terminates the original
  authorization grant.
- The user's access to the resource(s) from the original authorization
  grant is terminated.
- Your application's access is terminated by the given
  organization.

##### Supported Scopes #####

[Wildcard Scopes](http://hl7.org/fhir/smart-app-launch/scopes-and-launch-context/#wildcard-scopes) are currently **not supported**; refer to the linked document for a more detailed discussion of the challenges they pose. An application is currently required to specifically request each scope that it needs to run.

Other combinations of scopes may be limited; please see the [FAQ](#faq) for
known limitations.

##### State ####

When performing an authorization grant request, it is highly recommended
that your client application establish a transient, one-time-use "state" value
for each individual request you send.  If your application receives an
authorization response that does not include a value known to the current
user's device, it should reject the response.  This mechanism is to protect your
application against "cross-site request forgery" classes of exploits.  For more
information on these types of exploits, consult the RFC
[OAuth 2.0 Threat Model and Security Considerations][OAUTH-THREAT].

#### Audience ####

When performing an authorization grant request, it is required your client
application send the base URL of the FHIR<sup>®</sup> resource server for which
you will be sending access tokens to.  This is conveyed via an additional query
parameter in the grant request named "aud".  This parameter is utilized by Cerner's
authorization server to protect your application against a form of exploit
where an untrusted resource server advertises a legitimate authorization
server in its conformance document.  Without this feature, a valid, authorized
access token could be inadvertently be sent by your application to the untrusted
party.

Authorization grant requests that do not contain the audience parameter
are automatically rejected by Cerner's authorization server.  The following
is a fragment from a x-www-form-urlencoded grant request query string
where the audience is provided:

<pre class="terminal">
&aud=https%3A%2F%2Ffhir-ehr-code.cerner.com%2Fdstu2%2Fec2458f2-1e24-41c8-b71b-0e701af7583d%2F
</pre>

#### Redirect URI ####

When performing an authorization grant request the application may provide a redirect_uri.
This uri should match the redirect_uri setup during the registration phase of the SMART Application.

If your application has multiple redirect_uri's registered with Cerner then a redirect_uri is expected to be passed
in during the authorization grant request. If no redirect_uri is specified the default redirect_uri
registered for the application will be used.

Details around supplying a redirect_uri are specified in the [SMART Specification](http://www.hl7.org/fhir/smart-app-launch/#step-1-app-asks-for-authorization)

The redirect_uri must be an absolute uri. For more information please consult the Ref :
RFC 6749 [Redirection Endpoint](https://tools.ietf.org/html/rfc6749#section-3.1.2)

Following is a fragment from a x-www-form-urlencoded grant request query string where the redirect_uri is provided:
<pre class="terminal">
&redirect_uri=https%3A%2F%2Fapp%2Fafter-auth
</pre>
A detailed example of an authorization grant request can be found [SMART App Launch Example](http://www.hl7.org/fhir/smart-app-launch/#for-example-2)

#### Launch ####

Some Cerner solutions support the "launch" feature of
the SMART<sup>®</sup> on FHIR<sup>®</sup> authorization framework.  This
feature provides three benefits to client applications:

- Cerner solutions can provide links to client applications; when
  invoked by the user, Cerner's solution will pass the appropriate
  FHIR<sup>®</sup> base URL to your application, thus avoiding the
  need to select which FHIR<sup>®</sup> endpoints to interact with.
- Your client application can request access to the current patient
  in context.
- Cerner's solution can provide context as to how your client
  application will be displayed, allowing your application to
  seamlessly integrate into the workflow.

#### Examples ####

The following are hypothetical examples of authorization requests:

<pre class="terminal">
client id:    bb318a62-fa61-49ae-b692-7d99214f0ec7
scopes:       patient/Observation.read patient/MedicationHistory.read launch
audience:     https://fhir-ehr-code.cerner.com/dstu2/ec2458f2-1e24-41c8-b71b-0e701af7583d/
state:        a4c16a46-2c46-482c-8d66-4cc4a2990bda
launch:       a17aba51-1395-48d3-b3a9-73f2baf784da

https://authorization.cerner.com/tenants/ec2458f2-1e24-41c8-b71b-0e701af7583d/protocols/oauth2/profiles/smart-v1/personas/patient/authorize?client_id=bb318a62-fa61-49ae-b692-7d99214f0ec7&response_type=code&redirect_uri=&scope=patient%2FObservation.read%20patient%2FMedicationHistory.read%20launch&launch=a17aba51-1395-48d3-b3a9-73f2baf784da&aud=https%3A%2F%2Ffhir-ehr-code.cerner.com%2Fdstu2%2Fec2458f2-1e24-41c8-b71b-0e701af7583d%2F&state=a4c16a46-2c46-482c-8d66-4cc4a2990bda
</pre>

<pre class="terminal">
client id:    bb318a62-fa61-49ae-b692-7d99214f0ec7
scopes:       user/Observation.read user/MedicationHistory.read
audience:     https://fhir-ehr-code.cerner.com/dstu2/ec2458f2-1e24-41c8-b71b-0e701af7583d/
state:        a4c16a46-2c46-482c-8d66-4cc4a2990bda

https://authorization.cerner.com/tenants/ec2458f2-1e24-41c8-b71b-0e701af7583d/protocols/oauth2/profiles/smart-v1/personas/patient/authorize?client_id=bb318a62-fa61-49ae-b692-7d99214f0ec7&response_type=code&redirect_uri=&scope=user%2FObservation.read%20user%2FMedicationHistory.read%20&launch=&aud=https%3A%2F%2Ffhir-ehr-code.cerner.com%2Fdstu2%2Fec2458f2-1e24-41c8-b71b-0e701af7583d%2F&state=a4c16a46-2c46-482c-8d66-4cc4a2990bda
</pre>

### Invoking an Appropriate User Agent ###

Once an authorization code grant request URL has been generated, you
will need to invoke an appropriate user agent to invoke the
authorization request.  In all scenarios, this web page will interact
with the user agent in order to determine the identity of the user.
This process may involve further redirects to other identity providers
(web applications designed to authenticate users), interaction with
browser Javascript APIs, or direct interactions with the end user
to obtain their approval during the authorization process.

This particular part of the process has a number of complexities; the
recommendations offered in this section are designed to ensure:

- The user is offered a single sign-on and single log-out experience.
- Browser (history) navigation is not affected by either the
  authorization or authentication workflow.
- The authentication and authorization workflows are not interfered
  with by the use of browser frames or web views (clickjacking
  defenses, browser plug-ins, and/or access to local storage or
  certificates used in authentication may be interered with.)  

The following sections discuss how to invoke the proper user agent
for specific platforms.

#### (Web) Client Applications Delivered via the Browser ####

For applications delivered via the "https" scheme within a
browser, it is recommended to invoke the authorization workflow
within a separate pop-up window (for desktops) or tab (for
mobile browsers).  The use of a pop-up / separate tab ensures
that any navigation that occurs while servicing the
authentication or authorization workflows are maintained
separately from your initial tab, thus allowing the user to
properly navigate backwards in their browser history once
the authorization workflow has completed.  On desktop platforms
and/or mobile platforms that offer split-screen browsing,
this methodology creates a clean delineation between your
application's workflow and the authorization workflow.

Due to the nature of built-in pop-up blocking functionality,
it will generally be necessary for your application to trigger
the opening of the window based on a user interaction (click or
touch).  In certain specific venues, alternatives may be
possible to avoid this requirement; further guidance is outside
the scope of this guide.

Web-based applications must not attempt to perform the
authorization workflow within an iframe - doing so may have
unexpected results caused by clickjacking protection mechanisms,
anti-phishing protection mechanisms, browser third-party
cookie policy, etc.

When opening the additional browser window, it is recommended
to include the location "chrome" of the browser such that
TLS/EVSSL indicators are included for display to the user.
Such visual cues are an important part of security for
some authentication systems.

Your authorization response comes in the form of a redirect
(which is orchestrated within the child window) to your
registered redirect URI.  Once your server has processed
the response, Javascript can be utilized to notify the
parent window that the workflow is complete; in turn,
the parent window can close the child window.

##### Example Javascript for Opening the Authorization Workflow #####

The below Javascript demonstates how an application could
open the authorization workflow as a modal on desktop
platforms.  In addition to desktop platforms, this method
automatically will function on mobile platforms by creating
an additional tab or split-screen browsing windows.  

<pre class="terminal">
var width = 780,
    height = 550,
    left = (screen.width - width) / 2,
    top = (screen.height - height) / 2,
    uniqueWindowId = "authorization-" + yourAppClientId
    params,
    location;
if (top > 20) {
	top = top - 20;
}
params = 'width=' + width + ', height=' + height;
params += ', top=' + top + ', left=' + left;
params += 'titlebar=no, location=yes';
location = build_oauth_request_url();
loginWindow = window.open(location, uniqueWindowId, params);
</pre>

The following Javascript snippets demonstrate how your
application can notify the parent window of the completion
of the workflow.

This first script allows your main window to listen
to postMessage calls from child windows:

<pre class="terminal">
window.addEventListener("message", function (e) {
	var oauthMessage = e.data;
	loginWindow.close();
	processOAuthMessage(oauthMessage);
}, false);
</pre>

The second script is served by the webpage at your
callback URI:

<pre class="terminal">
window.opener.postMessage(oauthMessage, 'https://example.com/');
</pre>

The contents of the "oauthMessage" could be the entirety of
the query string, or could be the result of any server-side
processing handled by your server as a result of the HTTP GET
to the callback URI.

##### Other User Experience Considerations #####

- By utilizing the same window name in the call to
  window.open(), you can avoid scenarios where a user
  accidentally opens multiple authorization windows for
  your application simultaneously.
- To demonstrate that your application is waiting on the
  authorization process, it is recommended to include
  visual cues, such as a translucent curtain, modal with
  spinner, etc., along with text that indicates you are
  waiting on user interaction in another window.
- It is recommended to provide a cancellation button or
  link that cancels the authorization process, and
  closes the child window.
- In the event that the user closes the original window
  that initiated the authorization flow, it may be prudent
  for your script served at your callback URI to check
  for a parent window, and if not present, notify the
  user.  Including a link whose target opens in a new
  window will allow the user to proceed with their
  original workflow.

#### Native Client Applications on Mobile Platforms ####

In recent years, OS platforms have been forced to lock
down certain behaviors within their browsers that were
traditionally used to facilitate OAuth2-based authorization
workflows.  Specifically, browsers now interrupt any
attempt to direct a user to a native application due to
abuse from advertisers of mobile apps.  As a result,
OS platforms now offer "in-app" browsers useful for
orchestrating authorization workflows that are free of
such impediments.  These "in-app" browsers also improve
on the user experience of OAuth2-based workflows by
preventing remnant browser tabs and smoothing the
transition between browser and app (no OS app switching
occurs.)

For more information on best practices for OAuth2-based
workflows for native applications, please refer to the
IETF Best Current Practices (BCP)
["OAuth 2.0 for Native Apps"][OAUTH-NATIVE].

_NOTE_: Cerner's Authorization Server does not currently
implement PKCE as noted in section 8.2 of the native
applications BCP.

The next sections discuss specific special cases not
covered by the OAuth native application BCP guide.

##### "Win32" Applications #####

Cerner currently supports only explicit internet hosts
or explicit URI activation schemes for redirection URIs;
as such, developers of traditional Windows applications
should [register a scheme][WIN-SCHEME] for their
application.  The following is a sample registry file
for a hypothetical scheme registration of
`sample.application://`:

<pre class="terminal">
Windows Registry Editor Version 5.00

[HKEY_CLASSES_ROOT\sample.application]
@="URL:Sample Authorization App"
"URL Protocol"=""
"UseOriginalUrlEncoding"="1"

[HKEY_CLASSES_ROOT\sample.application\DefaultIcon]
@="sample.exe,1"

[HKEY_CLASSES_ROOT\sample.application\shell]

[HKEY_CLASSES_ROOT\sample.application\shell\open]

[HKEY_CLASSES_ROOT\sample.application\shell\open\command]
@="c:\\sample.exe \"%1\""
</pre>

For the above registration, the client application would be
registered with a redirection URI whose scheme begins with
`sample.application://`, for example `sample.application://callback`.  
Upon redirection to this scheme, the Windows operating system will invoke the registered
application with the OAuth2 response URI passed as the first
argument.  The client application may then parse the URI and
in turn determine which open instance of the application
(if multiples are allowed) initiated the equest via
examination of the "state" parameter.

### Processing the Authorization Grant Response ###

The authorization grant response comes in the form of a
x-www-form-urlencoded query string, appended to your
redirection URI.  The base specification for the structure of
this response is defined in
[section 4.1 "Authorization Code Grant"](https://tools.ietf.org/html/rfc6749#section-4.1)
of RFC6749 (the OAuth2 Framework).  The following is
an example:

<pre class="terminal">
https://example.com/callback?code=0c8b259b-d716-4712-ad6a-1d22d92523fa&state=a4c16a46-2c46-482c-8d66-4cc4a2990bda
</pre>

Within a successful response, a "code" parameter will be
present, and a "state" parameter will be present if your
application included "state" as part of the initial request.

First, validate that the "state" parameter matches that of
a request that was initiated by the current device / user
agent.  Next, exchange the code for a token per section
4.1 of the RFC6749 (the OAuth2 Framework).  The following
are example requests / responses:

Request:
<pre class="terminal">
POST /tenants/ec2458f2-1e24-41c8-b71b-0e701af7583d/protocols/oauth2/profiles/smart-v1/token HTTP/1.1
Host: authorization.cerner.com
Accept: application/json
Content-Type: application/x-www-form-urlencoded
Content-Length: 161
Connection: close
grant_type=authorization_code&code=0c8b259b-d716-4712-ad6a-1d22d92523fa&client_id=bb318a62-fa61-49ae-b692-7d99214f0ec7&state=a4c16a46-2c46-482c-8d66-4cc4a2990bda
</pre>

Response:
<pre class="terminal">
HTTP/1.1 200 OK
Access-Control-Allow-Origin: *
Access-Control-Allow-Methods: OPTIONS, POST
Access-Control-Allow-Headers: Content-Type, Authorization
Cache-Control: no-store
Pragma: no-cache
Content-Type: application/json
Content-Length: 1462
Date: Tue, 01 Nov 2016 19:20:25 GMT

{
  "access_token": "eyJraWQiOiIyMDIwLTA3LTI4VDE3OjM2OjA5LjAwNC5lYyIsInR5cCI6IkpXVCIsImFsZyI6IkVTMjU2In0.eyJzdWIiOiJwb3J0YWwiLCJ1cm46Y29tOmNlcm5lcjphdXRob3JpemF0aW9uOmNsYWltcyI6eyJ2ZXIiOiIxLjAiLCJ0bnQiOiJlYzI0NThmMi0xZTI0LTQxYzgtYjcxYi0wZTcwMWFmNzU4M2QiLCJhenMiOiJ1c2VyXC9PYnNlcnZhdGlvbi5yZWFkIn0sImF6cCI6ImZoaXItbG9jYWwiLCJpc3MiOiJodHRwczpcL1wvYXV0aG9yaXphdGlvbi5jZXJuZXIuY29tXC8iLCJleHAiOjE1OTYwNTYwNjEsImlhdCI6MTU5NjA1NTQ2MSwianRpIjoiYmMwMzIwYTMtN2E3Yi00MmVkLTgzZDAtMWMxMTVlMjBkMDQzIiwidXJuOmNlcm5lcjphdXRob3JpemF0aW9uOmNsYWltczp2ZXJzaW9uOjEiOnsidmVyIjoiMS4wIiwicHJvZmlsZXMiOnsic21hcnQtdjEiOnsiYXpzIjoidXNlclwvT2JzZXJ2YXRpb24ucmVhZCJ9fSwiY2xpZW50Ijp7Im5hbWUiOiJGSElSIExvY2FsIFRlc3QgQ2xpZW50IiwiaWQiOiJmaGlyLWxvY2FsIn0sInVzZXIiOnsicHJpbmNpcGFsIjoicG9ydGFsIiwicGVyc29uYSI6InByb3ZpZGVyIiwiaWRzcCI6ImVjMjQ1OGYyLTFlMjQtNDFjOC1iNzFiLTBlNzAxYWY3NTgzZCIsInNlc3Npb25JZCI6IjFiYmEyOGQ0LTUwM2YtNDgyNi04OTE3LTJhOTIzMzczZjE2YyIsInByaW5jaXBhbFR5cGUiOiJ1c2VybmFtZSIsInByaW5jaXBhbFVyaSI6Imh0dHBzOlwvXC9taWxsZW5uaWEuY2VybmVyLmNvbVwvaW5zdGFuY2VcL2VjMjQ1OGYyLTFlMjQtNDFjOC1iNzFiLTBlNzAxYWY3NTgzZFwvcHJpbmNpcGFsXC8wMDAwLjAwMDAuMDBDMi42REI1IiwiaWRzcFVyaSI6Imh0dHBzOlwvXC9taWxsZW5uaWEuY2VybmVyLmNvbVwvYWNjb3VudHNcL2MxOTQxLmNlcm5fYWJjbi5jZXJuZXJhc3AuY29tXC9lYzI0NThmMi0xZTI0LTQxYzgtYjcxYi0wZTcwMWFmNzU4M2RcL2xvZ2luIn0sInRlbmFudCI6ImVjMjQ1OGYyLTFlMjQtNDFjOC1iNzFiLTBlNzAxYWY3NTgzZCJ9fQ.AruMhr4eaG3QHb794wzavhcD8NQAnao5sZWAe4cFbX4-oSd3pUwomoZ-zR8stSKhnaodS0l5bKGkd72goX0PNQ", 
  "scope": "user/Observation.read",
  "token_type": "Bearer",
  "expires_in": 570
}
</pre>

Three elements of the response should be evaluated:

- access_token:  This is the secret content to send to a FHIR<sup>®</sup>
  service to prove authorization for acting on behalf of a user.
- scope:  This is the space-delimited list of scopes that were
  authorized for use.  This list may differ from the list of
  scopes included in the initial request.  In some circumstances,
  the server may redact scopes - in others, users may have the
  capacity to redact scopes.
- expires_in:  The number of seconds before the token expires.
  If access is required for longer than the expiration of the
  token, consider requesting online_access or offline_access,
  as needed.

The following additional elements may be returned:

- patient:  The FHIR<sup>®</sup> id of a Patient resource
  in context of the current "launch".
- encounter:  The FHIR<sup>®</sup> id of an Encounter resource
  in context of the current "launch".
- refresh_token:  A token that be exchanged at the token
  endpoint for new access tokens.
- id_token:  An OpenID Connect identity token that can be
  used as "authentication" to your application.

#### Closing the Grant Interaction ####

Once the authorization grant response has been received, the
separate window / user agent for the facilitating the grant
interaction should be automatically closed, where possible
(an example of this for web-based applications is included
earlier in this document.)  In the event this step is either
not successful or not possible, content is provided by the
authorization server to inform the user if it is safe to
close the additional window.  The authorization server itself
will not attempt to self-close the window, as this generally
results in a prompt from the browser asking for permission.

#### Exception Handling ####

Both the authorization grant response and access token response
can result in errors.  The following is an example error
response from the grant workflow:

<pre class="terminal">
https://example.com/callback?state=f09dcfff-95ff-4e86-a689-05c8dd9719a2&error=access_denied&error_uri=https%3A%2F%2Fauthorization.cerner.com%2Ferrors%2Furn%253Acerner%253Aerror%253Aauthorization-server%253Aoauth2%253Agrant%253Adenied-by-server%2Finstances%2F42925fc9-7a7e-4cb0-95e4-4d3f178f68b7%3Fpersona%3Dprovider%26client%3Ddevjs%26tenant%3Dec2458f2-1e24-41c8-b71b-0e701af7583d
</pre>

The following is an example error response from an access
token request:

<pre class="terminal">
{
  "error": "invalid_grant",
  "error_uri": "https://authorization.cerner.com/errors/urn%3Acerner%3Aerror%3Aauthorization-server%3Aoauth2%3Atoken%3Acode-invalid-or-expired/instances/6359728c-c966-4929-bbf6-2388d353d89e?client=devjs&tenant=ec2458f2-1e24-41c8-b71b-0e701af7583d"
}
</pre>

In either circumstance, Cerner's authorization server communicates
the parameter "error_uri", which represents a URI that contains
additional information useful for end users, client app developers,
and support personnel, along with support contact information
for the associated organization.  It is recommended when such
errors occur to present a "more information" link or button to
the user (hyperlinked to the value of the URI) in addition to
other support instructions that your application displays to
the user.  Furthermore, it may be prudent for your application to
display a "retry" or "start over" mechanism such that the user
can retry the operation once the problem has been corrected.

<a id="refresh_tokens"></a>

### Utilizing Refresh Tokens ###

If your application is designed to interact with a user over
periods of time longer than that of a single access token,
it will be necessary to utilize "refresh" tokens.  A
refresh token is an additional secret value, returned as
part of the initial access token response, that can be
used to obtain additional access tokens.  Two forms of
access exist, each are requested as a special scope
in the authorization grant request:

- online_access:  Grants a refresh token that can be used
  for duration of a user's authenticated "session".  Such
  refresh tokens are valid until either the user explicitly logs
  out, the session is terminated by an administrator, or
  other risk mechanisms (timeouts, etc.) require a user
  to be re-authenticated.
- offline_access:  Grants a refresh token that can be
  utilized until either a user or administrator revokes it.

As access tokens are valid for periods that are less than ten
minutes, it is recommended to retrieve and cache new tokens
in advance of the previous token expiring.  Doing so
out-of-band of a user interaction will reduce the user's
perception of application latency.  Refresh attempts at
intervals lower than one minute may result in throttling.
It is not recommended to utilize tokens that are near the
precipice of expiry as latency could result in token rejection.

#### Access Token Request / Response ####

The following are examples of the request/response mechanism
defined in section 6 "Refreshing an Access Token" of the
[OAuth2 Framework][OAUTH].

Request:
<pre class="terminal">
POST /tenants/ec2458f2-1e24-41c8-b71b-0e701af7583d/protocols/oauth2/profiles/smart-v1/token HTTP/1.1
Host: authorization.cerner.com
Accept: application/json
Content-Type: application/x-www-form-urlencoded
Content-Length: 75
Connection: close

grant_type=refresh_token&refresh_token=b30911a8-9278-45aa-bbd9-aa05244faf3b
</pre>

Response:
<pre class="terminal">
HTTP/1.1 200 OK
Access-Control-Allow-Origin: *
Access-Control-Allow-Methods: OPTIONS, POST
Access-Control-Allow-Headers: Content-Type, Authorization
Cache-Control: no-store
Pragma: no-cache
Content-Type: application/json
Content-Length: 1514
Date: Tue, 01 Nov 2016 20:48:32 GMT

{
  "access_token": "eyJraWQiOiIyMDIwLTA3LTI4VDE3OjM2OjA5LjAwNC5lYyIsInR5cCI6IkpXVCIsImFsZyI6IkVTMjU2In0.eyJzdWIiOiJwb3J0YWwiLCJ1cm46Y29tOmNlcm5lcjphdXRob3JpemF0aW9uOmNsYWltcyI6eyJ2ZXIiOiIxLjAiLCJ0bnQiOiJlYzI0NThmMi0xZTI0LTQxYzgtYjcxYi0wZTcwMWFmNzU4M2QiLCJhenMiOiJvbmxpbmVfYWNjZXNzIHVzZXJcL09ic2VydmF0aW9uLnJlYWQifSwiYXpwIjoiZmhpci1sb2NhbCIsImlzcyI6Imh0dHBzOlwvXC9hdXRob3JpemF0aW9uLmNlcm5lci5jb21cLyIsImV4cCI6MTU5NjA1NjIyOCwiaWF0IjoxNTk2MDU1NjI4LCJqdGkiOiI4YzdjNDBlMy00NDA0LTQ4MmMtYjY2MC0xOTFhNWQ1M2ViNjAiLCJ1cm46Y2VybmVyOmF1dGhvcml6YXRpb246Y2xhaW1zOnZlcnNpb246MSI6eyJ2ZXIiOiIxLjAiLCJwcm9maWxlcyI6eyJzbWFydC12MSI6eyJhenMiOiJvbmxpbmVfYWNjZXNzIHVzZXJcL09ic2VydmF0aW9uLnJlYWQifX0sImNsaWVudCI6eyJuYW1lIjoiRkhJUiBMb2NhbCBUZXN0IENsaWVudCIsImlkIjoiZmhpci1sb2NhbCJ9LCJ1c2VyIjp7InByaW5jaXBhbCI6InBvcnRhbCIsInBlcnNvbmEiOiJwcm92aWRlciIsImlkc3AiOiJlYzI0NThmMi0xZTI0LTQxYzgtYjcxYi0wZTcwMWFmNzU4M2QiLCJzZXNzaW9uSWQiOiIxYmJhMjhkNC01MDNmLTQ4MjYtODkxNy0yYTkyMzM3M2YxNmMiLCJwcmluY2lwYWxUeXBlIjoidXNlcm5hbWUiLCJwcmluY2lwYWxVcmkiOiJodHRwczpcL1wvbWlsbGVubmlhLmNlcm5lci5jb21cL2luc3RhbmNlXC9lYzI0NThmMi0xZTI0LTQxYzgtYjcxYi0wZTcwMWFmNzU4M2RcL3ByaW5jaXBhbFwvMDAwMC4wMDAwLjAwQzIuNkRCNSIsImlkc3BVcmkiOiJodHRwczpcL1wvbWlsbGVubmlhLmNlcm5lci5jb21cL2FjY291bnRzXC9jMTk0MS5jZXJuX2FiY24uY2VybmVyYXNwLmNvbVwvZWMyNDU4ZjItMWUyNC00MWM4LWI3MWItMGU3MDFhZjc1ODNkXC9sb2dpbiJ9LCJ0ZW5hbnQiOiJlYzI0NThmMi0xZTI0LTQxYzgtYjcxYi0wZTcwMWFmNzU4M2QifX0.e0fhw5QGS_Nf2GQw5zdPOr79j-NQkk5pWQKuvXgo_jMW3Nwqi47KKrMF2eUkAtf9-_hyHEU_R6Ri8Je5FRfjoA",
  "scope": "user/Observation.read online_access",
  "token_type": "Bearer",
  "expires_in": 570
}
</pre>

_NOTE_: The token response from a refresh will not contain a new
refresh token.  The original refresh token from the initial
grant response must be retained.

#### Considerations for Handling 'offline_access' ####

To utilize refresh tokens issued with the offline_access scope,
Cerner requires your application is present credentials as
part of the access token request utilizing the [BASIC
authentication scheme][RFC2617].  The rationale is such
that if your solution compromises a large number of
refresh tokens that such refresh tokens need not be revoked;
only our client credentials need to be rotated to prevent
misues of such compromised token values.  Client credentials for
applications using Cerner's authorization server as issued
via [Cerner Central System Account Management][SYSTEM-ACCOUNTS].
See the [Registering a System Account][SYSTEM-ACCOUNT-SECTION] section
for more information on how to register these applications.

It is currently not recommended to store offline_access tokens
in persistent storage at a user's device.  Cerner's authorization
management workflows do not currently identify individual devices,
or provide revocation tools that would allow a user to revoke access
to individual devices.  If your application will allow the user
to obtain data at their client device, you must supply your
own mechanism for authenticating and revoking such devices to
the user and/or administrators.

Cerner's authorization server can be used as an authentication
mechanism via the use of the "openid" scope.  In this scenario,
an offline access refresh token could be stored in your
application's service tier and associated with the user's
OpenID Connect principal and issuer.  Upon subsequent
access, the client application would invoke an authorization
reuqest containing the "openid" scope to soley perform
authentication to allow your service tier to identify the user
and any refresh tokens your application currently possesses
for the user.

_NOTE_:  Cerner's authorization server currently does not
support the stand-alone "openid" workflow for patients and/or
their authorized representatives, nor does it support
"offline_access" for providers at this time.

When retrieving an access token utilizing using an
online_access refresh, the most likely cause of failures
is that access has been revoked.  The following steps are
recommended for the user experience:

- Indicate that the application's access may have been
  revoked.
- Offer a "more information" link/button, hyperlinked to
  the value returned in the parameter "error_uri".
- Offer the ability for the user to re-request
  authorization for your client application.

#### Considerations for Handling 'online_access' ####

When retrieving an access token utilizing using an
online_access refresh, the most likely cause of failures
is that the user's session has been terminated.  The
following steps are recommended for the user
experience:

- Indicate that the user may have logged out, or that
  the server otherwise requires that they log in again.
- If your application was invoked via a "launch", and
  the persona being serviced is a provider, direct the
  user to launch the application again.
- Offer the user the opportunity to "log in again"
  (initiate the authorization grant workflow again) as
  appropriate.
- Offer a "more information" link/button, hyperlinked to
  the value returned in the parameter "error_uri".

## Utilizing Authorization ##

To utilize access Cerner FHIR<sup>®</sup> resources utilizing an
access token, include a "bearer" authorization header
in your HTTP request per [RFC 6750][RFC6750] as follows:

<pre class="terminal">
Authorization: Bearer eyJraWQiOiIyMDIwLTA3LTI4VDE3OjM2OjA5LjAwNC5lYyIsInR5cCI6IkpXVCIsImFsZyI6IkVTMjU2In0.eyJzdWIiOiJwb3J0YWwiLCJ1cm46Y29tOmNlcm5lcjphdXRob3JpemF0aW9uOmNsYWltcyI6eyJ2ZXIiOiIxLjAiLCJ0bnQiOiJlYzI0NThmMi0xZTI0LTQxYzgtYjcxYi0wZTcwMWFmNzU4M2QiLCJhenMiOiJvbmxpbmVfYWNjZXNzIHVzZXJcL09ic2VydmF0aW9uLnJlYWQifSwiYXpwIjoiZmhpci1sb2NhbCIsImlzcyI6Imh0dHBzOlwvXC9hdXRob3JpemF0aW9uLmNlcm5lci5jb21cLyIsImV4cCI6MTU5NjA1NjIyOCwiaWF0IjoxNTk2MDU1NjI4LCJqdGkiOiI4YzdjNDBlMy00NDA0LTQ4MmMtYjY2MC0xOTFhNWQ1M2ViNjAiLCJ1cm46Y2VybmVyOmF1dGhvcml6YXRpb246Y2xhaW1zOnZlcnNpb246MSI6eyJ2ZXIiOiIxLjAiLCJwcm9maWxlcyI6eyJzbWFydC12MSI6eyJhenMiOiJvbmxpbmVfYWNjZXNzIHVzZXJcL09ic2VydmF0aW9uLnJlYWQifX0sImNsaWVudCI6eyJuYW1lIjoiRkhJUiBMb2NhbCBUZXN0IENsaWVudCIsImlkIjoiZmhpci1sb2NhbCJ9LCJ1c2VyIjp7InByaW5jaXBhbCI6InBvcnRhbCIsInBlcnNvbmEiOiJwcm92aWRlciIsImlkc3AiOiJlYzI0NThmMi0xZTI0LTQxYzgtYjcxYi0wZTcwMWFmNzU4M2QiLCJzZXNzaW9uSWQiOiIxYmJhMjhkNC01MDNmLTQ4MjYtODkxNy0yYTkyMzM3M2YxNmMiLCJwcmluY2lwYWxUeXBlIjoidXNlcm5hbWUiLCJwcmluY2lwYWxVcmkiOiJodHRwczpcL1wvbWlsbGVubmlhLmNlcm5lci5jb21cL2luc3RhbmNlXC9lYzI0NThmMi0xZTI0LTQxYzgtYjcxYi0wZTcwMWFmNzU4M2RcL3ByaW5jaXBhbFwvMDAwMC4wMDAwLjAwQzIuNkRCNSIsImlkc3BVcmkiOiJodHRwczpcL1wvbWlsbGVubmlhLmNlcm5lci5jb21cL2FjY291bnRzXC9jMTk0MS5jZXJuX2FiY24uY2VybmVyYXNwLmNvbVwvZWMyNDU4ZjItMWUyNC00MWM4LWI3MWItMGU3MDFhZjc1ODNkXC9sb2dpbiJ9LCJ0ZW5hbnQiOiJlYzI0NThmMi0xZTI0LTQxYzgtYjcxYi0wZTcwMWFmNzU4M2QifX0.e0fhw5QGS_Nf2GQw5zdPOr79j-NQkk5pWQKuvXgo_jMW3Nwqi47KKrMF2eUkAtf9-_hyHEU_R6Ri8Je5FRfjoA
</pre>

If the access token is invalid, the FHIR<sup>®</sup> resource will
return a "WWW-Authenticate" header in the response with
additional details per [RFC 6750][RFC6750].

## User Experience ##

The next sections include user experience recommendations
your application should consider/incorporate in its design.

### Handling the Authorization Request Window Being Closed ###

When presenting an authorization request to the user, the
possibility exists that the user might simply close the
window.  This could occur as a result of the user choosing
not to accept the terms, or could occur due to a failure
to display the content.

In this scenario, your application should check and detect
if the window has closed, and react accordingly.  Offer
the ability for the user to try again or to cancel, and
explain any consequences of cancelling.

### Provide a Link to "Manage Authorized Applications" ###

If your application is interactive and utilizes
"online_access" or "offline_access", it should present
a link to the end user that allows the user to manage
their current authorizations.  Generally, such links
are presented in conjunction with menu accessible from
a status bar.

For information on how to discover the management
endpoint for a user, see
[Discovery](authorization-specification#discovery) in the
authorization specification.

<a id="system-authorization"></a>

## Requesting Authorization on Behalf of a System ##

Certain types of applications and automated processes
do not act on behalf of end users.  Such access is
generally utilized by a covered entity itself, or another
entity covered under a business associate agreement.

Some FHIR<sup>®</sup> APIs support this model, allowing a
client application to directly authenticate for access
using a system account issued via
[Cerner Central System Account Management][SYSTEM-ACCOUNTS].
See the [Registering a System Account][SYSTEM-ACCOUNT-SECTION] section
for more information on how to register these applications.

A client performs this request utilizing the "client
credentials" flow of OAuth2 to request an access token,
using the [Basic authentication scheme][RFC2617] for
passing credentials.  The following is a non-normative
example of such a request:

Request:
<pre class="terminal">
POST /tenants/ec2458f2-1e24-41c8-b71b-0e701af7583d/protocols/oauth2/profiles/smart-v1/token HTTP/1.1
Host: authorization.cerner.com
Authorization: Basic YmIzMThhNjItZmE2MS00OWFlLWI2OTItN2Q5OTIxNGYwZWM3OnNlY3JldA==
Accept: application/json
Content-Type: application/x-www-form-urlencoded
Content-Length: 61
Connection: close
grant_type=client_credentials&scope=system%2FObservation.read%20system%2FPatient.read
</pre>

As an example, here is how the token may be requested via cURL:
<pre class="terminal">
curl -X POST 'https://authorization.cerner.com/tenants/ec2458f2-1e24-41c8-b71b-0e701af7583d/protocols/oauth2/profiles/smart-v1/token' \
  -H 'Accept: application/json' \
  -H "Authorization: Basic $(echo -n $SYSTEM_ACCOUNT_CLIENT_ID:$SYSTEM_ACCOUNT_CLIENT_SECRET | base64)" \
  -H 'Content-Type: application/x-www-form-urlencoded' \
  -H 'cache-control: no-cache' \
  -d 'grant_type=client_credentials&scope=system%2FObservation.read%20system%2FPatient.read'
</pre>

_Note_:  This access model is only supported on resources
where explicitly indicated in their respective
FHIR<sup>®</sup> API resource documentation.

<a id="faq"></a>

## Frequently Asked Questions ##

The next sections discuss questions that application
developers may pose that are not covered by the
preceding documentation.

- How can I allow users to utilize devices that do
  not provide a browser (user agent) to facilitate
  the authorization workflow?

> Cerner currently does not have a mechanism to allow
  such devices to participate in the authorization
  ecosystem.  Cerner is tracking the progress
  of the IETF draft RFC
  ["OAuth 2.0 Device Flow"](https://tools.ietf.org/html/draft-denniss-oauth-device-flow-00)
  for further evaluation of such capabilities.

- How can my application revoke a refresh token on
  behalf of a user?

> Cerner currently does not have a mechanism that allows
  client applications to revoke refresh tokens.  Cerner is
  currently tracking the progress of the IETF Proposed
  Standard RFC
  ["OAuth 2.0 Token Revocation"](https://tools.ietf.org/html/rfc7009)
  for further evaluation of such capabilities.

- How can my application participate in log out
  mechanisms provided by the organization's single
  sign-on (SSO) ecosystem?

> While the Cerner authorization server provides OpenID
  Connect support, it does not currently implement any
  of the draft log-out specifications currently
  proposed by the community.  Cerner continues to track
  on developments in this ecosystem.

> As an alternative, you may offer the user a link to
  "Manage Authorized Applications", which allows the user
  to log out via their SSO system.

- A browser window/tab remains after the completion of the
  authorization workflow.  How should my application handle
  this?

> Depending on how the browser was launched, your application
  may not have the ability to close the browser window.
  If you launched a fresh browser window directly, you may
  be able to use Windows APIs to find and send a close
  command directly to the window.

- Does the Cerner authorization server offer an
  authentication-only workflow (via OpenID Connect) for
  patients  and/or their authorized representatives?

> Cerner currently does not offer this capability at this
  time.

- Can I append additional query parameters for my
  redirection URI when I send my authorization grant
  request?

> Yes, Cerner's redirection URI validation allows for
  additional query parameters, per the OAuth specification.

> _NOTE_:  Cerner's implementation uses strict path
  validation, which includes trailing slashes in your
  redirection URI.

- I'm having trouble registering my redirection URI,
  what advice can you offer?

> URIs must conform with RFC 2396 and must be an
  absolute URI, per that specification.  Most issues
  we encounter are individuals attempting to register
  URIs with schemes containing a net path ("//"), but
  are missing an authority component.  For example,
  "app://" is an invalid URI, but "app://callback"
  is valid.

- Can I register multiple redirect URIs?

> Cerner's operations team can register multiple
  redirect URIs for your application.  This function
  is not yet exposed in our developer tooling.

- My organization is a Cerner client that offers an
  application directly to patients.  Can we skip the
  authorization interaction with users for our app?

> Yes, Cerner offers the ability for organizations
  providing their own app to disable the patient-mediated
  authorization workflow when used in context with their
  organization.

> _NOTE_:  Cerner currently does not support
  offline_access support for such applications.

- Can I require Cerner to force the use of client credentials
  (also known as a "confidential client") when exchanging a
  grant code for an access token?

> No, Cerner currently does not have this capability.  It
  is currently under consideration.

- How can I embed my SMART<sup>®</sup> on FHIR<sup>®</sup>
  application in another application, such as inside of a web
  view or iframe and still orchestrate the authorization
  workflow?

> A general-purpose framework for embedding SMART<sup>®</sup>
  on FHIR<sup>®</sup> applications does not currently exist.

- One or more offline access tokens stored by my application
  may have been compromised.  What action should I take to
  prevent their usage?

> Disable or rotate your system account via Cerner Central as
  soon as possible via
  [Cerner Central System Account Management][SYSTEM-ACCOUNTS].  

- Is offline_access supported for healthcare providers?

> Cerner does not currently have support for offline_access
  for providers.  It is currently under consideration.

- How can I deliver my solution to users utilizing its own
  Citrix instance with XenApp?

> Cerner currently does not have guidance on how to deliver
  native applications running within their own dedicated
  Citrix container.  Such applications would generally
  interact with the authorization server from a browser
  hosted within the application's Citrix environment,
  unless other steps are taken to allow for interaction
  with the browser on the device where Citrix Receiver
  is run.

## References ##
- ["The OAuth 2.0 Authorization Framework"][OAUTH]
- ["OAuth 2.0 Threat Model and Security Considerations"][OAUTH-THREAT]
- ["OAuth 2.0 Security Best Current Practice"][OAUTH-BCP]
- ["OAuth 2.0 for Native Apps"][OAUTH-NATIVE]
- ["OpenID Connect Core 1.0 incorporating errata set 1"][OPENID]
- ["Registering an Application to a URI Scheme" (Windows API)][WIN-SCHEME]
- ["HTTP Authentication: Basic and Digest Access Authentication"][RFC2617]
- ["The OAuth 2.0 Authorization Framework: Bearer Token Usage"][RFC6750]
- ["System Accounts Help"][SYSTEM-ACCOUNTS]
- ["Cerner code Console"][CERNER-CODE-CONSOLE]
- ["Cerner FHIR<sup>®</sup> Service Authorization Specification"][AUTHZ-SPEC]

[OAUTH]: https://tools.ietf.org/html/rfc6749 "The OAuth 2.0 Authorization Framework"
[OAUTH-THREAT]: https://tools.ietf.org/html/rfc6819 "OAuth 2.0 Threat Model and Security Considerations"
[OAUTH-BCP]: https://tools.ietf.org/html/draft-ietf-oauth-security-topics-06 "OAuth 2.0 Security Best Current Practice"
[OAUTH-NATIVE]: https://tools.ietf.org/html/rfc8252 "OAuth 2.0 for Native Apps"
[OPENID]: http://openid.net/specs/openid-connect-core-1_0.html "OpenID Connect Core 1.0 incorporating errata set 1"
[WIN-SCHEME]: https://msdn.microsoft.com/en-us/library/aa767914(v=vs.85).aspx "Registering an Application to a URI Scheme"
[RFC2617]: https://tools.ietf.org/html/rfc2617 "HTTP Authentication: Basic and Digest Access Authentication"
[RFC6750]: https://tools.ietf.org/html/rfc6750 "The OAuth 2.0 Authorization Framework: Bearer Token Usage"
[SYSTEM-ACCOUNTS]: https://wiki.ucern.com/display/CernerCentral/System+Account+Management+Help "Cerner System Account Management Help"
[SYSTEM-ACCOUNT-SECTION]: #registering-a-system-account "Registering a System Account"
[CERNER-CODE-CONSOLE]: https://code.cerner.com/developer/smart-on-fhir/ "Cerner Code Console"
[AUTHZ-SPEC]: ../authorization/authorization-specification "Cerner FHIR<sup>®</sup> Service Authorization Specification"
[CERNER-CENTRAL-MYDOMAIN]: https://wiki.cerner.com/display/CernerCentral/Accessing+Cerner+Central#AccessingCernerCentral-my_domainMyDomain "My Domain"
[CLIENT-APPS-DOC]: https://connect.cerner.com/docs/DOC-682161 "Maing Self-Developed SMART Apps Available in Your Domain"
