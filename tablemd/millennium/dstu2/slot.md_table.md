 `_id`|Yes or `slot-type`|[`token`]|The logical resource id associated with the resource.
 `slot-type`|Yes or `_id`|[`token`]|A single or comma separated list of appointment types that can be booked into the slot. Example: `http://snomed.info/sct|394581000`
 `schedule.actor`|No|[`reference`]|A single or comma separated list of Practitioner references. Example: `Practitioner/1234`
 `-location`|No|[`reference`]|A single or comma separated list of Location references. Example: `5678`
 `start`|Yes when using `slot-type`|[`date`]|The Slot date-time. Example: `2016`
 [`_count`]|No|[`number`]|The maximum number of results to be returned per page.
 [`_include`]|No|[`string`]|Other resource entries to be returned as part of the bundle. Example: `_include=Slot:schedule`
