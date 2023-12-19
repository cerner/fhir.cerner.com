 `ID`|This, or `patient`|[`token`]|The logical resource ID associated with the resource.
 `patient`	|See notes|[`reference`]|The patient the observation is about.
 `category`	|See notes|[`token`]|The observation report's category.
 `code`	|See notes|[`token`]|The observation's code.
 `encounter`|No|[`reference`]|The encounter associated with the observation record.
 `date`	|No|[`date`]|Date range into which the observation falls. Example: date=gt2014-09-24 or date=lt2015-09-24T12:00:00.000Z
 `_count_`	|No|[`count`]|The maximum number of resources returned in a page.
 `_revinclude`|No|[`_revinclude`]|A request to include any Provenance resource in the bundle that refers to an Observation resource in the search results. Only supported with Provenance.
