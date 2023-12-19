Name|Required|Type|Description
----------|-----------------|---------------|-------------------------------------------------------
`_id`|Conditionally|[`token`]|The logical resource ID associated with the resource. This parameter is required if `patient` is not used.
`patient`|Conditionally|[`reference`]|The identity of a subject to list family member history items for. This parameter is required if `_id_` is not used. Example: `12345`
`status`|No|[`token`]|The record status for a specific family member. This parameter is only provided when the `patient` search parameter is used.
