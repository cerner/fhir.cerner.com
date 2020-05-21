---
title: FHIR® Service Authorization Specification
layout: authorization
---

# FHIR<sup>®</sup> Service Authorization Specification v1.0 #
------------------------------------------------------------------------
* TOC
{:toc}

## Overview ##

SMART<sup>®</sup> on FHIR<sup>®</sup> is a framework designed to enable
the secure integration of applications with Electronic Health Records, 
portals, Health Information Exchanges, and other Health IT systems via
the [HL7<sup>®</sup> FHIR<sup>®</sup> Standard][FHIR] standard.  This
document codifies a formal technical specification, based upon the 
open source SMART<sup>®</sup> on FHIR<sup>®</sup> framework.  This
specification is targeted at both client application developers and 
developers of Electronic Health Records for securely consuming and
securely offering FHIR<sup>®</sup> services, respectively.

###	License ##
This document is licensed under the [Creative Commons Attribution 4.0 
International (CC BY 4.0) license][CCBY40].

## Introduction ##
Within the health-care environment, multiple actors may be involved 
with an individual's health record.  When an application needs to
access data in a electronic health record via a [FHIR<sup>®</sup>][FHIR] 
service, it may need to interact (directly or indirectly) with one or 
more of these actors to obtain authorization to perform work.

The SMART<sup>®</sup> on FHIR<sup>®</sup> framework standardizes the 
mechanisms under which an application obtains authorization to the
following types of resources:

* Clinical information.
* Contextual information for the resources currently of interest to 
  an individual accessing the EHR.
* Identity information for the individual currently accessing the EHR.

To orchestrate this interaction, SMART<sup>®</sup> on FHIR<sup>®</sup> 
defines a set of authorization profiles and extensions for the OAuth 2.0 
Authorization Framework ([IETF RFC 6749][OAUTH]).

### Terminology ###
The following terms are used within this specification:

*	application

	Synonymous with "client" or "SMART application", a piece computer 
	software designed to utilize FHIR<sup>®</sup> services in order to 
	orchestrate a desired activity for the user.

*	electronic health record (EHR)
	
	Computer software designed to store and process information about a 
	person's health information, such as medications, allergies, medical 
	history, etc.  The EHR acts as a resource server by providing 
	FHIR<sup>®</sup> services, is responsible for authenticating end 
	users, and is responsible for providing an authorization server. 

*	healthcare institution

	An organization that operates an electronic health record for use 
	in providing health care to	a population of users and is 
	responsible for policy decisions regarding the use of the record.  
	The healthcare 	institution has ultimate ownership of the 
	information in the EHR, but incertain cases may delegate the role of 
	resource ownership to end users.
	
*	patient

	An individual whose personal health information is stored within the 
	EHR.  A patient may	also be the end-user, acting in the capacity of 
	a resource owner. 
	


*	EHR application

	A piece of computer software that is directly part of the EHR 
	implementation and tracks the end user's current context.

### Notational Convention ###
The key words "MUST", "MUST NOT", "REQUIRED", "SHALL", "SHALL NOT", 
"SHOULD", "SHOULD NOT", "RECOMMENDED", "MAY", and "OPTIONAL" in this 
document are to be interpreted as described in [RFC 2119][].

Unless otherwise noted, all the protocol parameter names and values are 
case sensitive.

## Specification ##

SMART<sup>®</sup> on FHIR<sup>®</sup> describes the following types of 
workflows:

*	Contextless Flow

    Used where a SMART application seeks to acquire authorization to 
	access clinical information and does not require context from the 
	EHR.
	
*	EHR Launch Flow

	Used by an EHR application to pass a specific context to a SMART 
	application, which in turn attempts to	acquire authorization from 
	the EHR.
	
*	SMART Application Launch Flow

	Used by a SMART application to request context and authorization 
	from an EHR to access resources.

### Contextless Flow ###

<pre class="terminal">
+---------------+                                 +---------------+
|               |                                 |               |
| Resource      +-(1)-----------------------------> SMART         |
| Owner         |                                 | Application   |
|               |        +---------------+        |               |
|               |        |               |        |               |
|               <-(5)----+ Authorization <-(4)----+               |
|               |        | Server        |        |               |
|               +-(6)---->               +-(7)---->               |
|               |        |               |        |               |
+---------------+        |               <-(8)----+               |
                         |               |        |               |
                         |               +-(9)---->               |
                         |               |        |               |
                         +---------------+        |               |
                                                  |               |
                         +---------------+        |               |
                         |               |        |               |
                         | FHIR Resource <-(2)----+               |
                         | Server        |        |               |
                         |               +-(3)---->               |
                         |               |        |               |
                         |               <-(10)---+               |
                         |               |        |               |
                         |               +-(11)--->               |
                         |               |        |               |
                         +---------------+        +---------------+
