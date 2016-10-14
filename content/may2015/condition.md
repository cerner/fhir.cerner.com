---
title: Condition | MAY 2015 BALLOT API
---

# Condition

* TOC
{:toc}

## Search

Search for Conditions that meet supplied query parameters:

    GET /Condition?:parameters

### Parameters

 Name             | Required?       | Type          | Description
------------------|-----------------|---------------|-----------------------------------------------------------------------------------------------------------------------
 `patient`        | This or subject | [`reference`] | The patient who has the condition. Example: `12345`
 `subject`        | This or patient | [`reference`] | The patient who has the condition. Example: `12345`
 `clinicalstatus` | N               | [`token`]     | The [clinical status] of the condition. Example: `confirmed`
 `category`       | N               | [`token`]     | The [category] of the condition. Note: Millennium currently categorizes as diagnosis or nothing. Example: `diagnosis`

### Response

<%= headers 200 %>
<%= json(:may2015_condition_bundle) %>

[`reference`]: http://hl7.org/fhir/2015May/search.html#reference
[`token`]: http://hl7.org/fhir/2015May/search.html#token
[clinical status]: http://hl7.org/fhir/2015May/condition-status.html
[category]: http://hl7.org/fhir/2015May/valueset-condition-category.html
