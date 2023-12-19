 Name|Required?|Type|Description
-------------------|--------------------------------|---------------|-----------------------------------------------------------------------
 `_id`|This or `patient` or `subject`|[`token`]|The logical resource id associated with the resource.
 `patient`|This or `_id` or `subject`|[`reference`]|Who the condition is for. Example: `12345`
 `subject`|This or `_id` or `patient`|[`reference`]|Who the condition is for. Example: `Patient/12345`
 `clinical-status`|No|[`token`]|The clinical status of the condition. Example: `active`, `inactive`, `resolved`
 `category`|No|[`token`]|The category of the condition. Categories problem-list-item, encounter-diagnosis and health-concern are supported as of now. Example: `problem-list-item`, `encounter-diagnosis`, `health-concern`
 `_revinclude`|No|[`token`]|Provenance resource entries to be returned as part of the bundle. Example:`_revinclude=Provenance:target`
 `encounter`|No|[`reference`]|The encounter ID/s for the patient. Encounter-diagnosis conditions that match the encounter ID/s and all problem-list-item conditions of the patient are returned. Example: `encounter=97733489`
