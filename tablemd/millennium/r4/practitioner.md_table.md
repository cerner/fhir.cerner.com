||`_id`|Conditionally|[`token`]|The logical resource ID associated with the resource. This parameter is required if `identifier`, `family`, `name`, or `active` is not used. Example: `12345`|
|`identifier`|Conditionally|[`token`]|The practitioner identifier. This parameter is required if `_id`, `family`, `name`, or `active` is not used.|
|`family`|Conditionally|[`string`]|The start of the family name of the practitioner. This parameter is required if `_id`, `identifier`, `name`, or `active` is not used. Example: `Smith`|
|`name`|Conditionally|[`string`]|The start of the given name or the family name of the practitioner. This parameter is required if `_id`, `identifier`, `family,` or `active` is not used. Example: `Riley`|
|`active`|Conditionally|[`token`]|The indication of whether this practitioner's record is in active use. This parameter is required if `_id`, `identifier`, `family`, or `name` is not used. Example: `active=true`|
|`given`|No|[`string`]|The start of the given name of the practitioner. Example: `John`|
|[`_count`]|No|[`number`]|The number of results per page.|
