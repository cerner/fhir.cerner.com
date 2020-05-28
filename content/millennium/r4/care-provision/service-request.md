---
title: ServiceRequest | R4 API
---

# ServiceRequest

* TOC
{:toc}

## Overview

The ServiceRequest resource returns the requests or orders for procedures, diagnostic tests or other services to be performed on a patient. This resource includes a wide range of requests including diagnostic procedures, therapies, patient care activities, referrals, and consults. Medication, dietary and appointment requests are NOT returned with the ServiceRequest resource.

The following fields are returned if valued:

* [ServiceRequest id]( https://hl7.org/fhir/r4/resource-definitions.html#Resource.id){:target="_blank"}
* [Status](https://www.hl7.org/fhir/servicerequest-definitions.html#ServiceRequest.status){:target="_blank"}
* [Intent](https://www.hl7.org/fhir/servicerequest-definitions.html#ServiceRequest.intent){:target="_blank"}
* [Category](https://www.hl7.org/fhir/servicerequest-definitions.html#ServiceRequest.category){:target="_blank"}
* [Priority](https://www.hl7.org/fhir/servicerequest-definitions.html#ServiceRequest.priority){:target="_blank"}
* [Code](https://www.hl7.org/fhir/servicerequest-definitions.html#ServiceRequest.code){:target="_blank"}
* [Order Detail](https://www.hl7.org/fhir/servicerequest-definitions.html#ServiceRequest.orderDetail){:target="_blank"}
* [Quantity](https://www.hl7.org/fhir/servicerequest-definitions.html#ServiceRequest.quantity_x_){:target="_blank"}
* [Patient](https://www.hl7.org/fhir/servicerequest-definitions.html#ServiceRequest.subject){:target="_blank"}
* [Encounter](https://www.hl7.org/fhir/servicerequest-definitions.html#ServiceRequest.encounter){:target="_blank"}
* [Occurrence](https://www.hl7.org/fhir/servicerequest-definitions.html#ServiceRequest.occurrence_x_){:target="_blank"}
* [As needed](https://www.hl7.org/fhir/servicerequest-definitions.html#ServiceRequest.asNeeded_x_){:target="_blank"}
* [Authored on Date](https://www.hl7.org/fhir/servicerequest-definitions.html#ServiceRequest.authoredOn){:target="_blank"}
* [Requester](https://www.hl7.org/fhir/servicerequest-definitions.html#ServiceRequest.requester){:target="_blank"}
* [Performer](https://www.hl7.org/fhir/servicerequest-definitions.html#ServiceRequest.performer){:target="_blank"}
* [Location Reference](https://www.hl7.org/fhir/servicerequest-definitions.html#ServiceRequest.locationReference){:target="_blank"}
* [Reason Code](https://www.hl7.org/fhir/servicerequest-definitions.html#ServiceRequest.reasonCode){:target="_blank"}
* [Body site](https://www.hl7.org/fhir/servicerequest-definitions.html#ServiceRequest.bodySite){:target="_blank"}
* [Note](https://www.hl7.org/fhir/servicerequest-definitions.html#ServiceRequest.note){:target="_blank"}

## Terminology Bindings

<%= terminology_table(:service_request, :r4) %>

## Search

Search for ServiceRequests that meet supplied query parameters:

    GET /ServiceRequest?:parameters

### Authorization Types

<%= authorization_types(practitioner: true, system: true) %>

### Parameters

 Name                     | Required?                       | Type          | Description
--------------------------|---------------------------------|---------------|-----------------------------------------------------------------------------------------------------
 `_id`                    | This, or `patient` or `subject` | [`token`]     | The logical resource id associated with the resource. Example: `12345`
 `patient`                | This, or `_id` or `subject`     | [`reference`] | The specific patient to return ServiceRequests for. Example: `12345`
 `subject`                | This, or `_id` or `patient`     | [`reference`] | The subject associated with the ServiceRequest. Must represent a Patient resource. May use the `:Patient` modifier. Example: `subject=Patient/1316020` or `subject:Patient=1316020`
 `_lastUpdated`           | N                               | [`date`]      | An explicit or implied date-time range within which the most recent clinically relevant update was made to the service request. Must include a time, and must be prefixed by `ge` or `le`. Example: `ge2014-05-19T20:54:02.000Z`
 [`_count`]               | N                               | [`number`]    | The maximum number of ServiceRequests to retrieve in a page. Example: `50`

### Note

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

<%= authorization_types(practitioner: true, system: true) %>

### Headers

<%= headers %>

### Example

#### Request

    GET https://fhir-open.sandboxcerner.com/r4/0b8a0111-e8e6-4c26-a91c-5069cbc6b1ca/ServiceRequest/41636441

#### Response

<%= headers status: 200 %>
<%= json(:R4_SERVICE_REQUEST) %>
<%= disclaimer %>

### Errors

The common [errors] and [OperationOutcomes] may be returned.

[`token`]: http://hl7.org/fhir/R4/search.html#token
[`reference`]: http://hl7.org/fhir/R4/search.html#reference
[`date`]: http://hl7.org/fhir/R4/search.html#date
[`_count`]: https://hl7.org/fhir/r4/search.html#count
[`number`]: http://hl7.org/fhir/R4/search.html#number
[status]: https://www.hl7.org/fhir/r4/valueset-servicerequest-status.html
[errors]: ../../#client-errors
[OperationOutcomes]: ../../#operation-outcomes
