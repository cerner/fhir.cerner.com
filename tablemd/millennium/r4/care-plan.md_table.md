 Name|Required?|Type|Description
--------------|-----------|---------------|--------------
 `_id`|See notes|[`token`]|The logical resource id associated with the resource.
 `date`|N|[`date`]|Time period plan covers. Example: `date=ge2016&date=le2017 (Jan 1, 2016 - Dec 31, 2017)` or `date=ge2016-08-24T12:00:00.000Z&date=le2017-01-24T12:00:00.000Z`
 `patient`|See notes|[`reference`]|Who care plan is for. Example: `patient=12345`
 `category`|See notes|[`token`]|The scope of care plan being searched for. Example: `category=assess-plan`
 [`_count`]|N|[`number`]|Number of results per page.
 `_revinclude`|N|[`token`]|Provenance resource entries to be returned as part of the bundle. Example: `_revinclude=Provenance:target`
