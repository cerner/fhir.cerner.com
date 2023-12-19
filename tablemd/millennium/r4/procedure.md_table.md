 Name|Required?|Type|Description
-------------------|---------------|---------------|-----------------------------------------------------------------------
 `_id`|Conditionally|[`token`]|The logical resource ID associated with the resource. This parameter is required if `patient` or `subject` is not used. Example: `_id=7891`
 `patient`|Conditionally|[`reference`]|Who the procedure is for. This parameter is required if `_id` or `subject` is not used. Example: `12345`
 `subject`|Conditionally|[`reference`]|Who the procedure is for. This parameter is required if `_id` or `patient` is not used. Example: `Patient/12345`
 `date`|No|[`dateTime`]|The date range that the procedure's `performedPeriod` or `performedDateTime` falls within. Example: `date=gt2015-09-24T12:00:00.000Z&date=le2020-07-15T16:00:00.000Z`
 `_revinclude`|No|[`token`]|The Provenance resource entries to be returned as part of the bundle. Example:_revinclude=Provenance:target
