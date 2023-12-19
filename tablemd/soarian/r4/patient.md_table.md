 `_id`|This or any other required search parameter|[`token`]|The logical resource ID associated with the resource.
 `identifier`|This or any other search parameter, or `_id`|[`token`]|A patient identifier. Only MR, PI, or SB identifiers are supported and therefore searched. Example: `urn:oid:1.1.1.1.1.1`\|`1022228`
 `name`|This or any other search parameter, or `_id`|[`string`]|The start of either the family or the given name of the patient. Previous name values are not searchable. Example: `Doe`
 `family`|This or any other search parameter, or `_id`|[`string`]|The start of the patient's family name. Previous name values are not searchable. Example: `Doe`
 `given`|This or any other search parameter, or `_id`|[`string`]|The start of the patient's given name. Previous name values are not searchable. Example: `Jane`
 `birthdate`|This or any other search parameter, or `_id`|[`date`]|The patient's date of birth.  Example: `1990-01-01`
 `gender`|No|[`token`]|The patient's gender. Example: `male`
 `_revinclude`|No|[`_revinclude`]|A request to include any Provenance resource in the bundle that refers to a Patient resource in the search results. Only supported with Provenance.

* The `identifier` parameter supports the `:of-type` modifier and has the format system\|code\|value, where the system and code refer to an `Identifier.type.coding.system` and `.code`, and match if any of the type codes match. All three parts of the format must be present.
