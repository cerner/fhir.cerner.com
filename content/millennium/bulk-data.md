---
title: Bulk Data Access
layout: api
---

# Bulk Data Access Overview

The Cerner Ignite APIs for Millennium with Bulk Data Access provides system applications the ability to access large volumes of core clinical data for a group of individuals in alignment with standards cited in 21st Century Cures Act regulations. 

FHIR Bulk data requests are executed against an organization's database asynchronously. When implementing an interface between a Cerner Millennium domain and a bulk data application, it is important that the queries inherent in the bulk data request capture only the data necessary for the application.

There are several factors that affect the amount of time it takes to complete a Bulk API export:

* The size of the population for which data was requested
* The number of resource types requested
* The time range of activity being requested
* Inherent latency due to network issues and effects from concurrent requests to the system

#### Example use cases

* Creating an internal clinical data warehouse for study purposes
* Machine learning applications obtaining training data from EHR
* Integration of population health system with an EHR system
* Data transfer to payer database for care quality assessment
* Submission to reportable disease (or other) registries

<!-- TOC -->
* TOC
{:toc}

## Implemented Exports

Cerner supports only the Group Export operation.

* [Group Export](/millennium/bulk-data/group-export/)

_Notes_

* Cerner supports v1.0.1 of the [FHIR Bulk Data Access (Flat FHIR) Implementation Guide](https://hl7.org/fhir/uv/bulkdata/STU1.0.1/) and supports several experimental parameters from [v2.0.0](http://hl7.org/fhir/uv/bulkdata/STU2/export.html#query-parameters). 

### Service Root URL

The FHIR Bulk Data server uses the [FHIR Base url](http://fhir.cerner.com/millennium/r4/#service-root-url) as the service root url.

### Media Types

For file retrievals, `application/fhir+ndjson` is supported. All other requests support `application/fhir+json`.

### Authorization

The bulk data endpoints are secured with [OAuth 2.0](http://oauth.net/2/) with support for [SMART Applications](http://docs.smarthealthit.org/). Refer to the extensions on the `Conformance.rest.security` element in our server [metadata](../r4/foundation/conformance).

Please reference the [authorization](https://fhir.cerner.com/authorization/) documentation for details on how to authorize with our server.

## Registering Client Applications

In order to be granted access to the Bulk Data Access API, a Millennium Bulk SMART application must be registered through Cerner's [code Console](http://fhir.cerner.com/smart/#code-console). See [Authorization](http://fhir.cerner.com/authorization/) for additional details on registering client applications and authorizing with the server.

In the case of Group Export, client application developers will need to work with healthcare organizations to identify the available Groups to be exported. Organizations can manage Groups within Ignite Management Tooling.

_Notes_

* Authentication is required, open endpoints do not support bulk export workflows.
* Bulk data runs against an organization's database and utilizes the same services running other applications, so it is important to consider performance. Bulk data exports large amounts of data for large groups of patients, which takes more time to complete the larger the data set or patient population.

### Sandbox

Testing can be done in sandbox for applications that have [authorization](http://fhir.cerner.com/authorization/).

`https://fhir-ehr-code.cerner.com/r4/ec2458f2-1e24-41c8-b71b-0e701af7583d`

## Client Errors

The following are the possible client errors that can be received on API calls:

1. Failing to send a required search parameter or sending a parameter with an invalid value will result in a `400 Bad Request` response.

        HTTP/1.1 400 Bad Request

2. Making a request without valid credentials will result in a `401 Unauthorized` response.

        HTTP/1.1 401 Unauthorized

3. Requesting data from an unknown instance or an instance where the application is not authorized will result in a `403 Forbidden` response.

        HTTP/1.1 403 Forbidden

4. Requesting a resource which does not exist will result in a `404 Not Found` response.

        HTTP/1.1 404 Not Found

5. Requesting a media type other than JSON will result in a `406 Not Acceptable` response.

        HTTP/1.1 406 Not Acceptable

        Content-Length: 0

6. Performing an export kick off using unsupported search parameter values

        HTTP/1.1 422 Unprocessable Entity

### Lenient Workflow

When the optional header of `Prefer: handling=lenient` is passed to the export kick off request, any unknown or unsupported parameters will be ignored as specified in the [v.2.0.0 FHIR Bulk Data Access (Flat FHIR) Implementation Guide](http://hl7.org/fhir/uv/bulkdata/STU2/export.html), and the request will be processed instead of returning an error.

## OperationOutcomes

An [OperationOutcome](https://www.hl7.org/fhir/r4/operationoutcome.html) may be returned to provide additional context to an error. The table below describes common OperationOutcomes and their causes.

 HTTP Status | Cause                                                                                         | Severity  | Code
-------------|-----------------------------------------------------------------------------------------------|-----------|---------------
 400         | The request has an invalid search parameter or a parameter with an invalid value              | error     | invalid
 401         | Invalid credentials were sent in the request                                                  | error     | login, expired
 403         | The client is not authorized to access the information                                        | error     | forbidden
 404         | The resource being requested cannot be found                                                  | error     | not-found
 406         | The value supplied to the `Accept` header is not supported                                    | error     | invalid
 429         | Too many requests have been sent                                                              | error     | throttled
 500         | An internal error occurred                                                                    | fatal     | exception

