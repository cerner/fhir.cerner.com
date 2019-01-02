---
title: STU 3
layout: api
---

# Overview

This describes the resources that make up Soarian Financials's implementation of the HL7<sup>®</sup> FHIR<sup>®</sup> standard.

* TOC
{:toc}

## Current Version

Soarian Financials's implementation currently supports the STU 3 version of the FHIR<sup>®</sup> standard.

## Schema

All API access is over HTTPS. See [Service Root URL](#service-root-url) for more information on URL format.
All data is sent and received as JSON.

Blank fields are omitted.

All timestamps are returned in [FHIR<sup>®</sup> standard date/dateTime formats](http://www.hl7.org/implement/standards/fhir/dstu2/datatypes.html#date).

## Service Root URL

URLs for the FHIR server vary by the tenant (datasource or client) being accessed, as well as other factors. If the
application is a SMART application, the [service root url](http://hl7.org/fhir/stu3/http.html#general) is provided at
launch time. For standalone applications, the URL can be requested (or configured) when the application is set up to run
 against a specific tenant. FHIR calls will be made against URLs of the following format:

`:serviceRootURL/:resource[?:parameters]`

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


## Client Errors

There are seven possible types of client errors on API calls that
receive request bodies:

1. Failing to send a required query parameter will result in a `400 Bad Request` response.

        HTTP/1.1 400 Bad Request

        no supported search parameters provided

2. Requesting the secure endpoint (non-`open`) without valid credentials will result in a `401 Unauthorized`
   response.

        HTTP/1.1 401 Unauthorized

3. Requesting a resource which does not exist will result in a `404 Not Found` response.

        HTTP/1.1 404 Not Found

4. Requested a media type other than JSON will result in a `406 Not Acceptable` response.

        HTTP/1.1 406 Not Acceptable
        Content-Length: 0

5. Performing an add or update with syntactically correct JSON body which is invalid according to business rules will result in a `422 Unprocessable Entity` response.

        HTTP/1.1 422 Unprocessable Entity


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

2. Missing fields required by HL7 profiles such as [US Core](https://www.hl7.org/fhir/us/core/) (STU 3) will result in a [DataAbsentReason](http://hl7.org/fhir/STU3/extension-data-absent-reason.html).

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

We have an endpoint secured with [OAuth 2.0](http://oauth.net/2/).
Refer to the extensions on the `Conformance.rest.security` element in our server [metadata](conformance/).

Each resource interaction documents the type of authentication acceptable (patient, provider, and/or system). While an
interaction may list system authentication, this is currently available only in sandbox for beta testing and is not available in production yet.

Please reference the <a href="/authorization/">authorization</a> documentation for details on how to authorize with our server.

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
