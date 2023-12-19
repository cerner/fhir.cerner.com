 Name|Required|Type|Description
-------------------|--------------------------------|---------------|-----------------------------------------------------------------------
 `_id`|Conditionally|[`token`]|The logical resource ID associated with the resource. This parameter is required if `subject` is not used. Example: `11111111`
 `patient`|Conditionally|[`reference`]|Who the nutrition order is for. This parameter is required if the `_id` parameter is not used. Example: `12345`
 `status`|No|[`token`]|The status of the nutrition order. Example: `active`
 `_lastUpdated`|No|[`date`]|An explicit or implied date and time range during which the most recent clinically relevant update was made to the nutrition order. Must include a time, and must be prefixed by ‘ge’ or ‘le’. Example: `ge2014-05-19T20:54:02.000Z`
[`_count`]|No|[`number`]|The maximum number of nutrition orders to include on a page.
