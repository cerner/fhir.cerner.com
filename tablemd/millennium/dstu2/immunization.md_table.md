 `_id`|Conditionally|[`token`]|The logical resource ID associated with the resource. This parameter is required if the `patient` parameter is not used. Example: `12345`
 `patient`|Conditionally|[`reference`]|The patient for the vaccination record(s). This parameter is required if the `_id` parameter is not used. Example: `12345`
 `date`|No|[`date`]|Date range for the immunization administration(s). Example: `date=ge2020-01-01T08:00:00.000Z&date=le2020-01-31T17:00:00.000Z`
