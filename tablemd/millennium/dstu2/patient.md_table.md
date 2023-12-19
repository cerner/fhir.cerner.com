 `_id`|This, or any other required search parameter|[`token`]|The logical resource id associated with the resource.
 `identifier`|This and/or any other search param, or `_id`|[`token`]|A patient identifier.  Example: `urn:oid:1.1.1.1.1.1|1022228`
 `name`|This and/or any other search param, or `_id`|[`string`]|The start of either family or given name of the patient. Example: `Pete`
 `family`|This and/or any other search param, or `_id`|[`string`]|The start of the family name of the patient. Example: `Adam`
 `given`|This and/or any other search param, or `_id`|[`string`]|The start of the given name of the patient. Example: `Tim`
 `birthdate`|This and/or any other search param, or `_id`|[`date`]|The patient's date of birth.  Example: `1961-01-16`
 `phone`|This and/or any other search param, or `_id`|[`token`]|The patient's phone number. Example: `1111111111`
 `email`|This and/or any other search param, or `_id`|[`token`]|The patient's email address. Example: `example@example.com`
 `address-postalcode`|This and/or any other search param, or `_id`|[`string`]|The postal code in the address details of the patient. Example: `11111`
 `gender`|No|[`token`]|The gender of the patient. Example: `male`
 [`_count`]|No|[`number`]|The maximum number of results to return. Defaults to `20`.
