 `_id`|This, or `patient`|[`token`]|The logical resource ID associated with the resource.
 `patient`|This, or `_id`|[`reference`]|The patient who has the procedure.
 `date`|No                	|[`date`]|Date range into which the procedure falls. Example: `date=gt2014-09-24` or `date=lt2015-09-24T12:00:00.000Z`
 `encounter`|No                	|[`reference`]|The encounter associated with the procedure record.
 `_revinclude`|No                	|[`_revinclude`]|A request to include any Provenance resource in the bundle that refers to a Procedure resource in the search results. Only supported with Provenance.
