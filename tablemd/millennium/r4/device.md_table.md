 Name|Required?|Type|Description
--------------|-------------------|---------------|------------------------------------------------------------------------
 `_id`|This or `patient`|[`token`]|The logical resource id associated with the Device. Example: `7890`
 `patient`|This or `_id`|[`reference`]|The patient to whom the device is affixed. Example: `12345`
`_revinclude`|N|[`token`]|Provenance resource entries to be returned as part of the bundle. Example: `_revinclude=Provenance:target`
