 Name|Required?|Type|Description
-------------|---------------|---------------|----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
 `_id`|Conditionally|[`token`]|The logical resource ID associated with the resource. This parameter is required if neither the `patient` nor `subject` parameters are used. Example: `_id=1234`
 `patient`|Conditionally|[`reference`]|The patient to which the document reference belongs. This parameter is required if neither the `_id` nor `subject` parameters are used. Example: `patient=5678`
 `subject`|Conditionally|[`reference`]|The subject of the document reference. May use the ":Patient" modifier. This parameter is required if neither the `_id` nor `patient` parameters are used. Example: `subject=Patient/91011`
 `encounter`|No|[`reference`]|The encounter to which the document reference belongs. Example: `encounter=1213`
 `created`|No|[`date`]|A date/time the referenced document was created. Example: `created=ge2017-01-07&created=le2017-02-05`
 [`_count`]|No|[`number`]|The maximum number of results to return.
