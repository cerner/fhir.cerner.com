---
title: ServiceRequest | R4 API
---

# ServiceRequest

* TOC
{:toc}

## Overview

ServiceRequest is a record of a request for a Service or diagnostic or other service to be planned, proposed, or performed, as distinguished by the ServiceRequest.intent field value, with or on a patient. The Service will lead to either a Service or DiagnosticReport, which in turn may reference one or more Observations, which summarize the performance of the Services and associated documentation such as observations, images, findings that are relevant to the treatment/management of the subject. This resource may be used to share relevant information required to support a referral or a transfer of care request from one practitioner or organization to another when a patient is required to be referred to another provider for a consultation /second opinion and/or for short term or longer term management of one or more health issues or problems.

The principal intention of ServiceRequest is to support ordering Services for one patient (which includes non-human patients in veterinary medicine). However, in many contexts, healthcare related processes include performing diagnostic investigations on groups of subjects, devices involved in the provision of healthcare, and even environmental locations such as ducts, bodies of water, etc. ServiceRequest supports all these usages. The service request may represent an order that is entered by a practitioner in a CPOE system as well as a proposal made by a clinical decision support (CDS) system based on a patient's clinical record and context of care. Planned Services referenced by a CarePlan may also be represented by this resource.



The following fields are returned if valued:

* [ServiceRequest id]( https://hl7.org/fhir/r4/resource-definitions.html#Resource.id){:target="_blank"}
* [Status](https://www.hl7.org/fhir/servicerequest-definitions.html#ServiceRequest.status){:target="_blank"}
* [Intent](https://www.hl7.org/fhir/servicerequest-definitions.html#ServiceRequest.intent){:target="_blank"}
* [Category](https://www.hl7.org/fhir/servicerequest-definitions.html#ServiceRequest.category){:target="_blank"}
* [Priority](https://www.hl7.org/fhir/servicerequest-definitions.html#ServiceRequest.priority){:target="_blank"}
* [Code](https://www.hl7.org/fhir/servicerequest-definitions.html#ServiceRequest.code){:target="_blank"}
* [Order Details](https://www.hl7.org/fhir/servicerequest-definitions.html#ServiceRequest.orderDetail){:target="_blank"}
* [Quantity](https://www.hl7.org/fhir/servicerequest-definitions.html#ServiceRequest.quantity_x_){:target="_blank"}
* [Patient](https://www.hl7.org/fhir/servicerequest-definitions.html#ServiceRequest.subject){:target="_blank"}
* [Encounter](https://www.hl7.org/fhir/servicerequest-definitions.html#ServiceRequest.encounter){:target="_blank"}
* [Occurrence](https://www.hl7.org/fhir/servicerequest-definitions.html#ServiceRequest.occurrence_x_){:target="_blank"}
* [As needed](https://www.hl7.org/fhir/servicerequest-definitions.html#ServiceRequest.asNeeded_x_){:target="_blank"}
* [Authored on Date](https://www.hl7.org/fhir/servicerequest-definitions.html#ServiceRequest.authoredOn){:target="_blank"}
* [Requester](https://www.hl7.org/fhir/servicerequest-definitions.html#ServiceRequest.requester){:target="_blank"}
* [Performer](https://www.hl7.org/fhir/servicerequest-definitions.html#ServiceRequest.performer){:target="_blank"}
* [Location References](https://www.hl7.org/fhir/servicerequest-definitions.html#ServiceRequest.locationReference){:target="_blank"}
* [Reason Code](https://www.hl7.org/fhir/servicerequest-definitions.html#ServiceRequest.reasonCode){:target="_blank"}
* [Body site](https://www.hl7.org/fhir/servicerequest-definitions.html#ServiceRequest.bodySite){:target="_blank"}
* [Notes](https://www.hl7.org/fhir/servicerequest-definitions.html#ServiceRequest.note){:target="_blank"}

## Terminology Bindings

<%= terminology_table(:service_request, :r4) %>

## Search

Search for ServiceRequests that meet supplied query parameters:

    GET /ServiceRequest?:parameters

### Authorization Types

<%= authorization_types(practitioner: true, patient: true, system: true) %>

### Parameters

 Name      | Required?          | Type          | Description
-----------|--------------------|---------------|-----------------------------------------------------------------------------------------------------
 `_id`                    | This, or `patient` or `subject` | [`token`]     | The logical resource id associated with the resource. Example: `12345`
 `patient`                | This, or `_id` or `subject`     | [`reference`] | The specific patient to return ServiceRequests for. Example: `12345`
 `subject`                | This, or `_id` or `patient`     | [`reference`] | The subject associated with the ServiceReuest. Must represent a Patient resource. May use the `:Patient` modifier. Example: `subject=Patient/1316020` or `subject:Patient=1316020`
 `_lastUpdated`           | N                  | [`date`]      | An explicit or implied date-time range within which the most recent clinically relevant update was made to the service request. Must include a time, and must be prefixed by `ge` or `le`. Example: `ge2014-05-19T20:54:02.000Z`
 `_count`                 | N                  | [`number`]    | The maximum number of ServiceRequests to retrieve in a page. Example: `50`

 ### Notes

 * If `_id` is provided, no other parameters may be provided.

 * The `_lastUpdated` parameter may be provided:
     * once with a prefix `ge` or `le` representing the earliest date or latest date. (e.g. `date=ge2015-01-01`, `date=le2016-01-01`)
     * twice with the prefixes `ge`, `le` to indicate a specific range. (e.g. `date=ge2015-01-01&date=le2016-01-01`)

### Headers

<%= headers fhir_json: true %>

### Example

#### Request

    GET https://fhir-open.sandboxcerner.com/r4/0b8a0111-e8e6-4c26-a91c-5069cbc6b1ca/ServiceRequest?patient=1316020

#### Response

<%= headers status: 200 %>
<%= json(:R4_SERVICE_REQUEST_BUNDLE) %>
<%= disclaimer %>

### Errors

The common [errors] and [OperationOutcomes] may be returned.

## Retrieve by id

List an individual ServiceRequest by its id:

    GET /ServiceRequest/:id

### Authorization Types

<%= authorization_types(practitioner: true, patient: true, system: true) %>

### Headers

<%= headers %>

### Example

#### Request

    GET https://fhir-open.sandboxcerner.com/r4/0b8a0111-e8e6-4c26-a91c-5069cbc6b1ca/ServiceRequest/56770371

#### Response

<%= headers status: 200 %>
<%= json(:R4_SERVICE_REQUEST) %>
<%= disclaimer %>

### Errors

The common [errors] and [OperationOutcomes] may be returned.

[`token`]: http://hl7.org/fhir/R4/search.html#token
[`reference`]: http://hl7.org/fhir/R4/search.html#reference
[`date`]: http://hl7.org/fhir/R4/search.html#date
[`number`]: http://hl7.org/fhir/R4/search.html#number
[status]: https://www.hl7.org/fhir/r4/valueset-servicerequest-status.html
[errors]: ../../#client-errors
[OperationOutcomes]: ../../#operation-outcomes