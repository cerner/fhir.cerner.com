 Name|Required?|Type|Description
--------------|--------------------|---------------|--------------
 `_id`|This, or `patient`|[`token`]|The logical resource ID associated with the resource.
 `patient`|This, or `_id`|[`reference`]|The patient that the diagnostic report is about.
 `category`|No|[`token`]|The category of the diagnostic report.
 `code`|No|[`token`]|The code of the diagnostic report.
 `encounter`|No|[`reference`]|The encounter associated with the care plan record.
 `date`|No|[`date`]|Date range into which the diagnostic report falls. Example: `date=gt2014-09-24 or date=lt2015-09-24T12:00:00.000Z`
 `_count`|No|[`count`]|The maximum number of resources returned in a page.
 `_revincude`|No|[`_revinclude`]|A request to include any Provenance resource in the bundle that refers to a DiagnosticReport resource in the search results. Only supported with Provenance.