</pre>
__Figure 1__: SMART Application Contextless Flow Diagram

In Figure 1, the following workflow is described:

1.	The end user begins a workflow in the SMART application that 
    requires access to FHIR<sup>®</sup> resources.  The SMART 
	application has either been pre-configured to work with a specific 
	FHIR<sup>®</sup> resource server, or the user has instructed
	the SMART application as to the location of the FHIR<sup>®</sup> 
	resource server, or the application is accessing a record it had 
	previously accessed.
2.	The SMART application performs [discovery](#discovery) by 
    requesting the FHIR<sup>®</sup> server's conformance statement.
3.  The FHIR<sup>®</sup> server returns the conformance statement, 
    which provides the needed endpoints for steps 4 and 8.
4.	The SMART application creates an OAuth 2.0 authorization grant 
    request, then directs the end user to the authorization server's 
    authorization endpoint via a browser with said request.  This 
    request contains a request for the appropriate scopes necessary 
    to access the FHIR<sup>®</sup> resource.
5.	The authorization server interacts with the resource owner to 
    verify identity or other information required by the authorization 
    server.
6.	The end user provides any information needed by the authorization 
    server to proceed. 
7.	An authorization grant is sent via the OAuth 2.0 framework back to 
    the SMART application.
8.	The SMART application requests an access token using the 
    authorization code.
9.	The authorization server returns the access token.
10. The SMART application utilizes the access token to request a 
    FHIR<sup>®</sup> resource.
11.	The FHIR<sup>®</sup> resource server returns the desired resource.

#### Usage ####

The contextless flow constitutes the most basic use of SMART workflows; 
it is used where the FHIR<sup>®</sup> resource needed by the SMART 
application is already known.  Examples of such scenarios include:

*	The application has been provided context via some other means, such 
    as a system generated hyperlink to the application.
*	The resource was previously used by the application, but access has 
    since expired and a new request for	authorization needs to be 
	generated.
	
#### Authorization Request ####

SMART applications __SHALL__ utilize an [authorization code grant](http://tools.ietf.org/html/rfc6749#section-4.1) 
to request authorization to FHIR<sup>®</sup> resources.  A SMART 
application __SHOULD__ request scopes needed to access the resource 
(per the [scopes](#scopes) section) for maximum interoperability.  
The application __MAY__ choose to omit the redirect URI, as SMART 
registration requires a default redirect URI.

In addition, SMART applications __MUST__ send the "state" 
parameter, as detailed in the [OAuth 2.0 Security Considerations][OAUTH-SECURITY].

SMART applications that are written natively for a platform __SHOULD__
utilize the operating system's default browser when performing the 
authorization request such that the authorization server may comply 
with any security controls that have been imparted upon it.  Such 
controls may include:

*	Support for single sign-on.
*	Support for anti-phishing controls implemented via persistent 
    browser state or browser plug-ins.
*	Support for external native applications for sign-on.
*	External regulatory requirements that would prohibit user 
    credentials from being entered via an embedded browser within the
    SMART application.
	
Such "native" applications __MAY__ support orchestrating the 
authorization flow in an embedded browser where requested out-of-band by 
the EHR provider.

#### Authorization Response ####

Authorization servers __SHALL__ return an [OAuth 2.0 authorization code grant](http://tools.ietf.org/html/rfc6749#section-4.1)
to exchange authorization with the SMART application.  Authorization 
servers __MAY__ choose to ask the end user for explicit approval to 
allow the SMART application to complete this workflow.

#### Access Token Request ####

SMART applications __SHALL__ utilize an access token request as 
described in the [section 4.1.3 of OAuth 2.0](http://tools.ietf.org/html/rfc6749#section-4.1.3).  The 
authorization server __MAY__ conditionally require client 
authentication, depending on the use case.

#### Access Token Response ####

Authorization servers __SHALL__ utilize an access token response as 
described in [section 4.1.4 of OAuth 2.0](http://tools.ietf.org/html/rfc6749#section-4.1.4)
to respond to the SMART application's request.  As part of the token 
response, authorization servers __SHALL__ support the return of an 
id_token where requested and authorized containing a minimal set of 
identity data, as described in the section 
["User Identity"](#user-identity).

Authorization servers __SHALL__ include the expires_in parameter to 
allow SMART applications to be proactive in retrieving new access 
tokens where necessary.

Authorization servers __SHALL__ return a token type of "bearer" as 
defined in [RFC 6750][].

#### Resource Server Request ####

To call a FHIR<sup>®</sup> resource, SMART applications __SHALL__ 
send the bearer token as an authorization header, as defined in 
[section 2.1 of RFC 6750](http://tools.ietf.org/html/rfc6750#section-2.1).

### EHR Launch Flow ###

<pre class="terminal">
+---------------+        +---------------+        +---------------+
|               |        |               |        |               |
| Resource      +-(1)----> EHR           +-(2)----> SMART         |
| Owner         |        | Application   |        | Application   |
|               |        |               |        |               |
|               |        +---------------+        |               |
|               |                                 |               |
|               |        +---------------+        |               |
|               |        |               |        |               |
|               <-(6)----+ Authorization <-(5)----+               |
|               |        | Server        |        |               |
|               +-(7)---->               +-(8)---->               |
|               |        |               |        |               |
+---------------+        |               <-(9)----+               |
                         |               |        |               |
                         |               +-(10)--->               |
                         |               |        |               |
                         +---------------+        |               |
                                                  |               |
                         +---------------+        |               |
                         |               |        |               |
                         | FHIR Resource <-(3)----+               |
                         | Server        |        |               |
                         |               +-(4)---->               |
                         |               |        |               |
                         |               <-(11)---+               |
                         |               |        |               |
                         |               +-(12)--->               |
                         |               |        |               |
                         +---------------+        +---------------+
</pre>
__Figure 2__: EHR Launch Flow Diagram

In Figure 2, the following workflow is described:

1.	The end user selects to launch a SMART application from within an 
    EHR application.
2.	The EHR directs the user to a URI endpoint registered for the SMART
    application containing a reference to the current context 
	information, and the location of the EHRs FHIR<sup>®</sup> API.
3.	The SMART application performs [discovery](#discovery) by 
    requesting the FHIR<sup>®</sup> server's conformance statement.
4.  The FHIR<sup>®</sup> server returns the conformance statement, 
    which provides the needed endpoints for steps 5 and 9.
5.	The SMART application creates an OAuth 2.0 authorization grant
    request, then directs the end user to the authorization server's 
    authorization endpoint via a browser with said request.  This 
    request contains a request for the appropriate scopes necessary to 
    access the FHIR<sup>®</sup> resource.
6.	The authorization server interacts with the resource owner to 
    verify identity or other information required by the authorization
    server.
7.	The end user provides any information needed by the authorization
    server to proceed.
8.	An authorization grant is sent via the OAuth 2.0 framework back to
    the SMART application.
9.	The SMART application requests an access token using the 
    authorization code.
10.	The authorization server returns the access token.
11. The SMART application utilizes the access token to request a
    FHIR<sup>®</sup> resource.
12.	The FHIR<sup>®</sup> resource server returns the desired resource.

#### EHR Launch Request ####

In the EHR application launch flow, the end user chooses to "launch" a 
SMART application from the EHR.  To receive such a launch, the SMART 
application implements an endpoint at a specific URI that accepts the 
following query parameters:

*	iss

    Identifies the EHR's FHIR<sup>®</sup> endpoint, which the app can 
    use to obtain additional details about the EHR, including its 
    authorization URL.
	
*	launch
	
	An opaque identifier for this specific launch, and any EHR context 
    associated with it.
	
Normative example:

<pre class="terminal">
https://example.org/launch?iss=https%3A%2F%2Fehr%2FFHIR&launch=ef1e6860-db06-4572-b311-02881d01d03d
</pre>

The syntax for such launch codes are defined in [appendix A.3.](#A.3), 
and for the "iss" value is defined in [appendix A.4](#A.4).

#### Authorization Request ####

Upon receipt of a launch context, a SMART application __SHALL__ 
initiate an authorization grant request to the EHR's authorization 
server as previously described in "Contextless Flow".  The SMART 
application __SHALL__ include the following extension parameters along 
with the request:

*	aud

	The value of the issuer parameter received by the SMART application 
    from the EHR launch request.
	
*	launch

	The value of the launch parameter received by the SMART application
    from the EHR launch request.
	
In addition, the SMART application __MUST__ include the scope of 
"launch" as indicated in ["scopes"](#scopes).

#### Authorization Response ####

Authorization servers __SHALL__ return an 
[OAuth 2.0 authorization code grant](http://tools.ietf.org/html/rfc6749#section-4.1) 
to exchange authorization with the SMART application.  Authorization
servers __SHOULD__ reject the request if the authorization code is not 
associated with the current user.  This step prevents cross-site 
request forgery of SMART application launches. 

Upon successful authorization, the authorization server __SHALL__ 
associate the resulting authorization code with the context information
associated with the launch code for retrieval via an access token
request.

#### Access Token Request ####

SMART applications __SHALL__ utilize an access token request as 
described in the [section 4.1.3 of OAuth 2.0](http://tools.ietf.org/html/rfc6749#section-4.1.3).  

#### Access Token Response ####

When the SMART application exchanges the authorization code for an 
access token, the authorization server __SHALL__ return the associated 
context information as parameters in the token response.  The following 
custom parameters are defined by this specification:

Parameter       | Example value                | Meaning
--------------- | ---------------------------- | ----------------------------------------------------------------------
patient 	    | "123" 	                   | String value with a patient id, indicating that the launched was in the context of FHIR<sup>®</sup> Patient 123.   All scopes with resource context of "patient" will be constrained to Patient 123.
encounter       | "123"                        | String value with an encounter id, indicating that the launch was in the context of FHIR<sup>®</sup> Encounter 123.
resource        | "MedicationPrescription/123" | String value with a relative resource link, describing some specific resource context for the (in this case, a particular medication prescription). This is a generic mechanism to communicate to an application that a particular resource is "of interest" at launch time.
intent 	        | "reconcile-medications"      | String value describing the intent of the application launch.

##### Launch Intent #####

Some SMART applications might offer more than one context or user 
interface that can be accessed during the EHR launch. An authorization 
server __MAY__ include the intent parameter to communicate the specific
user interface that the SMART application should display.

Launch intent values are not defined by this specification, but most 
conform to the syntax defined in [appendix A.5. Launch Intent Syntax](#A.5).
Such values and their associated semantics are decided via out-of-band 
agreement between SMART applications and EHR implementations.

#### Resource Server Request ####

SMART applications utilize the bearer token from the token response as 
described previously in "Contextless Flow" to access resources.

### SMART Application Launch Flow ###

<pre class="terminal">
+---------------+                                 +---------------+
|               |                                 |               |
| Resource      +-(1)-----------------------------> SMART         |
| Owner         |                                 | Application   |
|               |        +---------------+        |               |
|               |        |               |        |               |
|               <-(5)----+ Authorization <-(4)----+               |
|               |        | Server        |        |               |
|               +-(6)---->               +-(7)---->               |
|               |        |               |        |               |
+---------------+        |               <-(8)----+               |
                         |               |        |               |
                         |               +-(9)---->               |
                         |               |        |               |
                         +---------------+        |               |
                                                  |               |
                         +---------------+        |               |
                         |               |        |               |
                         | FHIR Resource <-(2)----+               |
                         | Server        |        |               |
                         |               +-(3)---->               |
                         |               |        |               |
                         |               <-(10)---+               |
                         |               |        |               |
                         |               +-(11)--->               |
                         |               |        |               |
                         +---------------+        +---------------+
</pre>
__Figure 3__: SMART Launch Flow Diagram

In Figure 3, the following workflow is described:

1.	The end user selects an option in a SMART application to retrieve 
    context from the EHR application.
2.	The SMART application performs [discovery](#discovery) by requesting the 
    FHIR<sup>®</sup> server's conformance statement.  The mechanism for 
	how the SMART application is provided the URL for the FHIR<sup>®</sup> 
	server is not defined by this specification.
3.  The FHIR<sup>®</sup> server returns the conformance statement, 
    which provides the needed endpoints for steps 4 and 8.
4.	The SMART application creates an OAuth 2.0 authorization grant 
    request, then directs the end user to the authorization server's 
    authorization endpoint via a browser with said request.  This 
    request contains a request for the appropriate scopes necessary to 
    access the FHIR<sup>®</sup> resource, along with scopes to request 
    the specific types of context information that is desired.
5.	The authorization server extrapolates the current context within 
    the EHR for the user.  This may involve direct interaction with the 
    user to confirm such context, or to prompt the user to establish 
    context, and/or to authenticate the user.
6.	The user confirms or establishes the necessary context for the 
    authorization server.
7.	An authorization grant is sent via the OAuth 2.0 framework back to 
    the SMART application.
8.	The SMART application requests an access token using the authorization 
    code.
9.	The authorization server returns the access token.
10. The SMART application utilizes the access token to request a 
    FHIR<sup>®</sup> resource.
11.	The FHIR<sup>®</sup> resource server returns the desired resource.

#### Authorization Request ####

In the SMART application launch flow, the end user initiates an action 
in a SMART application that requires access to context within the EHR.
The SMART application in some way is supplied the base URL for the 
FHIR<sup>®</sup> service of the EHR; the details of such provisioning 
is not defined by this specification.  After performing discovery, 
the SMART application __SHALL__ initiate an authorization grant request
to the EHR's authorization server as described previously in 
"Contextless Flow".
	
The SMART application __SHALL__ include one or more scopes that convey 
the information that is needed for launch as defined in 
[scopes](#scopes).

#### Authorization Response ####
The authorization server shall return a response as described in 
"Contextless Flow".

Upon successful authorization, the authorization server __SHALL__ 
associate the resulting authorization code with the current context 
information.  

#### Access Token Request ####
SMART applications __SHALL__ utilize an access token request as
described in the [section 4.1.3 of OAuth 2.0](http://tools.ietf.org/html/rfc6749#section-4.1.3).  

#### Access Token Response ####
The authorization server returns a response as described previously 
in "Contextless Flow".

#### Resource Server Request ####
SMART applications utilize the bearer token from the token response 
as described previously in "Contextless Flow" to access resources.

### Client Credentials Flow ###

<pre class="terminal">
+---------------+        +---------------+
|               |        |               |
| Authorization <-(3)----+ SMART         |
| Server        |        | Application   |
|               +-(4)---->               |
|               |        |               |
+---------------+        |               |
                         |               |
+---------------+        |               |
|               |        |               |
|               <-(1)----+               |
| FHIR Resource |        |               |
| Server        +-(2)---->               |
|               |        |               |
|               <-(5)----+               |
|               |        |               |
|               +-(6)---->               |
|               |        |               |
+---------------+        +---------------+
</pre>
__Figure 4__: Client Credentials Flow Diagram

In Figure 4, the following workflow is described:

1.	The SMART application performs [discovery](#discovery) by requesting
    the FHIR<sup>®</sup> server's conformance statement.  The mechanism 
	for how the SMART application is provided the URL for the 
    FHIR<sup>®</sup> server is not defined by this specification.
2.  The FHIR<sup>®</sup> server returns the conformance statement, 
    which provides the needed endpoint for step 3.
3.	The SMART application requests an access token using its client 
    credentials.
4.	The authorization server returns the access token.
5.  The SMART application utilizes the access token to request a
    FHIR<sup>®</sup> resource.
6.	The FHIR<sup>®</sup> resource server returns the desired resource.

####  Access Token Request ####
SMART applications __SHALL__ utilize an access token request as 
described in [section 4.4.3 of OAuth 2.0](http://tools.ietf.org/html/rfc6749#section-4.4.3).  
The application __MUST__ include credentials; it is __RECOMMENDED__ 
that authorization servers support "basic authentication" per 
[RFC 2617][], and __MAY__ offer other authentication mechanisms to 
clients.

#### Access Token Response ####
The authorization server returns a response as described 
previously in "Contextless Flow".

#### Resource Server Request ####
SMART applications utilize the bearer token from the token response as 
described previously in "Contextless Flow".

<a id="scopes"></a>

### Scopes ###

To obtain access to resources, an application must request the set of 
scopes necessary for it to perform work on behalf of the end user. The 
SMART on FHIR<sup>®</sup> framework describes four distinct 
collections of scopes:  resource access, access to identity information, 
requests for "launch" information, and longevity modifiers.

#### Resource Access ####
A request to access a collection of FHIR<sup>®</sup> resources consists 
of one or more SMART scopes.  Each SMART scope is constructed per the
structure defined in appendix [A.1.](#A.1), and contains the following
elements:

*	Resource Context

	The context in which rights are being requested, described in the section
    "Resource Context".
	
*	Resource Type

	A FHIR<sup>®</sup> resource type whose name is constrained by "Name".
	
*	Modification Rights

	Rights to read and/or write to the given type level or instance level resource(s).
	
##### Resource Context #####
Three contexts are defined as follows:

*	user

	"User" access allows an application access to any individual 
    resource instance that the authenticated end user is authorized to access.
	
*	patient

	"Patient" access restricts an application's access to only those 
    individual resource instances that are associated with the patient
    that is directly or indirectly in context.  Requests for such scopes 
    may only occur in conjunction with the use of a launch flow.
	
*   system

    "System" allows an application to access a resource directly, 
    without an authenticated user present.  It can only be utilized 
    with the client credentials flow, and __MUST NOT__ be combined with 
    other contexts.
	
##### Resource Type #####

The resource type of a resource scope must conform with a valid 
resource type as defined in the 
[FHIR<sup>®</sup> Resource Index](http://www.hl7.org/implement/standards/FHIR/resourcelist.html).  

##### Modification Rights #####

Three modifications rights are defined:

*   "read"

    Corresponds to "read", "vread", and "history" for instance level 
    interactions as defined by the 
    [FHIR<sup>®</sup> RESTful API specification](http://www.hl7.org/implement/standards/FHIR/http.html).  
    Where the resource context is "user", this also allows the type 
    level interactions of "search" and "history".
	
*   "write"

	Corresponds to "update" and "delete" for instance level 
    interactions.  Where the resource context is "user", this
	also allows the type level interactions of "create" and "validate".
	
*   "*"

    Corresponds to both read and write access, as defined above. This modification right is **not supported** in Cerner's Ignite implementation.

##### Examples #####
The following are normative examples of the resource scopes:

Scope                        | Authorizes Access to 
---------------------------- | ---------------------------------------------------------------------------------------
patient/Observation.read     | Read all observations about the patient in context
patient/Observation.write    | Add new observations about, such as new blood pressure readings.
user/Observation.read        | Read a feed of all new lab observations across a patient population.
user/Appointment.write       | Add new appointments for the user.
system/Patient.read          | Read all patient records accessible to the given client using its own credentials.

#### Scopes for Identity Information ####
The following scopes are defined for requesting identity information:

*   openid

    Requests that an OpenID Connect id_token be returned alongside 
    the access token.
	
*   profile

    Requests access to the FHIR<sup>®</sup> resource that represents 
    the user, and that the location of said resource be returned in the
    OpenID token.
	
See the section [User Identity](#user-identity) for more information on
how to utilize the identity information.

#### Scopes for Launch Information ####

When servicing a launch request, a SMART application __MUST__ include 
the scope of "launch" in its list of requested scopes.

For SMART applications performing the SMART Application Launch Flow, 
the following scopes are defined by this specification: 

Scope                        | Requests context
---------------------------- | ---------------------------------------------------------------------------------------
launch/patient               | Requests the EHR provide context regarding a patient.
launch/encounter             | Requests the EHR provide context regarding an encounter.

An EHR __MAY__ support additional custom launch scopes.  When doing so, 
the scope name must conform to the syntax defined in appendix
[A.2.](#A.2).
	
#### Scopes for Longevity ####

SMART on FHIR<sup>®</sup> provides a mechanism for a client application
to request a longevity for the access that is being requested.  Without 
such modifiers, no assumptions can be made about how long access may be 
granted.  A given authorization server __SHOULD__ generate access tokens
that have very short lifetimes by default, and provide a 
refresh token where longer access has been explicitly requested.

To request longevity, a SMART application __MAY__ include one
of the two following scopes:

*   online_access

    Where authorized, the authorization server __SHALL__ provide a 
	refresh token that may be used to obtain new access tokens as long
	as the user has an active session with the EHR.
 	
*   offline_access

    Where authorized, the authorization server __SHALL__ provide a
    refresh token that may be used to obtain new access tokens even
    when the user is no longer authenticated.  This refresh token will 
    remain valid until individually revoked at the authorization server
    or until the SMART application's relationship with 	the EHR is 
    terminated.

These scopes __MUST NOT__ be used in conjunction with the client 
credentials flow, as they are not applicable to that use case.

#### Disambiguation of Scopes Between Competing Protocols ####
In the event that an authorization request is used in conjunction with 
that of a protocol that defines a competing scope, a SMART application 
or authorization server __MAY__ prepend the following prefix to a scope:

<pre class="terminal">
http://smarthealthit.org/FHIR/scopes/
</pre>

Normative example:

<pre class="terminal">
http://smarthealthit.org/FHIR/scopes/user/Observation.read
</pre>

Applications and authorization servers __MUST__ consider the fully-qualified scope names semantically equivalent to the
shorthand versions where no conflicts exist with other values.  For example, an authorization server __MAY__ choose to
return the fully-qualified scopes in the authorized access token response in response to the short-hand versions being 
used.

__NOTE__: The openid and profile scopes are defined by the OpenID Connect specification, which does not define a
prefix.  

<a id="user-identity"></a>

### User Identity ###

SMART on FHIR<sup>®</sup> allows for identity information about the end 
user to be obtained via an [OpenID Connect][OPENID] identity 
token.  SMART applications __MAY__ request such identity information by 
requesting the scope of _openid_ during its authorization 
request. Authorization servers __MUST__ provide an id_token as part of 
the access token response if the SMART application has been authorized to 
obtain the information.  

#### OpenID Connect Identifier Permanency ####

The authorization server __MUST__ include a permanent URL for the 
issuer (_iss_) value of the token.  The URL __MUST NOT__ contain path 
segments that vary over time, such as version information for the 
FHIR<sup>®</sup> or SMART protocol being utilized.  The value of 
the subject (_sub_) of the id_token must be a permanent identifier for 
the end user, whose value is stable.  SMART applications __MUST__ treat
the combination of issuer and subject as the universally unique 
identifier for the end user.

#### Non-repudiation of OpenID Connect id_tokens ####
The authorization server __SHALL__ sign the id_token per the OpenID 
Connect specification using the RS256 algorithm.
  
The authorization server __SHALL__ make its public keys available as 
described in [OpenID Connect Discovery][OPENID-DISCOVERY], 
incorporating both an "OpenID Provider Configuration" document and a 
"JSON Web Key" document describing the public key(s) used to sign 
tokens. 

SMART applications __MUST__ validate the token per the token 
validation section of [OpenID Connect][OPENID].

#### Profile Resource ####
In addition to the to requesting access to the user's OpenID identity,
a SMART application __MAY__ request access to the FHIR<sup>®</sup> 
resource that represents the user through the addition of the 
"_profile_" scope.  The authorization server __SHALL__ fulfill such 
by including available default profile claims in the id_token.

An EHR __MAY__ include the  URI of the user's FHIR<sup>®</sup> 
resource.  This resource may be a Patient, Practitioner, 
RelatedPerson, or Person resource as described by the
[FHIR<sup>®</sup> Specification][FHIR].

The FHIR<sup>®</sup> resource server __MUST__ allow a user access 
to their own user resource when receiving any access token
that represents approved access to the profile scope. 

<a id="discovery"></a>

### Discovery ###

To support automated discovery of OAuth2 endpoints, a SMART on 
FHIR<sup>®</sup> EHR publishes a set of OAuth2 endpoint URLs inside 
its conformance statement on the Conformance.rest.security element.  
The following elements are 
[extensions](http://www.hl7.org/implement/standards/FHIR/extensibility.html)
identified by the following URI:

<pre class="terminal">
http://FHIR-registry.smarthealthit.org/StructureDefinition/oauth-uris
</pre>

The content of the extension defines the following urls, each 
associated with a valueUri:

*   authorize

    A valueUri indicating the OAuth2 "authorize" endpoint for this 
    FHIR<sup>®</sup> server.

*   token

    A valueUri indicating the OAuth2 "token" endpoint for this 
    FHIR<sup>®</sup> server.

*   introspect

    A valueUri indicating the OAuth2 "introspect" endpoint for this 
    FHIR<sup>®</sup> server; see
    [RFC 7662](https://tools.ietf.org/html/rfc7662) for details.

*   manage

    A valueUri indicating the user-facing authorization management 
    workflow entry point for this FHIR<sup>®</sup> server.

Non-normative conformance example as JSON:

<pre class="terminal">
{
  "resourceType": "Conformance", 
  ...
  "rest": [
    {
      ...
      "security": {
        "extension": [
          {
            "url": "http://FHIR-registry.smarthealthit.org/StructureDefinition/oauth-uris",
            "extension": [
              {
                "url": "token",
                "valueUri": "https://my-server.org/token"
              },
              {
                "url": "authorize",
                "valueUri": "https://my-server.org/authorize"
              },
              {
                "url": "manage",
                "valueUri": "https://my-server.org/manage"
              }
            ]
          }
        ],
        ...
</pre>

### Client Authentication ###

To mitigate the risk of compromised refresh tokens, SMART applications 
__SHOULD__ leverage client authentication when storing such refresh 
tokens outside of the client component of their application (e.g. 
storing in a central database, in memory on an application server, 
etc.)  This ensures that in the event such refresh tokens are 
compromised, that the tokens need not be revoked.  If the client's 
credentials are stolen in addition to the tokens, a client application 
need only to revoke its previous credentials with EHRs.

### Registration ###

A SMART application that utilizes the Contextless Flow, EHR Launch 
Flow, or SMART Application Launch Flow __MUST__ supply the following 
information when registering with an EHR:

*   The application's "launch" URL.

*   The application's redirection URI for receiving authorization 
    code grants.


### Exception Conditions ###

During the processes of obtaining access tokens and utilizing access 
tokens, it is possible for exceptions to occur.  Such exceptions could 
be caused by, but are not limited to, the following conditions:

*   The SMART application isn't registered with the given EHR.
*   The SMART application's access to an EHR is suspended.
*   The end user's access is suspended.
*   The end user has terminated the SMART application's access or has 
    logged off.
*	The end user did not have sufficient privileges to access a 
    specific resource.
*   Internal errors in the EHR system.

In the majority of cases, the EHR system will have the most information
as to the cause of the failure, and will be in the best position to 
offer assistance to the user and/or individuals whom support a given 
the SMART application.  As such, it is __RECOMMENDED__ that authorization 
servers and resource servers utilize the "error_uri" parameter as 
detailed in the following specifications:

*   [OAuth 2.0 - section 4.1.2.1 Error Response](http://tools.ietf.org/html/rfc6749#section-4.1.2.1)
*   [OAuth 2.0 - section 5.2 - Error Response](http://tools.ietf.org/html/rfc6749#section-5.2)
*   [Bearer Token Usage - section 3 The WWW-Authenticate Response Header Field](http://tools.ietf.org/html/rfc6750#section-3)

SMART applications that receive such information in error responses 
__SHOULD__ present such links to end users.  

It is __RECOMMENDED__ that such links provide actionable instructions 
for either the end user or for individuals whom are supporting the SMART 
application.  It is __RECOMMENDED__ for SMART applications to provide a 
mechanism to retry a specific action after an error to assist users in 
recovering from transient error conditions.

### Security Considerations ###
*   It is __RECOMMENDED__ that EHRs issue access tokens for short durations 
    (e.g. ten minutes or less) to minimize the window in which a compromised 
	token could be excercised.  Otherwise, an EHR __SHOULD__ provide 
	mechanisms accessible to administrators and end users to revoke tokens 
	easily in the event of a security incident.

*   Authorization servers __MUST NOT__ utilize the value of the launch code 
    as a mechanism for passing authenticated state.  Doing so opens the 
    possibility to a session injection attack, and could open the possibility 
    of a session fixation attack.

*   SMART applications __MUST__ assure that sensitive information 
    (authentication secrets, authorization codes, tokens, PHI) are 
    transmitted ONLY to authenticated servers, over TLS-secured channels.
	
*   Resource servers __MUST__ be TLS-secured.
	
*   All use of TLS __MUST__ incorporate best current practices for transport 
    layer security described in [RFC 7525][].  EHRs and SMART applications 
    __SHOULD__ continue to incorporate updates to current practices and 
    __SHOULD__ 	document their policies for staying current.

<a id="A"></a>
	
## Appendix ##

This section provides Augmented Backus-Naur Form (ABNF) syntax descriptions 
for the elements defined in this specification using the notation of 
[RFC 5234][], and additionally utilizes other syntax definitions defined in 
[Appendix A of the OAuth 2.0 Framework](http://tools.ietf.org/html/rfc6749#appendix-A).

<a id="A.1"></a>

### A.1. Resource Scope Syntax ###

<pre class="terminal">
scope-name          = resource-context "/" resource-type "." modification-rights
resource-context    = ("user" / "patient") 
resource-type       = (Name)
modification-rights = ("read" / "write");
</pre>

<a id="A.2"></a>

### A.2. Launch Scope Syntax ###

<pre class="terminal">
  launch-scope      = "launch/" *( SP scope-token )
</pre>

<a id="A.3"></a>

### A.3. Launch Code Syntax ###

<pre class="terminal">
  launch-code       = 1*VSCHAR
</pre>

<a id="A.4"></a>

### A.4. Launch Issuer Syntax ###

<pre class="terminal">
  launch-issuer     = URI-reference
</pre>

<a id="A.5"></a>

### A.5. Launch Intent Syntax ###

<pre class="terminal">
  launch-intent     = 1*VSCHAR
</pre>

## References ##

*  ["FHIR<sup>®</sup> Specification Home Page"][FHIR]
*  ["The OAuth 2.0 Authorization Framework"][OAUTH]
*  ["OAuth 2.0 Threat Model and Security Considerations"][OAUTH-SECURITY]
*  ["Key words for use in RFCs to Indicate Requirement Levels"][RFC 2119]
*  ["Augmented BNF for Syntax Specifications: ABNF"][RFC 5234]
*  ["The OAuth 2.0 Authorization Framework: Bearer Token Usage"][RFC 6750]
*  ["Recommendations for Secure Use of Transport Layer Security (TLS) and Datagram Transport Layer Security (DTLS)"][RFC 7525]
*  ["Creative Commons Attribution 4.0 International (CC BY 4.0)"][CCBY40]
*  ["HTTP Authentication: Basic and Digest Access Authentication"][RFC 2617]
*  ["OpenID Connect Core 1.0 incorporating errata set 1"][OPENID]
*  ["OpenID Connect Discovery 1.0 incorporating errata set 1"][OPENID-DISCOVERY]

[FHIR]: http://www.hl7.org/implement/standards/FHIR/ "FHIR<sup>®</sup> Specification Home Page"
[OAUTH]: http://tools.ietf.org/html/rfc6749 "The OAuth 2.0 Authorization Framework"
[OAUTH-SECURITY]: http://tools.ietf.org/html/rfc6819 "OAuth 2.0 Threat Model and Security Considerations"
[RFC 2119]: http://tools.ietf.org/html/rfc2119 "Key words for use in RFCs to Indicate Requirement Levels"
[RFC 5234]: https://tools.ietf.org/html/rfc5234 "Augmented BNF for Syntax Specifications: ABNF"
[RFC 6750]: http://tools.ietf.org/html/rfc6750 "The OAuth 2.0 Authorization Framework: Bearer Token Usage"
[RFC 7525]: https://tools.ietf.org/html/rfc7525 "Recommendations for Secure Use of Transport Layer Security (TLS) and Datagram Transport Layer Security (DTLS)"
[CCBY40]: https://creativecommons.org/licenses/by/4.0/ "Creative Commons Attribution 4.0 International (CC BY 4.0)"
[RFC 2617]: https://tools.ietf.org/html/rfc2617 "HTTP Authentication: Basic and Digest Access Authentication"
[OPENID]: http://openid.net/specs/openid-connect-core-1_0.html "OpenID Connect Core 1.0 incorporating errata set 1"
[OPENID-DISCOVERY]: https://openid.net/specs/openid-connect-discovery-1_0.html "OpenID Connect Discovery 1.0 incorporating errata set 1"
