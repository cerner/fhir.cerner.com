 `_id`|Conditionally|[`token`]|The logical resource ID associated with the resource. Example: `_id=1234`
 `patient`|Conditionally|[`reference`]|The specific patient to return medication requests for. Example: `patient=5678`
 `status`|No|[`token`]|The [status] of the medication. May be a list separated by commas. Example: `status=active,completed`
 `intent`|No|[`token`]|Whether the medication is an authorization or a medication reported by a patient. Example: `intent=order,plan`
 `-timing-boundsPeriod`|No|[`token`]|The date and time which should fall within the `dosageInstruction.timing.repeat.boundsPeriod` when the medication should be given to the patient. Example: `-timing-boundsPeriod=ge2014-05-19T20:54:02.000Z`
 `_lastUpdated`|No|[`date`]|The date and time range within which the most recent clinically relevant update was made to the medication. The time component is required. Example: `_lastUpdated=ge2014-05-19T20:54:02.000Z`
 `_count`|No|[`number`]|The maximum number of results to include on a page. Example: `_count=50`
 `_revinclude`|No|[`token`]|The Provenance resource entries to be returned as part of the bundle. Example: `_revinclude=Provenance:target`
