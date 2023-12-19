||`_id`|This or `patient` or `subject`|[`token`]|The logical resource id associated with the resource.|
|`patient`|This or `subject`|[`reference`]|The subject (Patient) that the observation is about. Example: `patient=12345`|
|`subject`|This or `patient`|[`reference`]|The subject (Patient) that the observation is about. Example: `subject=Patient/12345` or `subject:Patient=12345`|
|`code`|N|[`token`]|The code or component-code of the observation type. Example: `code=http://loinc.org|3094-0,http://loinc.org|3139-3`|
|`date`|N|[`date`]|Date range into which the observation falls. Example: `date=gt2014-09-24` or `date=lt2015-09-24T12:00:00.000Z`|
|`_lastUpdated`|N|[`date`]|Date range in which the observation was last updated. Example: `_lastUpdated=gt2014-09-24` or `_lastUpdated=lt2015-09-24T12:00:00.000Z`|
|`category`|N|[`token`]|The category of observations. Example: `category=laboratory`|
|[`_count`]|N|[`number`]|The maximum number of results to return per page. Defaults to 50 and maximum 200 observations can be returned|
|`_revinclude`|No|[`token`]|Provenance resource entries to be returned as part of the bundle. Example:_revinclude=Provenance:target|
