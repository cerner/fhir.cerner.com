 Name|Required?|Type|Description
----------------------|--------------------------------------------------------------|---------------|------------------------------------------------------------------------------------------------------------------------------
 `_id`|No, if populated all other parameters are ignored|[`token`]|The logical resource id associated with the resource.
 `actor`|Yes, or `_id`|[`reference`]|The actor (RelatedPerson) of the Contract. Example: `actor=RelatedPerson/1234` or `actor:RelatedPerson=1234`
 `actor.identifier`|Yes, or `_id`|[`token`]|The identifier for the actor of the Contract. Example `actor.identifier=system|1234`
 `patient.identifier`|Yes, or `_id`|[`token`]|The identifier for the patient subject of the Contract. Example `patient.identifier=system|5678`
 `subject`|Yes, or `_id`|[`reference`]|The subject (Patient) of the Contract. Example `subject=Patient/1234` or `subject:Patient=1234`
 [`_include`]|No|[`string`]|Other resource entries to be returned as part of the bundle. Example `_include=Contract:actor` or `_include=Contract:patient`
