---
title: ProcedureRequest | DSTU 2 API
---

# ProcedureRequest

* TOC
{:toc}

## Overview

The ProcedureRequest resource describes the request or order for a procedure or activity performed with or on a patient. This resource includes a wide range of requests including surgery procedures, diagnostic procedures, therapies, patient care activities, referrals, and consults. This resource does NOT include medication, dietary, and appointment requests. Due to the similarity and merging of resources in future FHIR versions, our current implementation of ProcedureRequest will include DiagnosticOrder and ReferralRequest.

The following fields are returned if valued:

* [Id](http://hl7.org/fhir/dstu2/resource-definitions.html#Resource.id){:target="_blank"}
* [Patient](http://hl7.org/fhir/DSTU2/procedurerequest-definitions.html#ProcedureRequest.subject){:target="_blank"}
* [Procedure](http://hl7.org/fhir/DSTU2/procedurerequest-definitions.html#ProcedureRequest.code){:target="_blank"}
* [Body site](http://hl7.org/fhir/DSTU2/procedurerequest-definitions.html#ProcedureRequest.bodySite){:target="_blank"}
* [Reason](http://hl7.org/fhir/DSTU2/procedurerequest-definitions.html#ProcedureRequest.reason_x_){:target="_blank"}
* [Scheduled for](http://hl7.org/fhir/DSTU2/procedurerequest-definitions.html#ProcedureRequest.scheduled_x_){:target="_blank"}
* [Patient encounter](http://hl7.org/fhir/DSTU2/procedurerequest-definitions.html#ProcedureRequest.encounter){:target="_blank"}
* [Performer](http://hl7.org/fhir/DSTU2/procedurerequest-definitions.html#ProcedureRequest.performer){:target="_blank"}
* [Status of the request](http://hl7.org/fhir/DSTU2/procedurerequest-definitions.html#ProcedureRequest.status){:target="_blank"}
* [Notes](http://hl7.org/fhir/DSTU2/procedurerequest-definitions.html#ProcedureRequest.notes){:target="_blank"}
* [As needed/PRN](http://hl7.org/fhir/DSTU2/procedurerequest-definitions.html#ProcedureRequest.asNeeded_x_){:target="_blank"}
* [Ordered date/time](http://hl7.org/fhir/DSTU2/procedurerequest-definitions.html#ProcedureRequest.orderedOn){:target="_blank"}
* [Ordered by](http://hl7.org/fhir/DSTU2/procedurerequest-definitions.html#ProcedureRequest.orderer){:target="_blank"}
* [Priority](http://hl7.org/fhir/DSTU2/procedurerequest-definitions.html#ProcedureRequest.priority){:target="_blank"}

## Terminology Bindings

<%= terminology_table(:procedure_request, :dstu2) %>

## Search

Search for ProcedureRequests that meet supplied query parameters:

    GET /ProcedureRequest?:parameters

### Authorization Types

<%= authorization_types(provider: true, patient: true, system: true) %>

### Parameters

 Name         | Required?                             | Type          | Description
--------------|---------------------------------------|---------------|------------------------------------------------------------------------------------
 `_id`        | This, or `patient` or `subject`       | [`token`]     | The logical resource id associated with the ProcedureRequest. Example: `_id=7891` |
 `patient`    | This, or `_id` or `subject`           | [`reference`] | The patient associated with the ProcedureRequest. Example: `patient=12345` or `patient=Patient/12345` |
 `subject`    | This, or `_id` or `patient`           | [`reference`] | The subject associated with the ProcedureRequest. Must represent a Patient resource. May use the `:Patient` modifier. Example: `subject=Patient/12345` or `subject:Patient=12345`  |
 `_lastUpdated`  | N                                  | [`date`]      |  An explicit or implied date-time range within which the most recent clinically relevant update was made to the procedure request. Must be prefixed by ‘ge’ or ‘le’. Example: ge2014-05-19T20:54:02.000Z |
 `_count`       | N                                   | [`number`]    | The maximum number of ProcedureRequests to retrieve in a page. |

Notes:

  - Only one of `patient`, `subject`, and `_id` may be provided
  - `_count` and `_lastUpdated` may not be provided with `_id`
  - The `_lastUpdated` parameter must have a time.
  - The `_lastUpdated` parameter may be provided up to two times, and must use the `ge` or `le` prefixes. When provided twice, the lower value must have the `ge` prefix and the higher value must have the `le` prefix.
  - Searching with the `_lastUpdated` parameter will only detect changes to fields that affect the clinical meaning of the order. An example of the types of changes that won’t be caught by this query are changes that would affect the version, but not the FHIR content.

### Headers

 <%= headers %>

### Example

#### Request

    GET https://fhir-open.cerner.com/dstu2/ec2458f2-1e24-41c8-b71b-0e701af7583d/ProcedureRequest?patient=12724067

#### Response

<%= headers status: 200 %>
<%= json(:dstu2_procedure_request_bundle) %>

<%= disclaimer %>

### Errors

The common [errors] and [OperationOutcomes] may be returned.

## Retrieve by id

List an individual ProcedureRequest by its id:

    GET /ProcedureRequest/:id

### Authorization Types

<%= authorization_types(provider: true, patient: true, system: true) %>

### Headers

<%= headers %>

### Example

#### Request

    GET https://fhir-open.cerner.com/dstu2/ec2458f2-1e24-41c8-b71b-0e701af7583d/ProcedureRequest/309771147

#### Response

<%= headers status: 200 %>
<%= json(:dstu2_procedure_request_entry) %>

<%= disclaimer %>

### Errors

The common [errors] and [OperationOutcomes] may be returned.

[`date`]: http://hl7.org/fhir/DSTU2/search.html#date
[`reference`]: http://hl7.org/fhir/DSTU2/search.html#reference
[`token`]: http://hl7.org/fhir/DSTU2/search.html#token
[`number`]: http://hl7.org/fhir/DSTU2/search.html#number
[errors]: ../../#client-errors
[OperationOutcomes]: ../../#operation-outcomes
