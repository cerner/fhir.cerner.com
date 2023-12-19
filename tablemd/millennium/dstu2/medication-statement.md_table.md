 Name|Required?|Type|Description
------------|---------------|---------------|--------------------------------------------------------------------------------------------------------
 `_id`|Conditionally|[`token`]|The logical resource ID associated with the resource. It may be a list separated by commas. This parameter is required if the `patient` parameter is not used. Example: `_id=1234`
 `patient`|Conditionally|[`reference`]|The specific patient to return medication statements for. This parameter is required if the `_id` parameter is not used. Example: `patient=5678`
 `status`|No|[`token`]|The status of the medication statement. It may be a list separated by commas. Example: `status=active,completed`
 [`_count`]|No|[`number`]|The maximum number of results to return. Defaults to `_count=50`.
