---
title: STU 3
layout: api
---

# Overview

This describes the resources that make up Soarian Financials's implementation of the HL7<sup>®</sup> FHIR<sup>®</sup> standard.

* TOC
{:toc}

## Current Version

Soarian Financials's implementation currently supports the STU 3 (3.0.1) version of the FHIR<sup>®</sup> standard.

## Schema

All API access is over HTTPS. See [Service Root URL](#service-root-url) for more information on URL format.
All data is sent and received as JSON.

Blank fields are omitted.

All timestamps are returned in FHIR<sup>®</sup> standard [date] or [dateTime] formats.

## Service Root URL

URLs for the FHIR<sup>®</sup> server vary by the tenant (datasource or client) being accessed, as well as other factors. If the
application is a SMART application, the [service root url](http://hl7.org/fhir/stu3/http.html#general) is provided at
launch time. For standalone applications, the URL can be requested (or configured) when the application is set up to run
 against a specific tenant. FHIR calls will be made against URLs of the following format:

`:serviceRootURL/:resource[?:parameters]`

### Resource

`:resource` represents the FHIR<sup>®</sup> standard resource to access. Example: <a href="/soarian-financials/stu3/individuals/patient/">`Patient`</a>


### Resource Identity

Please note that no ids or identifiers in Soarian Financials are intended to be used outside of the context of their complete URL. A complete URL is comprised of the [service root URL](http://hl7.org/fhir/stu3/http.html#general), the resource, and the parameters (if any).

For example, one must take into account the entire URL and not simply the id or resource + id:

    https://sfet-nprodnstg.dm50.dev.smed.net/sf-qa1451/dynamic/services/regsched/stu3/v1/patient/1316024

In another context the id "Patient/1316024" may identify another person entirely. In the following example a different resource may be returned because the context (service root URL) has changed.

    https://sfet-nprodnstg.dm50.dev.smed.net/sf-qa1692/dynamic/services/regsched/stu3/v1/patient/1316024

## Client Errors

There are seven possible types of client errors on API calls that receive request bodies:

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

## Operation Outcomes

An [OperationOutcome](https://www.hl7.org/fhir/stu3/operationoutcome.html) may be returned to provide additional context to an error.  The tables below describes common OperationOutcomes and their causes.  

### Retrieve/Search

 HTTP Status | Cause                                | Severity  | Code
-------------|--------------------------------------|-----------|---------------
 500         | System Error                         | fatal     | required

### Create/Update

 HTTP Status | Cause                                | Severity  | Code
-------------|--------------------------------------|-----------|---------------
 422         | Body contained modifier extensions   | error     | extension
 422         | Body contained implicit rules        | error     | not-supported

## Handling Required Fields

1. Missing fields required by the HL7 FHIR<sup>®</sup> specification or any missing status field will result in a `500 Internal Server Error` and an [OperationOutcome](https://www.hl7.org/fhir/stu3/operationoutcome.html).

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

2. Missing fields required by HL7 profiles such as [US Core](https://www.hl7.org/fhir/us/core/) (STU 3) will result in a [DataAbsentReason](http://hl7.org/fhir/stu3/extension-data-absent-reason.html).

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

4. Missing [Coding](https://www.hl7.org/fhir/stu3/datatypes.html#codesystem) or [CodeableConcept](https://www.hl7.org/fhir/stu3/datatypes.html#codeableconcept) fields with a required value set binding will result in a [DataAbsentReason](http://hl7.org/fhir/stu3/extension-data-absent-reason.html), though it may return a text component.

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

[date]: http://www.hl7.org/implement/standards/fhir/stu3/datatypes.html#date
[dateTime]: http://www.hl7.org/implement/standards/fhir/stu3/datatypes.html#dateTime
