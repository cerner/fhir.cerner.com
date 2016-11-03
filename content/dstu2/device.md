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

### Parameters

 Name      | Required?       | Type          | Description
-----------|-----------------|---------------|---------------------------------------------------------------------------
 `_id`     | This or patient | [`token`]     | The logical resource id associated with the Device. Example: `7891`
 `patient` | This or _id     | [`reference`] | The patient on whom the device is affixed. Example: `12345`

### Response

<%= headers 200, {Functionality: 'Search by patient'} %>
<%= json(:dstu2_device_bundle) %>
<%= headers 200, {Functionality: 'Search by id'} %>
<%= json(:dstu2_device_bundle_by_id) %>

## Retrieve by id

List an individual Device by its id:

    GET /Device/:id
    
### Response

<%= headers 200 %>
<%= json(:dstu2_device) %>

[`reference`]: http://hl7.org/fhir/DSTU2/search.html#reference
[`token`]: http://hl7.org/fhir/DSTU2/search.html#token
