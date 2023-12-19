 Name|Required?|Type|Description
----------------|--------------------|-----------------|------------------------------------------------------------------------
 `_id`|This, or `patient`|[`token`]|The logical resource ID associated with the resource.
 `patient`|This, or `_id`|[`reference`]|The patient who has the allergy.
 `_revinclude`|No|[`_revinclude`]|A request to include any Provenance resource in the bundle that refers to an AllergyIntolerance resource in the search results. Only supported with Provenance.
