 `_id`|Yes, or `patient` or `practitioner` or `location`.|[`token`]|The logical resource id associated with the Appointment. Example: `_id=3005759`
 `patient`|Yes, or `_id` or `practitioner` or `location`.|[`reference`]|A single or comma separated list of Patient references. Example: `patient=12724066`
 `practitioner`|Yes, or `_id` or `patient` or `location`.|[`reference`]|A single or comma separated list of Practitioner references. Example: `practitioner=593923`
 `location`|Yes, or `_id` or `patient` or `practitioner`.|[`reference`]|A single or comma separated list of Location references. Example: `location=21304876`
 `date`|Yes, or `-date-or-req-period` when using `patient`, `practitioner`, or `location`.|[`date`]|The Appointment start date time with offset. Example: `date=ge2019-06-07T22:22:16.000Z`
 `-date-or-req-period`|Yes, or `date` when using `patient`, `practitioner`, or `location`.|[`date`]|The Appointment start date time with offset or the Appointment requested period date time with offset. Example: `-date-or-req-period=ge2019-06-07T22:22:16.000Z`
 `status`|No|[`token`]|A single or comma separated list of appointment statuses. Example: `status=arrived`
 [`_count`]|No|[`number`]|The maximum number of results to return.
