---
title: MedicationPrescription | FHIR MAY 2015 BALLOT API
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
<%= json(:may2015_medication_prescription_bundle) %>