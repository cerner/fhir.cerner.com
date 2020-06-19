---
title: DSTU 2
layout: api
---

# DSTU 2 Overview

* TOC
{:toc}

## Schema

All API access is over HTTPS. See [Service Root URL](#service-root-url) for more information on URL format.
All data is sent and received as JSON.

<pre class="terminal">
$ curl -i -H "Accept: application/json+fhir" https://fhir-open.sandboxcerner.com/dstu2/0b8a0111-e8e6-4c26-a91c-5069cbc6b1ca/metadata
HTTP/1.1 200 OK
Date: Tue, 05 Jan 2016 20:02:23 GMT
cache-control: no-cache
vary: Origin,User-Agent
strict-transport-security: max-age=631152000
server-response-time: 6003.4422970000005
x-xss-protection: 1; mode=block
x-request-id: 637dd651-6943-4d45-8e8a-0577da7640a2
x-runtime: 6.003411
x-frame-options: SAMEORIGIN
x-content-type-options: nosniff
Status: 200 OK
Content-Type: application/json+fhir; charset=utf-8
Transfer-Encoding: chunked

{
  "resourceType": "Conformance",
  "text": {
    "status": "generated",
    "div": "&lt;div>Generated Conformance Statement&lt;/div>"
  },
  "url": "https://fhir-open.sandboxcerner.com/dstu2/0b8a0111-e8e6-4c26-a91c-5069cbc6b1ca/metadata",
  "name": "Cerner Conformance Statement",
  "status": "draft",
  "publisher": "Cerner",
  "date": "2015-12-03T00:00:00+00:00",
  "description": "Describes capabilities of this server",
  "kind": "instance",
  "fhirVersion": "1.0.2",
  "acceptUnknown": "no",
  "format": [
    "json"
  ],
  "rest": [
    {
      "mode": "server",
      "documentation": "All the functionality defined in FHIR",
      "security": {
        "cors": true
      },
      "resource": [
        {
          "type": "AllergyIntolerance",
          "interaction": [
            {
              "code": "read"
            },
            {
              "code": "search-type"
            }
          ],
          "searchParam": [
            {
              "name": "_id",
              "type": "token",
              "documentation": "A single or comma separated list of AllergyIntolerance ids. It is a required field if patient field is not given"
            },
            {
              "name": "patient",
              "type": "reference",
              "documentation": "Who the sensitivity is for. It is a required field if _id field is not given"
            },
            {
              "name": "status",
              "type": "token",
              "documentation": "Certainty of the allergy or intolerance"
            }
          ]
        },
        {
          "type": "Condition",
          "interaction": [
            {
              "code": "read"
            },
            {
              "code": "search-type"
            }
          ],
          "searchParam": [
            {
              "name": "_id",
              "type": "token",
              "documentation": "A single or comma separated list of Condition ids. It is a required field if patient field is not given"
            },
            {
              "name": "patient",
              "type": "reference",
              "documentation": "The patient who has the condition. It is a required field if _id field is not given"
            },
            {
              "name": "clinicalstatus",
              "type": "token",
              "documentation": "A list of desired clinical statuses of the condition"
            },
            {
              "name": "category",
              "type": "token",
              "documentation": "The category of the condition"
            }
          ]
        },
        {
          "type": "Device",
          "interaction": [
            {
              "code": "read"
            },
            {
              "code": "search-type"
            }
          ],
          "searchParam": [
            {
              "name": "patient",
              "type": "reference",
              "documentation": "The patient who has the device affixed. It is a required field if _id field is not given"
            },
            {
              "name": "_id",
              "type": "token",
              "documentation": "A single or comma separated list of Device ids. It is a required field if patient field is not given"
            }
          ]
        },
        {
          "type": "DocumentReference",
          "interaction": [
            {
              "code": "search-type"
            }
          ],
          "searchParam": [
            {
              "name": "patient",
              "type": "reference",
              "documentation": "The patient the document is about"
            },
            {
              "name": "type",
              "type": "token",
              "documentation": "The type of the document"
            }
          ]
        },
        {
          "type": "MedicationOrder",
          "interaction": [
            {
              "code": "search-type"
            }
          ],
          "searchParam": [
            {
              "name": "patient",
              "type": "reference",
              "documentation": "The identity of a patient to list dispenses for. It is a required field"
            },
            {
              "name": "status",
              "type": "token",
              "documentation": "The status of the med, may be a list separated by commas. (Active and draft statuses must be queried separately from completed, on-hold, and stopped statuses. The superseded and entered-in-error statuses are not supported). It is a required field"
            },
            {
              "name": "timing-boundsperiod-end",
              "type": "date",
              "documentation": "The stop time of the order. Must be prefixed by 'le' (currently only support querying for orders completed prior to a certain time). Not accepted when querying active or draft orders"
            },
            {
              "name": "_count",
              "type": "number",
              "documentation": "The number of items to include in a page. Currently ignored if querying for active or draft statuses"
            }
          ]
        },
        {
          "type": "MedicationStatement",
          "interaction": [
            {
              "code": "search-type"
            }
          ],
          "searchParam": [
            {
              "name": "patient",
              "type": "reference",
              "documentation": "The identity of a patient to list statements for. It is a required field."
            },
            {
              "name": "status",
              "type": "token",
              "documentation": "One or more medication statement status values separated by commas."
            },
            {
              "name": "effectivedate",
              "type": "date",
              "documentation": "The date-time which should fall within the period the patient was taking (or not taking) the medication. Must be prefixed by 'ge'."
            },
            {
              "name": "_count",
              "type": "number",
              "documentation": "The maximum number of results to include in a page."
            }
          ]
        },
        {
          "type": "Patient",
          "interaction": [
            {
              "code": "read"
            },
            {
              "code": "search-type"
            }
          ],
          "searchParam": [
            {
              "name": "_id",
              "type": "token",
              "documentation": "The logical resource id associated with the resource (must be supported by all servers). It is a required field if no birthdate, identifier, name or telecom field is given"
            },
            {
              "name": "birthdate",
              "type": "date",
              "documentation": "The patient's date of birth. It is a required field if no _id, identifier, name or telecom field is given"
            },
            {
              "name": "identifier",
              "type": "token",
              "documentation": "A patient identifier. It is a requried field if no _id, birthdate, name or telecom field is given"
            },
            {
              "name": "name",
              "type": "string",
              "documentation": "A portion of either family or given name of the patient. It is a required field if no _id, birthday, identifier or telecom field is given"
            },
            {
              "name": "telecom",
              "type": "string",
              "documentation": "The value in any kind of telecom details of the patient. It is a required field if no _id, birthdate, identifier or name is given"
            },
            {
              "name": "_count",
              "type": "number",
              "documentation": "The maximum number of results to return"
            }
          ]
        }
      ]
    }
  ]
}
</pre>

Blank fields are omitted.

All timestamps are returned in [FHIR<sup>®</sup> standard date/dateTime formats](http://www.hl7.org/implement/standards/fhir/dstu2/datatypes.html#date).

### Media Types

Cerner supports the FHIR<sup>®</sup> standard defined media types for JSON content:

    application/json+fhir
    application/json

We encourage you to explicitly request one of these types via the `Accept` header.

## Service Root URL

URLs for the FHIR server vary by the tenant (datasource or client) being accessed, as well as other factors. If the
application is a SMART application, the [service root url](http://hl7.org/fhir/dstu2/http.html#general) is provided at
launch time. For standalone applications, the URL can be requested (or configured) when the application is set up to run
 against a specific tenant. FHIR calls will be made against URLs of the following format:

`:serviceRootURL/:resource[?:parameters]`

### Open Sandbox

The open sandbox instance allows developers to experiment with the service without requiring
authentication. We recommend using this endpoint for initial proof of concepts and integration. The service root URL for
this instance is: `https://fhir-open.sandboxcerner.com/dstu2/0b8a0111-e8e6-4c26-a91c-5069cbc6b1ca/:resource[?:parameters]`

Note: The open endpoint exposes read-only resources. No writes are available in sandbox without using authentication.

### Secure Sandbox

The secure sandbox instance can be used for testing an application with [authorization](#authorization). The service
root URL for this instance is different if the patient or a patient's proxy is logging in.

Non-Patient: `https://fhir-ehr.sandboxcerner.com/dstu2/0b8a0111-e8e6-4c26-a91c-5069cbc6b1ca/:resource[?:parameters]`
Patient Access: `https://fhir-myrecord.sandboxcerner.com/dstu2/0b8a0111-e8e6-4c26-a91c-5069cbc6b1ca/:resource[?:parameters]`


### Resource

`:resource` represents the FHIR<sup>®</sup> standard resource to access. Example: <a href="/millennium/dstu2/individuals/patient/">`Patient`</a>

### Parameters

Many API methods take optional parameters. For GET requests, any parameters not
specified as a segment in the path can be passed as an HTTP query string
parameter:

<pre class="terminal">
$ curl -i -H "Accept: application/json+fhir" "https://fhir-open.sandboxcerner.com/dstu2/0b8a0111-e8e6-4c26-a91c-5069cbc6b1ca/MedicationOrder?patient=2744010&status=active"
</pre>

In this example, MedicationOrder is the FHIR<sup>®</sup> standard resource being accessed, while `patient` and `status`
 are passed in the query string.

### Resource Identity

 Please note that no ids or identifiers in the Millennium EHR are intended to be used outside of the context of their complete URL. A complete URL is comprised of the [service root url](http://hl7.org/fhir/dstu2/http.html#general), the resource, and the parameters (if any).

 For example, one must take into account the entire url and not simply the id or resource + id:

     https://fhir-open.sandboxcerner.com/dstu2/0b8a0111-e8e6-4c26-a91c-5069cbc6b1ca/Patient/1316024

 In another context the id "Patient/1316024" may identify another person entirely. In the following example a different resource may be returned because the context (service root url) has changed.

     https://fhir-open.sandboxcerner.com/dstu2/d075cf8b-3261-481d-97e5-ba6c48d3b41f/Patient/1316024

 Similarly when considering an identifier one must consider it only in its full context. Even though some identifiers may exist across multiple systems (ex: MRN) it is not guaranteed that they will refer to the same resource.

     https://fhir-open.sandboxcerner.com/dstu2/0b8a0111-e8e6-4c26-a91c-5069cbc6b1ca/Patient?identifier=urn:oid:1.1.1.1.1.1|10002700

 For example, when using the above MRN in a different system, we are not guaranteed that the same Patient resource is returned in the response bundle:

     https://fhir-open.sandboxcerner.com/dstu2/d075cf8b-3261-481d-97e5-ba6c48d3b41f/Patient?identifier=urn:oid:1.1.1.1.1.1|10002700

## Common Application Errors

Please visit our list of [common issues](/millennium/faq/common-issues) on our [FAQ](/millennium/faq) page to be aware of the common issues we've identify when validating apps to run on our platform.

## Client Errors

There are seven possible types of client errors on API calls that
receive request bodies:

1. Failing to send a required query parameter will result in a `400 Bad Request` response.

        HTTP/1.1 400 Bad Request

        no supported search parameters provided

2. Requesting the secure endpoint (non-`open`) without valid credentials will result in a `401 Unauthorized`
   response.

        HTTP/1.1 401 Unauthorized

3. Requesting data from an unknown instance or an instance where the application is not authorized will result in a `403 Forbidden` response.

        HTTP/1.1 403 Forbidden

        Tenant not valid or accessible

4. Requesting a resource which does not exist will result in a `404 Not Found` response.

        HTTP/1.1 404 Not Found

5. Requested a media type other than JSON will result in a `406 Not Acceptable` response.

        HTTP/1.1 406 Not Acceptable
        Content-Length: 0

6. Performing an update with an out-of-date version id will result in a `409 Conflict Error` response.

        HTTP/1.1 409 Conflict Error

7. Performing an add or update with syntactically correct JSON body which is invalid according to business rules will result in a `422 Unprocessable Entity` response.

        HTTP/1.1 422 Unprocessable Entity

## Operation Outcomes

An [OperationOutcome](https://www.hl7.org/fhir/DSTU2/operationoutcome.html) may be returned to provide additional context to an error.  The tables below describes common OperationOutcomes and their causes.  

### Retrieve/Search

 HTTP Status | Cause                                | Severity  | Code
-------------|--------------------------------------|-----------|---------------
 500         | Response is missing a required field | fatal     | required

### Create/Update

 HTTP Status | Cause                                | Severity  | Code
-------------|--------------------------------------|-----------|---------------
 422         | Body contained unsupported fields    | error     | business-rule
 422         | Body contained modifier extensions   | error     | extension
 422         | Body contained implicit rules        | error     | not-supported

## Handling Required Fields

1. Missing fields required by the HL7 FHIR<sup>®</sup> specification or any missing status field will result in a `500 Internal Server Error` and an [OperationOutcome](https://www.hl7.org/fhir/DSTU2/operationoutcome.html).

        {
          "resourceType": "OperationOutcome",
          "issue": [
            {
              "severity": "fatal",
              "code": "required",
              "location": [
                "/f:AllergyIntolerance/f:status"
              ]
            }
          ]
        }    

2. Missing fields required by HL7 profiles such as [Argonaut](http://argonautwiki.hl7.org/index.php?title=Implementation_Guide) (DSTU 2) or [US Core](https://www.hl7.org/fhir/us/core/) (STU 3) will result in a [DataAbsentReason](http://hl7.org/fhir/DSTU2/extension-data-absent-reason.html).

        {
          "coding": [
            {
              "extension": [
                {
                  "url": "http://hl7.org/fhir/StructureDefinition/data-absent-reason",
                  "valueCode": "unknown"
                }
              ]
            }
          ]
        }

3. Patient consumers requesting a resource with a status of entered-in-error may result in a [DataAbsentReason](http://hl7.org/fhir/DSTU2/extension-data-absent-reason.html).

        {
          "coding": [
            {
              "extension": [
                {
                  "url": "http://hl7.org/fhir/StructureDefinition/data-absent-reason",
                  "valueCode": "masked"
                }
              ]
            }
          ]
        }

4. Missing [Coding](https://www.hl7.org/fhir/DSTU2/datatypes.html#codesystem) or [CodeableConcept](https://www.hl7.org/fhir/datatypes.html#codeableconcept) fields with a required value set binding will result in a [DataAbsentReason](http://hl7.org/fhir/DSTU2/extension-data-absent-reason.html), though it may return a text component.

        {
          "coding": [
            {
              "extension": [
                {
                  "url": "http://hl7.org/fhir/StructureDefinition/data-absent-reason",
                  "valueCode": "unknown"
                }
              ]
            }
          ],
          "text": "Auth (Verified)"
        }

## Filtered Data for Patient or Proxy Access

When accessing data with a patient persona, some data may be filtered as compared to system or provider access.
Resources with a status of “entered-in-error” will result in either some fields being filtered or returned with a
[data absent reason](#handling-required-fields) with a valueCode of masked.  Fields that may contain
sensitive information will be filtered such as non-instructional notes. For proxy users, regulatory laws or policies
may restrict parental or guardian access to adolescent health records and these regulations vary from state to state.

## General Security Filtering

Not all data can be accessed by all applications or users. Encounter or organization security, privileges, and
preference may filter data based on the build in the domain.

## HTTP Verbs

Where possible, the FHIR<sup>®</sup> standard strives to use appropriate HTTP verbs for each action.

 Verb   | Description
--------|--------------------------------
 `GET`  | Used for retrieving resources.
 `POST` | Used for creating resources.
 `PUT`  | Used for updating resources.

## Authorization

We have an endpoint secured with [OAuth 2.0](http://oauth.net/2/) with support for [SMART Applications](http://docs.smarthealthit.org/).
Refer to the extensions on the `Conformance.rest.security` element in our server [metadata](conformance/).

Each resource interaction documents the type of authentication acceptable (patient, provider, and/or system). While an
interaction may list system authentication, this is currently available only in sandbox for beta testing and is not available in production yet.

Please reference the <a href="/authorization/">authorization</a> documentation for details on how to authorize with our server.

## Pagination

The pagination links are included in the Bundle when a resource returns more items than the Bundle page size. It is important to
follow these Link header values instead of constructing your own URLs.

    {
      "resourceType": "Bundle",
      "id": "f22ca456-19a7-45ce-8586-0079495783ef",
      "type": "searchset",
      "link": [{
        "relation": "self",
        "url": "https://fhir-open.sandboxcerner.com/dstu2/0b8a0111-e8e6-4c26-a91c-5069cbc6b1ca/Observation?subject%3APatient=1316024&_count=50"
      }, {
        "relation": "next",
        "url": "https://fhir-open.sandboxcerner.com/dstu2/0b8a0111-e8e6-4c26-a91c-5069cbc6b1ca/Observation?subject%3APatient=1316024&pageContext=35d95fe0-03bf-426c-bc35-2533f7fde4eb&direction=NEXT"
      }], ...
    }  

The possible `relation` values are:

 Name       | Description
------------|------------------------------------------------------
 `self`     | Shows the URL of the current page of results.
 `next`     | Shows the URL of the immediate next page of results.
 `previous` | If paging, shows the URL of the previous page of results.


### Concurrency

<%= data_currency %>

## Cross Origin Resource Sharing

The API supports Cross Origin Resource Sharing (CORS) for AJAX requests from
any origin.
You can read the [CORS W3C Recommendation](http://www.w3.org/TR/cors), or
[this intro](http://code.google.com/p/html5security/wiki/CrossOriginRequestSecurity) from the
HTML 5 Security Guide.

Here's a sample request sent from the origin `http://example.com`:

<pre class="terminal">
$ curl -i -H "Origin: http://example.com" -H "Accept: application/json+fhir" https://fhir-open.sandboxcerner.com/dstu2/0b8a0111-e8e6-4c26-a91c-5069cbc6b1ca/metadata
HTTP/1.1 200 OK
Access-Control-Allow-Origin: http://example.com
Access-Control-Allow-Methods: DELETE, GET, POST, PUT, OPTIONS, HEAD
Access-Control-Max-Age: 0
Access-Control-Allow-Credentials: true
</pre>

This is what a CORS preflight request looks like:

<pre class="terminal">
$ curl -X OPTIONS -i -H "Origin: http://example.com" https://fhir-open.sandboxcerner.com/dstu2/0b8a0111-e8e6-4c26-a91c-5069cbc6b1ca/metadata
HTTP/1.1 204 No Content
Access-Control-Allow-Origin: http://example.com
Access-Control-Allow-Methods: DELETE, GET, POST, PUT, OPTIONS, HEAD
Access-Control-Max-Age: 0
Access-Control-Allow-Credentials: true
</pre>
