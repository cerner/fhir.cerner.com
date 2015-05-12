---
title: MedicationPrescription | FHIR DSTU 2 API
---

# MedicationPrescription

* TOC
{:toc}

## Search

Search for active MedicationPrescriptions that meet supplied query parameters:

    GET /MedicationPrescription?:parameters

### Parameters

 Name    | Type                                                           | Description
---------|----------------------------------------------------------------|------------------------------------------------------------------
`patient`|[`reference`](http://hl7.org/fhir/2015May/search.html#reference)| The identity of a patient to list dispenses for. Example: `12345`

### Response

<%= headers 200 %>
<%= json(:dstu2_medication_prescription_bundle) %>