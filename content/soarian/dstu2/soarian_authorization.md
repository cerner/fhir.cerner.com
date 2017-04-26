---
title: Authorization | DSTU 2 API
---

# Authorization 

All API calls require secure authorization.  Secure authorization for all API call relies on the OAuth 2.0 standard. SMART on FHIR provides profiles of OAuth 2.0 for an authorization server to broker:

  * The exchange of an access token to an Application (aka API consumer) on behalf of an authenticated user. Per the Terms of Use of the Soarian API, such users may be patients or patient proxies.
  * The exchange of contextual information, such as a selected patient, and the ability to constrain tokens to said context.
  
In order to access data from Soarian via the API, an Application has to first acquire an access token from the API's authorization server. For detailed information on OAuth 2.0 refer to [Authorization] [authorization-OAuth]

* TOC
{:toc}

## Requesting Authorization on Behalf of a User

To access Cerner's FHIR<sup>&reg;</sup> services on behalf of a user, your client Application must make an authorization request through a user agent on the user's device. This involves the following steps:

  * Discover the authorization and token endpoints from the [Conformance] [conformance] resource. 
  * Construct an authorization grant request URL.  
  * Invoke a browser with the authorization grant request URL.  
  * Receive the OAuth callback.  
  * Exchange the received grant for a token.  
  * Close the browser.  
  * Handle any exceptions encountered.  
  * Utilize "refresh" tokens.  
  
For details on above steps refer to [Authorization] [authorization-behalf-user]

Soarian supports only SMART Application Launch flow as listed in the [technical specification] [smart-application]

Soarian supports only access on behalf of a patient or patient proxy. In addition, Soarian supports only "patient" scopes for the resources specified in the Conformance statement. For example: patient/Condition.read, patient/MedicationStatement.read...

## ActivateLinkToken API to link User Identity to Patient

### Overview

Soarian Clinicals generates and provides Activation tokens for each of the patients and/or patient's proxies who wish to request patient's data. The Application needs to provide a means to enter Activation tokens and call the ActivateLinkToken API to link the user to the patient record.

Activation tokens can be provided to patients and their proxies. Soarian Clinicals allows hospital staff to add patient proxies and manage their tokens. This Activation token is provided to patient and/or their proxies by hospital staff either by printed report or email, based on hospital's configuration and policy.  Activation tokens are temporary and expire if not utilized; the API will error if a token is invalid, revoked or expired.  Patients can request hospital staff to generate another Activation token, if needed.  

API-consuming Application(s) need to invoke ActivateLinkToken API to establish a link between the established user identity and a patient record in Soarian Clinicals. This service when called, the Application must provide Authorization token (access token received from Cerner OAuth server), valid Activation token (provided by Hospital to Patient or Proxy) and Patient's Date of Birth. Activation is once per account (patient/proxy), regardless of the number of different applications used to access the patient record. 

### Details
The following provides information about the ActivateLinkToken API.

#### API Root Url

The root URL for this API would be as follows, where the tenant varies and is provided at the time of registration.

Sandbox: `https://api-myrecord.sandboxcerner.com/soarian/:tenant`

Production: `https://api-myrecord.cerner.com/soarian/:tenant`

#### Requesting OAuth Access Token

ActivateLinkToken API requires OAuth access token from Cerner OAuth authorization server. Cerner has designed a special profile to access this API.  Each Soarian Clinicals instance advertises the URL of its respective authorization server within its FHIR<sup>&reg;</sup> [Conformance] [conformance] document for the ActivateLinkToken API under 
 
	"rest": [
    {
      "mode": "server",
      "security": {
        "extension": [ ...
            ]
          },
          {
            "url": "http://cerner.hs.fhir.com/StructureDefinition/SoarianIdLinking-uris",
            "extension": [
              {
                "url": "token",
                "valueUri": "https://authorization.sandboxcerner.com/tenants/45343c0c-3f93-4721-874a-258fc4bae3a4/protocols/oauth2/profiles/soarian-identity-linking-v1/token"
              },
              {
                "url": "authorize",
                "valueUri": "https://authorization.sandboxcerner.com/tenants/45343c0c-3f93-4721-874a-258fc4bae3a4/protocols/oauth2/profiles/soarian-identity-linking-v1/personas/patient/authorize"
              }
            ]
          }
        ],
        "description": "OAuth2 with SMART extensions"
      },

The Application needs to initiate the OAuth flow with the end-points listed above for obtaining OAuth 2.0 token for ActivateLinkToken API. Refer to [Authorization] [authorization] for more details. The scope is not applicable to this API and will be passed empty.

#### Headers
The following headers must be provided.  

    Authorization: <OAuth2 Bearer Token obtained from above step>
	
#### Parameters
There are two input parameters and both are mandatory.

| Name | Required? | Description |
|---|---|---|
| linkToken | Y | Carries activation token provided to patient or proxy by hospitals. This value is UTF8 (STRING). |
| dateOfBirth | Y | Carries date of birth of patient. This value is a UTF8 (STRING), structured as a full-date as specified in (RFC3339 section 5.6).|

#### Request

    POST /ActivateLinkToken?:parameters

#### Response	
Http status code

| Http Status Code | Description|
|---|---|
| 200 | Success |
| 403	| JSON response to carry exception description. Ex. Access token is not match with specification. |
| 404	| JSON response to carry description. Ex. Activation token does not exist in Soarian Clinicals. |
| 500	| JSON response with any server internal error. |

[authorization-OAuth]: /authorization "authorization-OAuth"
[authorization-behalf-user]: /authorization/#requesting-authorization-on-behalf-of-a-user "authorization-behalf-user" 
[authorization]: /authorization/#requesting-authorization-on-behalf-of-a-user "authorization"
[smart-application]: /authorization/authorization-specification/#smart-application-launch-flow "smart-application"
[conformance]: ../conformance "conformance"