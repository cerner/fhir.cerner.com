 `_id`|Yes or `service-type`|[`token`]|The logical resource id associated with the resource.
 `service-type`|Yes or `_id`|[`token`]|A single or comma separated list of appointment types that can be booked into the slot. Example: `service-type=https://fhir.cerner.com/ec2458f2-1e24-41c8-b71b-0e701af7583d/codeSet/14249|4047611`
 `schedule.actor`|No|[`reference`]|A single or comma separated list of Practitioner references. Example: `schedule.actor=Practitioner/1234`
 `-location`|No|[`reference`]|A single or comma separated list of Location references. Example: `-location='5678'`
 `start`|See Notes|[`date`]|The Slot date-time. Example: `start=ge2016-08-24T12:00:00.000Z&start=lt2017-01-24T12:00:00.000Z`
 [`_count`]|No|[`number`]|The maximum number of results to be returned per page.
 [`_include`]|No|[`string`]|Other resource entries to be returned as part of the bundle. Example: `_include=Slot:schedule` or `_include=Schedule:actor:Practitioner`
