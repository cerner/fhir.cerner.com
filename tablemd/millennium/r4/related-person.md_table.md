 `_id`|This or `patient` or `identifier` or `-encounter`|[`token`]|The logical resource id associated with the resource.
 `identifier`|This or `_id` or `patient` or `-encounter`|[`token`]|A RelatedPerson identifier.
 `patient`|This or `_id` or `identifier` or `-encounter`|[`reference`]|A reference to a patient associated with the RelatedPerson. Example: `14067892`
 `-encounter`|This or `_id` or `patient` or `identifier`|[`reference`]|A reference to an encounter associated with the RelatedPerson. Example: `97697434`
`-relationship-level`|no|[`token`]|The level of relationship for the RelatedPerson. Example: `-relationship-level= http://hl7.org/fhir/resource-types|Patient`
