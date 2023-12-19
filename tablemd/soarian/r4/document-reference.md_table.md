 Name|Required?|Type|Description
--------------------------|--------------------|---------------|--------------------------------------------------------------------------------------------------------
 `_id`|This, or `patient`|[`token`]|The logical resource ID associated with the resource.
 `patient`|This, or `_id`|[`reference`]|The patient who has the document referenced.
`category`|No|[`token`]|The categorization for the type of document referenced. Example: `category=clinical-note`
`type`|No|[`token`]|The kind of document referenced. Example: `https://loinc.org/11488-4`
`date`|No|[`date`]|Date range into which the document referenced falls. Example: `date=ge2020-01-01`
`encounter`|No|[`reference`]|The encounter associated with the document referenced.
`_count`|No|[`count`]|The maximum number of resources returned in a page.
`_revinclude`|No|[`revinclude`]|A request to include any Provenance resource in the bundle that refers to a DocumentReference resource in the search results. Only supported with Provenance.
