`_id`|Conditionally|[`token`]|The logical resource ID associated with the resource. This parameter is required if `patient` or `subject` is not used. Example: `_id=7891`
`patient`|Conditionally|[`reference`]|Who the procedure is for. This parameter is required if `_id` or `subject` is not used. Example: `12345`
`subject`|Conditionally|[`reference`]|Who the procedure is for. This parameter is required if `_id` or `patient` is not used. Example: `subject=Patient/12345` or `subject:Patient=12345`
`date`|No|[`dateTime`]|The date and time when the procedure's `performedDateTime` was performed. Must use the `ge` or `le` prefix, or both prefixes. Example: `date=le2017-02-01T10:30:00Z`
