`_id`|Conditionally|[`token`]|The logical resource ID associated with the resource. It may be a list separated by commas. This parameter is required if the `patient` parameter is not used. Example: `_id=12345`
`patient`|Conditionally|[`reference`]|The specific patient to return medication administrations for. This parameter is required if the `_id` parameter is not used. Example: `patient=1234`
`status`|No|[`token`]|The status of the medication administration event. It may be a list separated by commas. Example: `status=completed,not-done`
`practitioner`|No|[`reference`]|The logical resource ID of the practitioner who administered the medication. It may be a list separated by commas. Example: `practitioner=1245,7659`
`notgiven`|No|[`token`]|Administrations that were not made. A value of `true` includes these administrations in the search results, and a value of `false` excludes them.
`effectivetime`|No|[`dateTime`]|A date range for when the administration happened. Example: `effectivetime=ge2014-05-19T20:54:02.000Z`
[`_count`]|No|[`number`]|The maximum number of results to return. Example: `_count=50`
