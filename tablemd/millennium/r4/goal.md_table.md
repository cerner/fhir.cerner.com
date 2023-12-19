 Name|Required?|Type|Description
-------------------|----------------------------|---------------|---------------------------------------------------------------------------------------------------------------
 `_id`|Conditionally|[`token`]|The logical resource ID associated with the goal. This parameter is required if `patient` is not used. Example: `_id=7891`
 `patient`|Conditionally|[`reference`]|The patient who has the goal. This parameter is required if `_id` is not used. Example: `patient=12345`
 `target-date`|No|[`date`]|A date or date range from which to find goals. Example: `target-date=ge2016-10-01&target-date=le2016-12-01`
 `_revinclude`|No|[`token`]|Provenance resource entries to be returned as part of the bundle. Example:_revinclude=Provenance:target
