 `_id`|This, or `patient`|[`token`](https://hl7.org/fhir/R4/search.html#token)|The logical resource ID associated with the resource.
 `patient`	|This, or `_id`								|[`reference`](https://hl7.org/fhir/r4/search.html#reference)|The patient for the vaccination record.
 `_revinclude`|No 										|[`_revinclude`](https://hl7.org/fhir/search.html#revinclude)|A request to include any Provenance resource in the bundle that refers to a Immunization resource in the search results. Only supported with Provenance.
