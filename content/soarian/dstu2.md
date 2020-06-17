---
title: Soarian 
---

# Overview     

Soarian Clinicals includes an Application Programmer's Interface (API).  The API is utilized in the United States by patients and their designated proxies via one or more connected Application(s) that meet the API Technical and Terms of Use specifications.  This section provides an overview of the expected interaction of the Application User, Application, API, and the Cerner Soarian Clinicals solution. This overview provides a foundation to understand the subsequent technical specifications of the integration between the Application and the API. It provides a summary of features expected of the Application that uses the API in an effort to facilitate clients' selection of Application(s). It summarizes the interactions of the Application and API to provide context for each detailed definition.  

* TOC
{:toc}

## Trusted connection

All API requests will use HTTPS for data transfer. The SHA2 (SHA 256) encryption within HTTPS is intended to provide benefits like confidentiality, integrity and identity. Information remains confidential because only the browser and the server can decrypt the traffic.  

## Purpose

The purpose of the API is to support patient engagement capabilities. Cerner clients may select and connect whitelisted Application(s) designed to allow patients and their proxies to query Soarian Clinicals, via the API, for C-CDA (consolidated clinical document architecture) documents and/or Office of the National Coordinator (ONC) CCDS (common clinical data set) data categories that are represented as FHIR<sup>®</sup> resources. This capability might augment the client's existing Patient Portal / Patient Engagement strategies. For example, the capability may provide a means for portals to become portals of portals, accessing data from a variety of clinical systems, thus reducing the number of portals with which a patient interacts which may increase his affinity to the remaining portal. The capability may encourage integration with a broader range of personal health management applications so that users can marry their health maintenance data with summary of care information such as medication lists, problem lists, and recent diagnostic results. The overall goal is to provide patients and their proxies with greater access to their health information, via means to which they have affinity, to stimulate them to be actively engaged in their health.

An Application is EHRT/HIT (electronic health record technology / health information technology) that provides capabilities to users who are or become patients and/or patient-proxies. A patient-proxy is a user who is expressly authorized by a patient to access his/her information. The Application is responsible for managing user access to the Application and providing the patient and/or proxy user access to the API capabilities via accepting the Terms of Use and successfully connecting to the API in accordance with the Technical Document. Applications are encouraged to provide healthcare related capabilities for HIPAA including activity logging. The Application may or may not be offered by a HIPAA business associate or be covered under HIPAA requirements. The client who elects to connect an Application is responsible for determining the capabilities of that Application for Privacy, Security, Accessibility, and functionality to patient / proxy users as appropriate for its use with the API as well as successful Application connection with the Technical Document. Once the Application is whitelisted and registered with the API and becomes a trusted API consumer, its users may begin interacting with the API for health information. Application whitelisting is performed by Cerner and Application registration and API enabling is the responsibility of the client.

The initial interaction between the user, Application, and API is to establish a common patient identity and link that identity to an Application user.  The client must have a patient-facing identity provider (IdP) capable of the SAML interaction with the API services. One and only one IdP per client for all API instances is supported.  Application users will establish user name and password in the IdP.  The Soarian proxy and token management capabilities will be enabled and the Application users will enter their temporary linking token in the Application to establish an association between the user ID and the patient.  

The Application interacts with the API using OAuth2 and the IdP with SAML for trusted user connections.  When the patient is seen for a healthcare encounter, Soarian Clinicals establishes a temporary linking token which is provided to the patient. Individual tokens may also be assigned to patient-authorized proxy(ies). The Soarian Clinicals user is responsible for state and federal guidelines for interacting with the patient and managing proxies as entered in Soarian. The Application must provide a means for the Application user to establish themselves in an approved identity server and then enter the temporary linking token into the Application. The Application interacts with an authorization server to establish a trusted connection and user authentication and then passes the temporary linking token to the Soarian Clinicals ActivateLinkToken API and Soarian Clinicals establishes a user-patient relationship that is used in subsequent interactions. This interaction provides the Application a trusted link between the user definition used for authentication and the identity of that user as a Soarian managed patient or proxy thus authorizing each user for a specific patient's data. Each subsequent interaction between the Application and API utilizes the trusted connection and a patient scope selection that Soarian has authorized via the token exchange.

The below figure shows the interaction summary between Application, IdP, Authorization server and Soarian API. 

![Soarian API and Application interaction](/images/soarian-api-application-interaction.jpg)

Once the IdP, Application, and API are registered, API is enabled and the user-patient-proxy identity and authorization is established, the patient/proxy Application user can use Application capabilities to query the API for:

 * One or more C-CDA SOEN (consolidated clinical documentation architecture summary of episode note) containing an authorized patient's health information 
 * Each category of health data such as a medication list, allergy list, problem list, diagnostic test results, or other specified information.  

The Application is responsible for determining which of and how the API capabilities are exposed to the user. For each capability the Application offers the user, the specific resource pages define those API capabilities and, within each, which capabilities the Application must/shall support to be compliant with the API.

## Authorization

For details on authorization to the API, see the [authorization](soarian_authorization) section.

## Service Root URL

