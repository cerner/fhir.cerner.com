---
title: Condition | FHIR MAY 2015 BALLOT API
---

# Condition

* TOC
{:toc}

## Search

Search for Conditions that meet supplied query parameters:

    GET /Condition?:parameters

### Parameters

 Name    | Required | Type                                                           | Description
---------|----------|----------------------------------------------------------------|----------------------------------------------------
`patient`|This or subject|[`reference`](http://hl7.org/fhir/2015May/search.html#reference)| The patient who has the condition. Example: `12345`
`subject`|This or patient|[`reference`](http://hl7.org/fhir/2015May/search.html#reference)| The patient who has the condition. Example: `12345`
`clinicalstatus`| N |[`token`](http://hl7.org/fhir/2015May/search.html#token)| The [clinical status](http://hl7.org/fhir/2015May/condition-status.html) of the condition. Example: `confirmed`
`category`| N |[`token`](http://hl7.org/fhir/2015May/search.html#token)| The [category](http://hl7.org/fhir/2015May/valueset-condition-category.html) of the condition. Note: Millennium currently categorizes as diagnosis or nothing. Example: `diagnosis`

### Response

<%= headers 200 %>
<%= json(:may2015_condition_bundle) %>