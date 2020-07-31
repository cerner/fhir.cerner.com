---
title: Device | R4 API
---

# Device

* TOC
{:toc}

## Overview

The Device resource implementation is currently limited to devices implanted in a patient such as a pacemaker or insulin pump. As such, this resource currently exposes the known implant history for a patient at this site.

The following fields are returned if valued:

* [Device id](https://hl7.org/fhir/r4/device-definitions.html#Device.id){:target="_blank"}
* [Device identifier](https://hl7.org/fhir/r4/device-definitions.html#Device.identifier){:target="_blank"}
* [Udi carrier](https://hl7.org/fhir/r4/device-definitions.html#Device.udiCarrier){:target="_blank"}
  * [Device identifier](https://hl7.org/fhir/r4/device-definitions.html#Device.udiCarrier.deviceIdentifier){:target="_blank"}
  * [CarrierHRF](https://hl7.org/fhir/r4/device-definitions.html#Device.udiCarrier.carrierHRF){:target="_blank"}
* [Status](https://hl7.org/fhir/r4/device-definitions.html#Device.status){:target="_blank"}
* [Distinct identifier](https://hl7.org/fhir/r4/device-definitions.html#Device.distinctIdentifier){:target="_blank"}
* [Manufacturer](https://hl7.org/fhir/r4/device-definitions.html#Device.manufacturer){:target="_blank"}
* [Manufacture date](https://hl7.org/fhir/r4/device-definitions.html#Device.manufactureDate){:target="_blank"}
* [Expiration date](https://hl7.org/fhir/r4/device-definitions.html#Device.expirationDate){:target="_blank"}
* [Lot number](https://hl7.org/fhir/r4/device-definitions.html#Device.lotNumber){:target="_blank"}
* [Serial number](https://hl7.org/fhir/r4/device-definitions.html#Device.serialNumber){:target="_blank"}
* [Device name](https://hl7.org/fhir/r4/device-definitions.html#Device.deviceName){:target="_blank"}
  * [Name](https://hl7.org/fhir/r4/device-definitions.html#Device.deviceName.name){:target="_blank"}
  * [Type](https://hl7.org/fhir/r4/device-definitions.html#Device.deviceName.type){:target="_blank"}
* [Model number](https://hl7.org/fhir/r4/device-definitions.html#Device.modelNumber){:target="_blank"}
* [Type](https://hl7.org/fhir/r4/device-definitions.html#Device.type){:target="_blank"}
* [Patient](https://hl7.org/fhir/r4/device-definitions.html#Device.patient){:target="_blank"}
* [Owner](https://hl7.org/fhir/r4/device-definitions.html#Device.owner){:target="_blank"}

## Terminology Bindings

<%= terminology_table(:device, :r4) %>

## Search

Search for Devices that meet supplied query parameters:

    GET /Device?:parameters

### Authorization Types

<%= authorization_types(practitioner: true, patient: false, system: true)%>

### Parameters

 Name      | Required?         | Type          | Description
-----------|-------------------|---------------|------------------------------------------------------------------------
 `_id`     | This or `patient` | [`token`]     | The logical resource id associated with the Device. Example: `2226920`
 `patient` | This or `_id`     | [`reference`] | The patient to whom the device is affixed. Example: `12345`


### Example

#### Request

    curl -i -H "Accept: application/fhir+json" "https://fhir-open.sandboxcerner.com/r4/0b8a0111-e8e6-4c26-a91c-5069cbc6b1ca/Device?patient=4478007"

<%= RequestButton.get('open', :r4, 'Device?patient=1316024', 200, :R4_DEVICE_BUNDLE) %>

### Errors

The common [errors] and [OperationOutcomes] may be returned.

## Retrieve by id

List an individual Device by its id:

    GET /Device/:id

### Authorization Types

<%= authorization_types(practitioner: true, patient: false, system: true)%>


### Example

#### Request

    curl -i -H "Accept: application/fhir+json" "https://fhir-open.sandboxcerner.com/r4/0b8a0111-e8e6-4c26-a91c-5069cbc6b1ca/Device/15577765"

<%= RequestButton.get('open', :r4, 'Device/15573768', 200, :R4_DEVICE) %>

### Errors

The common [errors] and [OperationOutcomes] may be returned.

[`reference`]: https://hl7.org/fhir/r4/search.html#reference
[`token`]: https://hl7.org/fhir/r4/search.html#token
[errors]: ../../#client-errors
[OperationOutcomes]: ../../#operation-outcomes
