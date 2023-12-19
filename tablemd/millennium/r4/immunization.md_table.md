 `_id`|Conditionally|[`token`]|The logical resource ID associated with the resource. This parameter is required if the `patient` parameter is not used. Example: `M12345`
 `patient`|Conditionally|[`reference`]|The patient for the vaccination record. This parameter is required if the `_id` parameter is not used. Example: `12345`
 `date`|No|[`date`]|The date range for the immunization administration or administrations. Example: `date=ge2020-01-01T08:00:00.000Z&date=le2020-01-31T17:00:00.000Z`
 `target-disease`|No|[`token`]|The target disease that the dose is being administered against. Example: `http://hl7.org/fhir/sid/cvx|213`
 `_revinclude`|No|[`token`]|The Provenance resource entries that are returned as part of the bundle.
