`_id`|Yes, or `patient` or `practitioner` or `location`.|[`token`]|The logical resource id associated with the Appointment. Example: `_id=3005759`
`patient`|Yes, or `_id` or `practitioner` or `location`.|[`reference`]|A single or comma separated list of Patient references. Example: `patient=4704007`
`practitioner`|Yes, or `_id` or `patient` or `location`.|[`reference`]|A single or comma separated list of Practitioner references. Example: `practitioner=2578010`
`location`|Yes, or `_id` or `patient` or `practitioner`.|[`reference`]|A single or comma separated list of Location references. Example: `location=633867`
`date`|Yes when using `patient`, `practitioner`, or `location`.|[`date`]|The Appointment date/time. Example: `date=2020-01`
`status`|No|[`token`]|A single or comma separated list of appointment statuses. Example: `status=arrived`
[`_count`]|No|[`number`]|The maximum number of results to return.
