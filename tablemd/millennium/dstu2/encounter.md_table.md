 Name|Required|Type|Description
-----------|-----------------|---------------|---------------------------------------------------------------------------
 `_id`|Conditional|[`token`]|The logical resource ID associated with the Encounter. This parameter is required if `patient` is not used. Example: `7891`
 `patient`|Conditional|[`reference`]|The Patient present at the Encounter. This parameter is required if `_id` is not used. Example: `12345`
