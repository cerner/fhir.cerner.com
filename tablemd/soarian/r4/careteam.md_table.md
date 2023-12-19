 Name|Required?|Type|Description
---------------|----------------------------------------------|------------------------------------------------------------|----------------------------------------------------------------------------------------------------------------------------
 `_id`|This, or `patient`|[`token`]											|The logical resource ID associated with the resource.
 `patient`	|This, or `_id`								|[`reference`]											|The patient who has the care team.
 `encounter`|No 										|[`reference`]											|The encounter associated with the care team
 `status`|No 										|[`token`]												|The status of the care team. May be a list separated by commas.
 `_revinclude`|No 										|[`_revinclude`]											|A request to include any Provenance resource in the bundle that refers to an CareTeam resource in the search results. Only supported with Provenance.
