Name|Required|Type|Description
-----------|---------------|---------------|-------------------------------------------------------
`_id`|Conditionally|[`token`]|The logical resource ID associated with the resource. This parameter is required if the `owned-by` parameter is not used. Example: `1234`
`owned-by`|Conditionally|[`reference`]|The organization associated with the insurance plan. This parameter is required if the `_id` parameter is not used. Example: `Organization/5678`
