 Name|Required?|Type|Description
--------------|-----------|-----------------|-----------------------------------------------------------------------------------------------------------------------------------------------
 `_id`|See notes|[`token`]|The logical resource id associated with the resource. Example: `F703726`
 `identifier`|See notes|[`token`]|Aliases of the Account like Statement Number. Example: `https://fhir.cerner.com/ec2458f2-1e24-41c8-b71b-0e701af7583d/statement-number|500000078`
 `type`|See notes|[`token`]|The specific type of account. Example: `financial-account`
 `patient`|See notes|[`reference`]|The entity that caused the expenses. Example: `Patient/12345`
 `-guarantor`|See notes|[`reference`]|The parties responsible for balancing the account. Example: `6330015-6330017`
 `-encounter`|See notes|[`reference`]|The id to identify the encounter. Example: `98028029`
 `_count`|no|[`number`]|The maximum number of results to return. Defaults to `10`.
