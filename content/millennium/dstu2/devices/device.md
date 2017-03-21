---
title: Device | DSTU 2 API
---

# Device

* TOC
{:toc}

## Terminology Bindings

<%= terminology_table(:device, :dstu2) %>

## Search

Search for Devices that meet supplied query parameters:

    GET /Device?:parameters

_Implementation Notes_

* The [Device.status] modifier element is not supported and will not be returned.

### Parameters

 Name      | Required?         | Type          | Description
-----------|-------------------|---------------|---------------------------------------------------------------------------
 `_id`     | This or `patient` | [`token`]     | The logical resource id associated with the Device. Example: `7891`
 `patient` | This or `_id`     | [`reference`] | The patient on whom the device is affixed. Example: `12345`

### Response

<%= headers status: 200, head: {Functionality: 'Search by patient'} %>
<%= json(:dstu2_device_bundle) %>
<%= headers status: 200, head: {Functionality: 'Search by id'} %>
<%= json(:dstu2_device_bundle_by_id) %>

## Retrieve by id

List an individual Device by its id:

    GET /Device/:id

_Implementation Notes_

* The [Device.status] modifier element is not supported and will not be returned.

### Response

<%= headers status: 200 %>
<%= json(:dstu2_device) %>

[`reference`]: http://hl7.org/fhir/DSTU2/search.html#reference
[`token`]: http://hl7.org/fhir/DSTU2/search.html#token
[Device.status]: http://hl7.org/fhir/DSTU2/device-definitions.html#Device.status
