 `_id`|This, or `patient`|[`token`](https://hl7.org/fhir/R4/search.html#token)|The logical resource id associated with the resource.
 `patient`	|This, or `_id`					|[`reference`](https://hl7.org/fhir/r4/search.html#reference)|The patient who has the condition.
 `encounter`|No 										|[`reference`](https://hl7.org/fhir/r4/search.html#reference)|The encounter associated with the condition.
 `status`|No 										|[`token`](https://hl7.org/fhir/R4/search.html#token)|The status of the condition. May be a list separated by commas.
 `_revinclude`|No 										|[`_revinclude`](https://hl7.org/fhir/search.html#revinclude)|A request to include any Provenance resource in the bundle that refers to a condition resource in the search results. Only supported with Provenance.
