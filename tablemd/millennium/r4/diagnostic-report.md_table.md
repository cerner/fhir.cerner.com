 Name|Required?|Type|Description
------------------|-------------------|---------------|-----------------------------------------------------------------------------------------------------------------------------------------
 `_id`|This or `patient`|[`token`]|The logical resource id associated with the resource. Example: `12345`
 `patient`|This or `_id`|[`reference`]|The subject of the report if a patient. Example: `12345`
 `encounter`|N|[`reference`]|The Encounter when the order was made. Must represent an Encounter resource. Example: `encounter=1621910`
 `date`|N|[`date`]|Date range into which the diagnostic report falls (effectiveDateTime). Either 1 or 2 date/times can be given. Example: `date=ge2020-01-01T08:00:00.000Z&date=le2020-01-31T17:00:00.000Z`
 `_count`|N|[`number`]|The maximum number of results to return. Defaults to `10` and a maximum of `100` documents can be returned.
 `category`|N|[`token`]|The diagnostic discipline/department which created the report. Example: `http://terminology.hl7.org/CodeSystem/v2-0074|LAB` or `http://loinc.org|LP29684-5`
 `code`|N|[`token`]|The specific code for describing the report. Example: `http://loinc.org|24323-8`
 `_revinclude`|N|[`token`]|Provenance resource entries to be returned as part of the bundle. Example: `_revinclude=Provenance:target`
