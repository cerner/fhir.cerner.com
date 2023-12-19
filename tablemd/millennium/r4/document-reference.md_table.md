 Name|Required?|Type|Description
---------------|--------------------|---------------|--------------------------------------------------------------------------------------------------------
 `_id`|Conditionally|[`token`]|The logical resource id associated with the resource. This parameter is required if the `patient` parameter is not used. Example: `12345`
 `patient`|Conditionally|[`reference`]|The specific patient to return Document(s) for. This parameter is required if the `_id` parameter is not used. Example: `12345`
 `encounter`|No|[`reference`]|The Encounter(s) in which the document was created. Example: `12345`
 `type`|No|[`token`]|The type of document. May be a list separated by commas. Example: `http://loinc.org|11488-4`
 `_count`|No|[`number`]|The maximum number of results to return. Defaults to `10` and maximum `100` documents can be returned.
 `category`|No|[`token`]|The categorization of document. Example: `http://loinc.org|11488-4`
 `_revinclude`|No|[`token`]|Provenance resource entries to be returned as part of the bundle. Example: `_revinclude=Provenance:target`
 `date`|No|[`date`]|When this document reference was created. Example: `date=ge2020-01-01T08:00:00.000Z&date=le2020-01-31T17:00:00.000Z`
 `period`|No|[`date`]|Time of service that is being documented. Example: `period=ge2017-01-01&period=lt2017-01-05`
