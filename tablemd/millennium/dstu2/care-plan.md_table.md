 `_id`|See notes|[`token`]|The logical resource id associated with the resource.
 `date`|N|[`date`]|Time period plan covers. Example: `date=ge2016-08` or `date=le2017-01-24T12:00:00.000Z`
 `patient`|See notes|[`reference`]|Who care plan is for. Example: `patient=12345`
 `subject`|See notes|[`reference`]|Who care plan is for. Must represent a Patient resource. May use the `:Patient` modifier. Example: `subject=Patient/12345` or `subject:Patient=12345`
 [`_count`]|N|[`number`]|Number of results per page.
 `category`|See notes|[`token`]|The scope of care plan being searched for. Examples: `category=assess-plan`, `category=http://argonaut.hl7.org|careteam`, `category=http://hl7.org/fhir/care-team-category|longitudinal`, or `category=careteam`
 `context`|See notes|[`reference`]|The encounter id of the care plan. Example: `context=1138`
