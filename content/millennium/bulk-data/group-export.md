---
title: Group Export | R4 API
---

# Group Export

<%= beta_tag %>

* TOC
{:toc}

## Overview

The Group Export operation is available for testing in the public sandbox, but is not generally available for use in client production environments.

The Group Export operation is used to obtain FHIR resources for all members of a specified group of patients.

An export process uses the [FHIR Asynchronous Request Pattern](https://hl7.org/fhir/R4/async.html) to kick off the export job for a group of patients. Once the export job is kicked off, the status of the job may be checked using the URL returned in the `Content-Location` header from the kick off response. Once the job is complete, the status request returns a list of file URLs which may be called to download the content of the file. After the appropriate ndjson files are downloaded, the delete request should be called to clean up the no longer needed files.

The Group Export operation exports resources required for [United States Core Data for Interoperability V1 (USCDI)](https://www.healthit.gov/isa/united-states-core-data-interoperability-uscdi). For a full list of resources see the [US Core Profiles](http://hl7.org/fhir/us/core/STU4/general-guidance.html#us-core-data-for-interoperability). When the `_type` parameter is used it returns only the FHIR resources specified. The `_type` parameter should be used to filter the resources required for a specific use case. Limiting the number of requested resources in the `_type` parameter is recommended as it can decrease response times.

### Recommendations

* Use the `_type` parameter whenever possible to improve response time and minimize storage requirements. `_typeFilter` may also be used to further refine the results to be returned.
* Use the `_since` parameter to limit the export to only the relevant date range.
* Clients should follow an Exponential Backoff approach when polling for status as outlined in the [FHIR Bulk Data Access IG](https://hl7.org/fhir/uv/bulkdata/STU1.0.1/export/index.html#bulk-data-status-request).
* Files should be retrieved promptly as the exported content will expire after 30 days.
* Once the files have been retrieved, use the delete request to clean up the data from your request.

## Kick Off Request

Kicks off a bulk export request for a group of patients:

    GET <FHIR Base>/Group/<group_id>/$export

Operation is defined at:

    GET https://fhir-ehr-code.cerner.com/r4/OperationDefinition/group-export?_format=json

_Implementation Notes_

* Bulk data export requests do not currently honor the Accept-Language header; 'en-US' will be used.
* Only one bulk export request for a client application and tenant combination may be in-progress at a single time.

### Authorization Types

<%= authorization_types(provider: false, patient: false, system: true) %>

_Notes_

* The authorization token does NOT require the `Group.read` scope.
* The authorization token must contain system read scopes for all resources requested in the `_type` parameter.

### Parameters

Name                    | Required? | Type        | Description
------------------------|-----------|-------------|---------------------------------------------------------------------------------------------------
`_type`                 | No        | [`string`]  | A string of comma-delimited FHIR resource types. Example: `_type=Patient,Encounter,Location`
`_typeFilter`           | No        | [`string`]  | A string of comma-delimited FHIR Rest queries provided in combination with `_type`. Example: `_typeFilter=Condition?clinical-status=active,Encounter?status=planned`
`_since`                | No        | [`instant`] | Resources updated after this time will be included in the response. Example: `2021-03-18T19:19:42.000Z`
`includeAssociatedData` | No        | [`string`]  | When provided, the group export will return or omit a pre-defined set of FHIR resources associated with the request. A string of comma-delimited values. Example: `includeAssociatedData=LatestProvenanceResources`
`_outputFormat`         | No        | [`string`]  | The format for the requested bulk data files to be generated. Example: `_outputFormat=application/ndjson`

_Notes_

* `_type` valid values are `AllergyIntolerance`, `CarePlan`, `CareTeam`, `Condition`, `Device`, `DiagnosticReport`, `DocumentReference`, `Encounter`, `Goal`, `Immunization`, `Location`, `MedicationRequest`, `Patient`, `Procedure`, `Observation`, `Organization`, `Practitioner`, `Provenance`.
* When the `_type` parameter contains a reference resource (`Location`, `Organization`, `Practitioner`) or associated resource (`Provenance`), at least one of the following resources must also be provided: `AllergyIntolerance`, `CarePlan`, `CareTeam`, `Condition`, `Device`, `DiagnosticReport`, `DocumentReference`, `Encounter`, `Goal`, `Immunization`, `MedicationRequest`, `Observation`, `Patient`, `Procedure`.
* When the `_type` parameter is not provided, the resources to be exported will be determined by the scopes provided in the authorization token.
* When the `_typeFilter` parameter is provided, the `_type` parameter MUST be provided as well and must only have queries for the resources provided in `_type`.
* `_typeFilter` does not support queries for the following resources: `Location`, `Organization`, `Patient`, `Practitioner`, `Provenance`.
* `_typeFilter` supports queries with the search parameters supported for the [R4](/millennium/r4) resources with the exception of the following search parameters: `_count`, `_contained`, `_containedType`, `_elements`, `_id`, `_include`, `_lastUpdated`, `_revinclude`, `_sort`, `_summary`, `_total`, `encounter`, `identifier`, `patient`, `subject`.
* Supplying `_typeFilter` with the same resource multiple times is not supported.
* `includeAssociatedData` valid parameters are `LatestProvenanceResources` and `RelevantProvenanceResources`.
* `_outputFormat` valid parameters are `application/fhir+ndjson`, `application/ndjson`, `ndjson`.
* `_outputFormat` defaults to `application/fhir+ndjson` when not provided.
* The following experimental parameters are not supported: `_elements`, `patient`.

_Provenance Behavior_

* Provenances for `Location`, `Organization`, and `Practitioner` will not be exported.
* When the `_type` parameter is not provided and the authorization token includes the Provenance read scope, all relevant Provenance resources associated with each of the non-provenance resources will be exported by default. You MAY use the `includeAssociatedData` parameter to export only the latest provenance.
* When the `_type` parameter is provided with specific resources and includes Provenance, all relevant Provenance resources associated with each of the non-provenance resources will be exported by default.
* When both the `includeAssociatedData` parameter and the `_type` parameter are provided, the `_type` parameter MUST include `Provenance`.

### Headers

<%= headers head: {'Accept': 'application/fhir+json', 'Prefer': 'respond-async', Authorization: '&lt;OAuth2 Bearer Token>'}, relative_position: 1 %>

Optional Header

<%= headers head: {'Prefer': 'handling=lenient'} %>

When the Prefer: handling=lenient header is provided any unknown or unsupported parameters will be ignored as specified [here](http://hl7.org/fhir/uv/bulkdata/STU2/export.html#query-parameters).

### Example

Request

    GET https://fhir-ehr-code.cerner.com/r4/ec2458f2-1e24-41c8-b71b-0e701af7583d/Group/11ec-d16a-c763b73e-98e8-a31715e6a2bf/$export

Response

    Status: 202 Accepted
    Content-Location: https://fhir-ehr-code.cerner.com/r4/ec2458f2-1e24-41c8-b71b-0e701af7583d/bulk-export/jobs/<job_id>

<%= disclaimer %>

### Errors

The common [errors] and [OperationOutcomes] may be returned. Below are additional errors that may be returned:

 HTTP Status | Cause                                                                      							 | Severity | Code
-------------|-------------------------------------------------------------------------------------------------------|----------|-----------
 400         | `includeAssociatedData`, `_outputFormat`, `_since`, and `_type` contain invalid or unsupported values | error    | invalid
 400         | The resources provided in `_typeFilter` do not match the resources supplied in `_type`                | error    | invalid
 400         | `_typeFilter` contains multiple queries for the same resource                                         | error    | invalid
 400         | Unsupported parameters are passed to the export request                                               | error    | invalid
 422         | `_typeFilter` is provided with an invalid or unsupported value                                        | error    | invalid
 429         | There is already an export job in-progress for the client and tenant combination                      | error    | throttled

## Status Request

Checks the status of the export job.
Use the URL returned in the `Content-Location` header from the kick off request to retrieve the status of a bulk data export:

    GET  <URL from Content-Location header>

_Notes_

* Clients should follow an Exponential Backoff approach when polling for status as outlined in the [bulk data export specification.](https://hl7.org/fhir/uv/bulkdata/STU1.0.1/export/index.html#bulk-data-status-request)

### Authorization Types

<%= authorization_types(provider: false, patient: false, system: true) %>

_Notes_

* Scopes are not checked in this request. The authorization token must be valid, and the client in the token must match the client that requested the export.

### Headers

<%= headers head: {'Accept': 'application/fhir+json', Authorization: '&lt;OAuth2 Bearer Token>'}, relative_position: 1 %>

### Example

#### In-Progress Response

Request

    GET https://fhir-ehr-code.cerner.com/r4/ec2458f2-1e24-41c8-b71b-0e701af7583d/bulk-export/jobs/<job_id>

Response

    Status: 202 Accepted
    X-Progress: in-progress
    Retry-After: 600

#### Complete Response

Request

    GET https://fhir-ehr-code.cerner.com/r4/ec2458f2-1e24-41c8-b71b-0e701af7583d/bulk-export/jobs/<job_id>

Response

    Status: 200 OK
    Expires: Mon, 22 Jul 2025 23:59:59 GMT
    Content-Type: application/json

<%= json(:R4_BULK_EXPORT_COMPLETE) %>

<%= disclaimer %>

### Errors

The common [errors] and [OperationOutcomes] may be returned.

## File Retrieval Request

Once an export is complete, the status request will return file URLs which may be used to download the exported resources.

    GET <File URL from status response>

_Implementation Notes_

* The file retrieval request returns a '307 Temporary Redirect' with a 'Location' header, the Location header must be followed in order to download the file
* An exported ndjson file contains only a single resource type and there can be multiple files for the same resource type. There is no limit number of resources per file. An exported file has a max size of 50 MB when gzip compressed.
* Files should be retrieved promptly, as they will expire after 30 days.
* The initial file retrieval request requires the Authorization header to be sent; when following the re-direct, it is no longer appropriate. Ensure the Authorization header is not perpetuated.

_Retrieval of Attachments_

* [Binary](/millennium/r4/foundation/other/binary) resources are not returned by bulk data operations.
* Attachment references must be retrieved separately using the [Binary](/millennium/r4/foundation/other/binary) resource URL from the DocumentReference.content.attachment and DiagnosticReport.presentedForm fields from the export files.

### Authorization Types

<%= authorization_types(provider: false, patient: false, system: true) %>

_Notes_

* The authorization token must contain the system read scope for the resource that the export file contains, and the client in the token must match the client that requested the export.

### Headers

<%= headers head: {Authorization: '&lt;OAuth2 Bearer Token>', Accept: 'application/fhir+ndjson'}, relative_position: 1 %>

### Example

Request

    GET https://fhir-ehr-code.cerner.com/r4/ec2458f2-1e24-41c8-b71b-0e701af7583d/bulk-export/files/<file_id>

Response

    Status: 307 Temporary Redirect
    Location: https://cerner-opensvc-bulkfhir-processed.s3.us-west-2.amazonaws.com

<%= disclaimer %>

### Example: Following the 307 Redirect

Request

    GET https://cerner-opensvc-bulkfhir-processed.s3.us-west-2.amazonaws.com

_Notes_

* When following the re-direct link from the `Location` header, an Authorization header should NOT be set as the url is pre-signed.
* Re-direct links are short-lived.
* Files are deleted 30 days after creation.

Response

    Status: 200 OK
    Content-Type: application/fhir+ndjson

<%= ndjson(:R4_BULK_EXPORT_FILE) %>

<%= disclaimer %>

### Errors

The common [errors] and [OperationOutcomes] may be returned.

## Delete Request

Use the URL returned in the `Content-Location` header from the kick off request to delete a bulk data export job (whether it's in-progress or complete) and any associated files:

    DELETE <URL from Content-Location header>

### Authorization Types

<%= authorization_types(provider: false, patient: false, system: true) %>

_Notes_

* Scopes are not checked in this request. The authorization token must be valid, and the client in the token must match the client that requested the export.

### Headers

<%= headers head: {'Accept': 'application/fhir+json', Authorization: '&lt;OAuth2 Bearer Token>'}, relative_position: 1 %>

### Example

Request

    DELETE https://fhir-ehr-code.cerner.com/r4/ec2458f2-1e24-41c8-b71b-0e701af7583d/bulk-export/jobs/<job_id>

Response

    Status: 202 Accepted

<%= disclaimer %>

### Errors

The common [errors] and [OperationOutcomes] may be returned.

## Testing in sandbox

In order to call bulk data endpoints in sandbox, you will need to kick off a group export using one of the group ids listed below and then perform the subsequent requests.

* Group with 3 patients: `11ec-d16a-c763b73e-98e8-a31715e6a2bf`
* Group with 10 patients: `11ec-d16a-b40370f8-9d31-577f11a339c5`

### Example

    GET https://fhir-ehr-code.cerner.com/r4/ec2458f2-1e24-41c8-b71b-0e701af7583d/Group/11ec-d16a-c763b73e-98e8-a31715e6a2bf/$export?_type=Patient

[errors]: ../../bulk-data#client-errors
[OperationOutcomes]: ../../bulk-data#operationoutcomes
[`string`]: https://hl7.org/fhir/R4/search.html#string
[`instant`]: https://hl7.org/fhir/R4/search.html#date
