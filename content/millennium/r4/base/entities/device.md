---
title: Device | R4 API
---

# Device

* TOC
{:toc}

## Overview

The Device resource implementation is currently limited to devices implanted in a patient such as a pacemaker or insulin pump. As such, this resource currently exposes the known implant history for a patient at this site.

* The following [HL7® FHIR® US Core Implementation Guide STU 4.0.0](https://hl7.org/fhir/us/core/STU4/){:target="_blank"} Profiles are supported by this resource:

  * [US Core Implantable Device Profile](http://hl7.org/fhir/us/core/STU4/StructureDefinition-us-core-implantable-device.html){:target="_blank"}

The following fields are returned if valued:

* [Device id](https://hl7.org/fhir/r4/device-definitions.html#Device.id){:target="_blank"}
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
    * [User Friendly name](https://hl7.org/fhir/r4/codesystem-device-nametype.html#device-nametype-user-friendly-name){:target="_blank"}
    * [Manufacturer name](https://hl7.org/fhir/r4/codesystem-device-nametype.html#device-nametype-manufacturer-name){:target="_blank"}
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

<%= authorization_types(provider: true, patient: true, system: true)%>

### Parameters

 Name         | Required?         | Type          | Description
--------------|-------------------|---------------|------------------------------------------------------------------------
 `_id`        | This or `patient` | [`token`]     | The logical resource id associated with the Device. Example: `7890`
 `patient`    | This or `_id`     | [`reference`] | The patient to whom the device is affixed. Example: `12345`
`_revinclude` | N                 | [`token`]     | Provenance resource entries to be returned as part of the bundle. Example: `_revinclude=Provenance:target`

_Implementation notes_

* The `_revinclude` parameter may be provided once with the value `Provenance:target`. Example: `_revinclude=Provenance:target`

* The `_revinclude` parameter may be provided with the `_id/patient` parameter. Example: `_id=214938095&_revinclude=Provenance:target`

* When `_revinclude` is provided in a request to the closed endpoint, the OAuth2 token must include the `user/Provenance.read` scope. Currently `patient/Provenance.read` is not supported and hence `_revinclude` cannot be utilised for patient persona.

### Example

#### Request

    curl -i -H "Accept: application/fhir+json" "https://fhir-open.cerner.com/r4/ec2458f2-1e24-41c8-b71b-0e701af7583d/Device?patient=12724066"

<%= RequestButton.get('open', :r4, 'Device?patient=12724066', 200, :R4_DEVICE_BUNDLE) %>

#### Patient Authorization Request

    GET https://fhir-ehr.cerner.com/r4/ec2458f2-1e24-41c8-b71b-0e701af7583d/Device?patient=12724066

#### Response

<%= headers status: 200 %>
<%= json(:r4_device_patient_bundle) %>

<%= disclaimer %>

### Example with RevInclude

### Authorization Types

<%= authorization_types(provider: true, system: true) %>

#### Request

    GET https://fhir-ehr.cerner.com/r4/ec2458f2-1e24-41c8-b71b-0e701af7583d/Device?_id=31539245&_revinclude=Provenance:target

#### Response

<%= headers status: 200 %>
<%= json(:r4_device_revinclude_bundle) %>
<%= disclaimer %>

### Errors

The common [errors] and [OperationOutcomes] may be returned.

## Retrieve by id

List an individual Device by its id:

    GET /Device/:id

### Authorization Types

<%= authorization_types(provider: true, patient: true, system: true)%>

#### Patient Authorization Request

    GET https://fhir-ehr.cerner.com/r4/ec2458f2-1e24-41c8-b71b-0e701af7583d/Device/31539245

#### Response

<%= headers status: 200 %>
<%= json(:r4_device_patient_entry) %>

<%= disclaimer %>

#### Patient Authorization Request For Entered in Error Status

    GET https://fhir-ehr.cerner.com/r4/ec2458f2-1e24-41c8-b71b-0e701af7583d/Device/22118346

#### Response

<%= headers status: 200 %>
<%= json(:r4_device_entered_in_error_status) %>

<%= disclaimer %>

### Example

#### Request

    curl -i -H "Accept: application/fhir+json" "https://fhir-ehr-code.cerner.com/r4/ec2458f2-1e24-41c8-b71b-0e701af7583d/Device/31539245"

<%= RequestButton.get('open', :r4, 'Device/31539245', 200, :R4_DEVICE) %>

### Errors

The common [errors] and [OperationOutcomes] may be returned.

[`reference`]: https://hl7.org/fhir/r4/search.html#reference
[`token`]: https://hl7.org/fhir/r4/search.html#token
[errors]: ../../#client-errors
[OperationOutcomes]: ../../#operation-outcomes
