 `_id`|This, or `patient`|[`token`]|The logical resource ID associated with the resource.
 `patient`|This, or `_id`|[`reference`]|The patient who has the care plan.
 `category`|See notes|[`token`]|The scope of the care plan. Example: `category=assess-plan`
 `encounter`|No|[`reference`]|The encounter associated with the care plan record.
 `_count`|No|[`count`]|The maximum number of resources returned in a page.
 `_revincude`|No|[`_revinclude`]|A request to include any Provenance resource in the bundle that refers to a CarePlan resource in the search results. Only supported with Provenance.
