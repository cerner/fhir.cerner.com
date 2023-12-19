 `_id`|Required if `patient` or `encounter` is not present|[`token`]|The logical resource id associated with the resource.
 `patient`|Required if `_id` or `encounter` is not present|[`reference`]|Who care team is for. Example: `patient=12345`
 `encounter`|Required if `_id` or `patient` is not present|[`reference`]|Who care team is for. Example: `encounter=98765`
 `category`|N|[`token`]|The scope of care team being searched for. Example: `category=longitudinal`
 `status`|N|[`token`]|Indicates the status of the care team
`_revinclude`|N|[`token`]|Provenance resource entries to be returned as part of the bundle. Example: `_revinclude=Provenance:target`
