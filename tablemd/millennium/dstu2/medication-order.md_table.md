 `_id`|Conditionally|[`token`]|The logical resource ID associated with the resource. It may be a list separated by commas. This parameter is required if the `patient` parameter is not used. Example: `_id=1234`
 `patient`|Conditionally|[`reference`]|The specific patient to return orders for. This parameter is required if the `_id` parameter is not used. Example: `patient=5678`
 `status`|No|[`token`]|The [status] of the medication order. It may be a list separated by commas. Example: `status=active,draft`
 `-timing-boundsPeriod`|No|[`date`]|The date and time that should fall within the [period] when the medication should be given to the patient. This parameter cannot be provided at the same time as the `_lastUpdated` parameter. Example: `-timing-boundsPeriod=ge2014-05-19T20:54:02.000Z`
 `_lastUpdated`|No|[`date`]|An explicit or implied date and time range within which the most recent clinically relevant update was made to the medication. This parameter cannot be provided at the same time as the `-timing-boundsPeriod` parameter. Example: `_lastUpdated=ge2014-05-19T20:54:02.000Z`
 [`_count`]|No|[`number`]|The maximum number of results to include on a page. Example: `_count=50`
