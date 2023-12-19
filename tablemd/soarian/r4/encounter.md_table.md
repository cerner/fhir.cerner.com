 Name|Required?|Type|Description
---------------|----------------------------------------|---------------------------------------------------------------|
 `_id`|This, or `patient`|[`token`]|The logical resource ID associated with the resource
 `patient`|This, or `_id`|[`reference`]|The patient who has the encounter.
 `date`|No|[`date`]|Date range into which the encounter falls. Example: `date=gt2014-09-24 or date=lt2015-09-24T12:00:00.000Z`
 `_revinclude`|No|[`_revinclude`]|A request to include any Provenance resource in the bundle that refers to an Encounter resource in the search results. Only supported with Provenance.