URLs for the FHIR server vary by the tenant (datasource or client) being accessed, as well as other factors. The 
[service root url](http://hl7.org/fhir/dstu2/http.html#general) is provided at registration time. FHIR calls will be 
made against URLs of the following format:

`:serviceRootURL/:resource[?:parameters]`

For example: 

    https://fhir-myrecord.sandboxcerner.com/dstu2/abcd1234/Condition?patientId=4342008

Where `https://fhir-myrecord.sandboxcerner.com/dstu2/abcd1234/` is the the `:serviceRootURL`, `Condition` is the 
`:resource`, and `patientId=4342008` is the `:parameters`.

### Secure Sandbox

The secure sandbox instance can be used for testing an application with [authorization](#authorization). The [service root URL](#service-root-url) for the sandbox instance is:

`https://fhir-myrecord.sandboxcerner.com/dstu2/0e885770-571b-4c0c-b30f-21df9a058d0d`

Example for a resource call: `https://fhir-myrecord.sandboxcerner.com/dstu2/0e885770-571b-4c0c-b30f-21df9a058d0d/Condition?patientId=D4292B7B-AEDF-4CEF-B783-BD3AA1B0DD27`


## Media Types

Cerner supports the FHIR<sup>®</sup> standard defined media types for JSON content:

    application/json+fhir
    application/json
    application/xml+fhir
    application/xml

We encourage you to explicitly request one of these types via the `Accept` header, or via the _format query parameter.
    
    :serviceRootURL/:resource?...&_format=xml
    :serviceRootURL/:resource?...&_format=json

## Special information regarding date parameters

* All dates should be formatted using the ISO 8601 basic format as YYYYMMDD.

* Dates are assumed to be formatted correctly. The API does not reject dates with out of bounds months or days. Instead, the API resolves them to valid amounts. For example, if a date of 20152101 is provided, MM is 21 or 12+9 months and the API will resolve 20152101 to 20160901.

* While DSTU2 uses a letter syntax for date (e.g., ge, le, eq), the API utilizes symbols (e.g., >=, <=, =).  Syntax for optional date parameter entry includes:

  * &date=YYYYMMDD.  Exactly and inclusive of the specified date.  Note that a date passed without a comparator (e.g., <) is interpreted as an exact date as per specification.

  * &date=<YYYYMMDD.  Less than the date, not inclusive of the date.

  * &date=<=YYYYMMDD.  Less than or equal to the date, inclusive of the date.

  * &date=>YYYYMMDD.  Greater than the date, not inclusive of the date.

  * &date=>=YYYYMMDD.  Greater than or equal to the date, inclusive of the date.

When searching with multiple dates, the dates must compose a closed range. The order that the bounds are provided in does not matter. Some examples of date range searches are below.

* &date=>YYYYMMDD&date=<YYYYMMDD.  Between date and date, not inclusive of either.

* &date=>=YYYYMMDD&date=<=YYYYMMDD.  Between date and date, inclusive of both.

* &date=>YYYYMMDD&date=<=YYYYMMDD.  Between date and date, inclusive of the high date, exclusive of the low date.

* &date=>=YYYYMMDD&date=<YYYYMMDD.  Between date and date, exclusive of the high date, inclusive of the low date.

* An example of an invalid range: &date=>20160101&date=<=20150601. This set of query parameters represents two date ranges of dates less than June 2015 and dates greater than or equal to January 2016. These invalid date ranges will be returned in the response to indicate that there was an issue with the date search.

## Bundle Message Extension

The URL for this custom extension is defined as `http://cerner.hs.fhir.com/StructureDefinition/bundle-result-messages`

ID                                | Value\[x] Type      | Description
----------------------------------|---------------------|----------------------------------------------------------------------------------
`bundle-result-messages`          | [`extension`]       | This is a [complex extension] that will be returned in a bundle, see sub-extensions below. This is used to communicate additional information about a search response.
`bundle-result-messages/Severity` | [`string`]          | This can be `info` or `warning` to describe the severity of the message.
`bundle-result-messages/Code`     | [`string`]          | The codified representation of the message.
`bundle-result-messages/Message`  | [`string`]          | The detailed message for this result.

### Example
 
<%= json(:SOARIAN_CUSTOM_EXTENSION) %>


## Pagination

The pagination [links](#secure-sandbox) are included in the Bundle when a resource returns more items than the Bundle page size. It is important to follow these Link header values instead of constructing your own URLs.

<%= json(:SOARIAN_FHIR_LINK) %>

The possible `relation` values are:

Name                                                 | Description
-----------------------------------------------------|-----------------------------------------------------
`self`                                               | Shows the URL of the current page of results.
`next`                                               | Shows the URL of the immediate next page of results.
`previous`                                           | If paging, shows the URL of the previous page of results.


## Common Errors

Descriptions of common errors can be found [here](./common-errors).


[`extension`]: http://hl7.org/fhir/dstu2/extensibility.html
[`string`]: http://hl7.org/fhir/dstu2/datatypes.html#string
[complex extension]: http://hl7.org/fhir/dstu2/extensibility.html