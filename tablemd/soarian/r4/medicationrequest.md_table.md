 Name|Required?|Type|Description
---------------|----------------------------------------------|------------------------------------------------------------|----------------------------------------------------------------------------------------------------------------------------
 `_id`|This, or `patient`|[`token`](https://hl7.org/fhir/R4/search.html#token)|The logical resource ID associated with the resource.
 `patient`	|This, or `_id`								|[`reference`](https://hl7.org/fhir/r4/search.html#reference)|The patient who has the medication request.
 `status`|No|[`token`](https://hl7.org/fhir/R4/search.html#token)|The status of the medication request. May be a list separated by commas.
  `intent`|No|[`token`](https://hl7.org/fhir/R4/search.html#token)|The kind of medication order. May be a list separated by commas.
  `encounter`|This, or `_id`							|[`reference`](https://hl7.org/fhir/r4/search.html#reference)|The encounter associated with the medication request.
 `_revinclude`|No 										|[`_revinclude`](https://hl7.org/fhir/search.html#revinclude)|A request to include any Provenance resource in the bundle that refers to a MedicationRequest resource in the search results. Only supported with Provenance.
