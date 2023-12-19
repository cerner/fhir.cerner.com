 `_id`|Conditional|[`token`]|The logical resource ID associated with the Encounter. This parameter is required if `patient` or `subject` or `account` or `identifier` is not used. Example: `7891`
`patient`|Conditional|[`reference`]|The patient present at the Encounter. This parameter is required if `subject` or `account` or `_id` or `identifier` is not used. Example: `12345`
`subject`|Conditional|[`reference`]|The patient present at the Encounter. This parameter is required if `patient` or `account` or `_id` or `identifier` is not used. Example: `subject=Patient/12345` or `subject:Patient=12345`
`account`|Conditional|[`reference`]|The account associated with the Encounters. This parameter is required if `patient` or `subject` or `_id` or `identifier` is not used. Example: `F703726`
`identifier`|Conditional|[`token`]|An Encounter's identifier. This parameter is required if `patient` or `subject` or `account` or `_id` is not used. Example: `urn:oid:1.2.243.58|110219457`
`date`|No|[`dateTime`]|Datetime range into which the Encounter's period datetime falls. Must be prefixed by 'ge', 'gt', 'le' or 'lt'.
[`_count`]|No|[`number`]|The maximum number of results to return.
`status`|No|[`token`]|The status of the Encounter. Example: `planned`
`_revinclude`|No|[`token`]|Provenance resource entries to be returned as part of the bundle. Example: `_revinclude=Provenance:target`
