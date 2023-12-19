  Name|Required?|Type|Description
-------------------|-----------------|---------------|-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
 `patient`|This or `subject`|[`reference`]|The subject of the report if a patient. Example: `12345`
 `subject:Patient`|This or `patient`|[`reference`]|The subject (Patient) of the report. Example: `12345`
 `date`|N|[`date`]|Date range into which the diagnostic report falls (effectiveDateTime). Example: `date=ge2020-01-01T08:00:00.000Z&date=lt2020-01-31T17:00:00.000Z`
 [`_count`]|N|[`number`]|The maximum number of results to return. Defaults to `10` and a maximum of `100` documents can be returned.
