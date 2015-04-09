---
title: MedicationPrescription | FHIR API
---

# MedicationPrescription

* TOC
{:toc}

## Search

Search for active MedicationPrescriptions that meet supplied query parameters:

    GET /MedicationPrescription?:parameters

### Parameters

Name | Type | Description
-----|------|--------------
`patient`|`string`| The identity of a patient to list dispenses for. Example: `12345`

### Response

<%= headers 200 %>
<%= json(:medication_prescription_bundle) %>