 `_id`|This or `patient`|[`token`]|The logical resource id associated with the resource. Example: `_id=12345`
 `patient`|This or `_id`|[`reference`]|Who the sensitivity is for. Example: `patient=12345`
 `clinical-status`|No|[`token`]|The clinical status of the allergy or intolerance. Example: `active`, `inactive`, `resolved`
 `_revinclude`|No|[`token`]|Provenance resource entries to be returned as part of the bundle. Example: `_revinclude=Provenance:target`
