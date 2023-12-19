 Name|Required?|Type|Description
--------------|---------------------------------------------------|-----------------------------------------------------------------------------------------------------------
 `_id`|No, if populated all other parameters are ignored|[`token`]|The logical resource id associated with the resource.
 `identifier`|Yes, if neither `_id` nor `patient` are set|[`token`]|A RelatedPerson identifier.
 `patient`|Yes, if neither `_id` nor `identifier` are set|[`reference`]|A reference to a patient related which the RelatedPerson is associated. Example: `12345`
