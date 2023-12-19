 Name|Required?|Type|Description
-----------------------|--------------------------------------------------|---------------|--------------
 `_id`|No, if populated all other parameters are ignored|[`token`]|The logical resource id associated with the resource.
 `actor`|Yes, or _id|[`reference`]|The actor (RelatedPerson) of the Consent. Example: `actor=RelatedPerson/1234` or `actor:RelatedPerson=1234`
 `actor.identifier`|Yes, or _id|[`token`]|The Federated Person Principal identifier for the actor of the Consent. Example `actor.identifier=system|1234`
 `patient`|Yes, or _id|[`reference`]|Who the consent applies to Example `subject=Patient/1234`
 `patient.identifier`|Yes, or _id|[`token`]|The identifier for the patient of the Consent. Example `patient.identifier=system|5678` (Federated Person Principal, Medical Record Number, Social Security Number, etc.)
  [`_include`]|No|[`string`]|Other resource entries to be returned as part of the bundle. Example `_include=Consent:actor` or `_include=Consent:patient`
