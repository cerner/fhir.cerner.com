---
title: AllergyIntolerance | MAY 2015 BALLOT API
---

# AllergyIntolerance

* TOC
{:toc}

## Search

Search for AllergyIntolerances that meet supplied query parameters:

    GET /AllergyIntolerance?:parameters

### Parameters

 Name      | Required? | Type          | Description
-----------|-----------|---------------|-----------------------------------------------------------------
 `patient` | Y         | [`reference`] | Who the sensitivity is for. Example: `12345`
 `status`  | N         | [`token`]     | [Certainty of the allergy or intolerance]. Example: `confirmed`

### Response

<%= headers 200 %>
<%= json(:may2015_allergy_intolerance_bundle) %>

[`reference`]: http://hl7.org/fhir/2015May/search.html#reference
[`token`]: http://hl7.org/fhir/2015May/search.html#token
[Certainty of the allergy or intolerance]: http://hl7.org/fhir/2015May/allergy-intolerance-status.html
