---
title: Device | DSTU 2 API
---

# Device

* TOC
{:toc}

## Overview

The Device resource implementation is currently limited to devices implanted in a patient such as a pacemaker or insulin pump. As such, this resource currently exposes the known implant history for a patient at this site.

The following fields are returned if valued:

* [Device id](http://hl7.org/fhir/dstu2/resource-definitions.html#Resource.id){:target="_blank"}
* [Type](http://hl7.org/fhir/DSTU2/device-definitions.html#Device.type){:target="_blank"}
* [Manufacturer](http://hl7.org/fhir/DSTU2/device-definitions.html#Device.manufacturer){:target="_blank"}
* [Model](http://hl7.org/fhir/DSTU2/device-definitions.html#Device.model){:target="_blank"}
* [Manufacture date](http://hl7.org/fhir/DSTU2/device-definitions.html#Device.manufactureDate){:target="_blank"}
* [Expiration date](http://hl7.org/fhir/DSTU2/device-definitions.html#Device.expiry){:target="_blank"}
* [UDI (FDA Unique Device Identifier)](http://hl7.org/fhir/DSTU2/device-definitions.html#Device.udi){:target="_blank"}
* [Serial number](http://hl7.org/fhir/DSTU2/device-definitions.html#Device.identifier){:target="_blank"}
* [Lot number](http://hl7.org/fhir/DSTU2/device-definitions.html#Device.lotNumber){:target="_blank"}
* [Owner (Facility)](http://hl7.org/fhir/DSTU2/device-definitions.html#Device.owner){:target="_blank"}
* [Patient](http://hl7.org/fhir/DSTU2/device-definitions.html#Device.patient){:target="_blank"}

## Terminology Bindings

<%= terminology_table(:device, :dstu2) %>

## Extensions

* [Data Absent Reason](http://hl7.org/fhir/dstu2/extension-data-absent-reason.html)

## Search

Search for Devices that meet supplied query parameters:

    GET /Device?:parameters

_Implementation Notes_

* The [Device.status] modifier element is not supported and will not be returned.

### Authorization Types

<%= authorization_types(practitioner: true, patient: true, system: true) %>

### Parameters

 Name      | Required?         | Type          | Description
-----------|-------------------|---------------|---------------------------------------------------------------------------
 `_id`     | This or `patient` | [`token`]     | The logical resource id associated with the Device. Example: `7891`
 `patient` | This or `_id`     | [`reference`] | The patient on whom the device is affixed. Example: `12345`

### Example

#### Request

    curl -i -H "Accept: application/json+fhir" "https://fhir-open.sandboxcerner.com/dstu2/0b8a0111-e8e6-4c26-a91c-5069cbc6b1ca/Device?patient=4478007"

<%= RequestButton.get('open', :dstu2, 'Device?patient=4342008', 200, :dstu2_device_bundle) %>

### Example Read by Ids

#### Request

    curl -i -H "Accept: application/json+fhir" "https://fhir-open.sandboxcerner.com/dstu2/0b8a0111-e8e6-4c26-a91c-5069cbc6b1ca/Device?_id=15575768"

<%= RequestButton.get('open', :dstu2, 'Device?_id=15601768', 200, :dstu2_device_bundle_by_id) %>

### Errors

The common [errors] and [OperationOutcomes] may be returned.

## Retrieve by id

List an individual Device by its id:

    GET /Device/:id

_Implementation Notes_

* The [Device.status] modifier element is not supported and will not be returned.

### Authorization Types

<%= authorization_types(practitioner: true, patient: true, system: true) %>

### Example

#### Request

    curl -i -H "Accept: application/json+fhir" "https://fhir-open.sandboxcerner.com/dstu2/0b8a0111-e8e6-4c26-a91c-5069cbc6b1ca/Device/15575768"

<%= RequestButton.get('open', :dstu2, 'Device/15601768', 200, :dstu2_device) %>

### Errors

The common [errors] and [OperationOutcomes] may be returned.

[`reference`]: http://hl7.org/fhir/DSTU2/search.html#reference
[`token`]: http://hl7.org/fhir/DSTU2/search.html#token
[Device.status]: http://hl7.org/fhir/DSTU2/device-definitions.html#Device.status
[errors]: ../../#client-errors
[OperationOutcomes]: ../../#operation-outcomes
