---
title: Device | R4 API
---

# Device

* TOC
{:toc}

## Overview

The Device resource Implementation is currently limited to devices such as pacemakers that are implanted in a patient as part of a charted procedure. As such, this resource currently exposes the known implant history for a patient occurring at this site. 

Soarian Clinicals<sup>®</sup> supports a read-only Application Programming Interface (API). This API accepts `GET` and `POST` based [search] and `GET` based [read] interactions. The response represents the most current information about the patient that is charted in Soarian Clinicals<sup>®</sup> at the time of the query. 

The search results include the following fields if they contain values:

* [Device id](https://hl7.org/fhir/r4/device-definitions.html#Device.id){:target="_blank"}
* [UDI carrier](https://hl7.org/fhir/r4/device-definitions.html#Device.udiCarrier){:target="_blank"}
  * [Device identifier](https://hl7.org/fhir/r4/device-definitions.html#Device.udiCarrier.deviceIdentifier){:target="_blank"}
  * [Carrier HRF](https://hl7.org/fhir/r4/device-definitions.html#Device.udiCarrier.carrierHRF){:target="_blank"}
* [Status](https://hl7.org/fhir/r4/device-definitions.html#Device.status){:target="_blank"}
* [Distinct identifier](https://hl7.org/fhir/r4/device-definitions.html#Device.distinctIdentifier){:target="_blank"}
* [Manufacture date](https://hl7.org/fhir/r4/device-definitions.html#Device.manufactureDate){:target="_blank"}
* [Expiration date](https://hl7.org/fhir/r4/device-definitions.html#Device.expirationDate){:target="_blank"}
* [Lot number](https://hl7.org/fhir/r4/device-definitions.html#Device.lotNumber){:target="_blank"}
* [Serial number](https://hl7.org/fhir/r4/device-definitions.html#Device.serialNumber){:target="_blank"}
* [Type](https://hl7.org/fhir/r4/device-definitions.html#Device.type){:target="_blank"}
* [Patient](https://hl7.org/fhir/r4/device-definitions.html#Device.patient){:target="_blank"}

## Terminology Bindings

<%= terminology_table(:soarian_device, :r4) %>

## Search

Search for Device resources that meet the specified query parameters:

    GET /Device?:parameters

### Authorization Types

<%= authorization_types(provider: true, patient: true, system: true)%>

### Parameters

 Name           | Required?          | Type            | Description
----------------|--------------------|-----------------|------------------------------------------------------------------------
 `_id`          | This, or `patient` | [`token`]       | The logical resource ID associated with the resource. Example: 9005
 `patient`      | This, or `_id`     | [`reference`]   | The patient for the device record. Example: A879904FD2FE4B2D90C89FDA84E1285F
 `_revinclude`  | No                 | [`_revinclude`] | A request to include any Provenance resource in the bundle that refers to a Device resource in the search results. Only supported with Provenance.

Notes:

* The `_revinclude` parameter may be provided once with the value `Provenance:target`. Example: `_revinclude=Provenance:target`
* When `_revinclude` is provided in a request, the OAuth2 token must include the `patient/Provenance.read  system/Provenance.read`  or  `user/Provenance.read` scope as applicable.


### Headers

<%= headers fhir_json: true %>

### Example Search by Patient

#### Request

    GET https://fhir-myrecord-sc.sandboxcerner.com/r4/3f2aca24-87f3-4eac-a6d7-1f75247e6b43/Device?patient=A879904FD2FE4B2D90C89FDA84E1285F

#### Response

<%= headers status: 200 %>
<%= json(:SOARIAN_R4_DEVICE_SEARCH_BY_PT_ENTRY) %>

### Example Search by ID

#### Request

    GET https://fhir-myrecord-sc.sandboxcerner.com/r4/3f2aca24-87f3-4eac-a6d7-1f75247e6b43/Device?_id=A879904FD2FE4B2D90C89FDA84E1285F.9005

#### Response

<%= headers status: 200 %>
<%= json(:SOARIAN_R4_DEVICE_SEARCH_BY_ID_ENTRY) %>

Note: The examples provided here are non-normative and replaying them in the public sandbox is not guaranteed to yield the results shown on the site.

### Errors

*   The common [errors] and [OperationOutcomes] may be returned.

## Retrieve by ID

List an individual Device resource by its ID:

    GET /Device/:id


### Authorization Types

<%= authorization_types(provider: true, patient: true, system: true)%>

### Headers

<%= headers fhir_json: true %>

### Example

#### Request

    GET https://fhir-myrecord-sc.sandboxcerner.com/r4/3f2aca24-87f3-4eac-a6d7-1f75247e6b43/Device?patient=A879904FD2FE4B2D90C89FDA84E1285F.9005

#### Response

<%= headers status: 200 %>
<%= json(:SOARIAN_R4_DEVICE_READ_BY_ID) %>

Note: The examples provided here are non-normative and replaying them in the public sandbox is not guaranteed to yield the results shown on the site.

### Errors

*   The common [errors] and [OperationOutcomes] may be returned.

[`reference`]: https://hl7.org/fhir/r4/search.html#reference
[`token`]: https://hl7.org/fhir/r4/search.html#token
[`_revinclude`]: https://www.hl7.org/fhir/search.html#revinclude
[errors]: ../../#client-errors
[OperationOutcomes]: https://www.hl7.org/fhir/r4/operationoutcome.html
[search]: https://www.hl7.org/fhir/http.html#search
[read]: https://www.hl7.org/fhir/http.html#read
