|Terminology Bindings|
|---|
|<p>**[Condition.code](http://hl7.org/fhir/DSTU2/condition-definitions.html#Condition.code)**<hr>**Description**<br>- Identification of the condition or diagnosis.<br><br>**Details:** [SNOMED CT](http://hl7.org/fhir/dstu2/snomedct.html)<br><br>**System:** `http://snomed.info/sct`<br><br>**Details:** [ICD-9-CM](https://terminology.hl7.org/ICD.html#icd-9-variants)<br><br>**System:** `http://hl7.org/fhir/sid/icd-9-cm`<br><br>**Details:** [ICD-10-CM](https://terminology.hl7.org/CodeSystem-icd10CM.html)<br><br>**System:** `http://hl7.org/fhir/sid/icd-10-cm`<br><br>|
|<p>**[Condition.category](http://hl7.org/fhir/DSTU2/condition-definitions.html#Condition.category)**<hr>**Description**<br>- A category assigned to the condition.<br>**Note**<br>- Category codes `diagnosis`, `problem` and `health-concern` are supported for search and retrieve functionality. Codes `diagnosis` and `problem` are supported for conditions add and update functionality.<br><br>**Details:** [Condition Category Codes](http://hl7.org/fhir/dstu2/valueset-condition-category.html)<br><br>**System:** `http://hl7.org/fhir/condition-category`<br><br>**Details:** [Argonaut Valueset Codes](http://www.fhir.org/guides/argonaut/r2/ValueSet-condition-category.html)<br><br>**System:** `http://argonaut.hl7.org`<br><br>|
|<p>**[Condition.clinicalStatus](http://hl7.org/fhir/DSTU2/condition-definitions.html#Condition.clinicalStatus)**<hr>**Description**<br>- Preferred value set for Condition Clinical Status.<br><br>**Details:** [Clinical Status](http://hl7.org/fhir/dstu2/valueset-condition-clinical.html)<br><br>**System:** `http://hl7.org/fhir/condition-clinical`<br><br>|
|<p>**[Condition.clinicalStatus](http://hl7.org/fhir/DSTU2/condition-definitions.html#Condition.clinicalStatus)**<hr>**Description**<br>- Preferred value set for Condition Clinical Status.<br><br>**Details:** [Clinical Status](http://hl7.org/fhir/dstu2/valueset-condition-clinical.html)<br><br>**System:** `http://hl7.org/fhir/condition-clinical`<br><br>|
|<p>**[Condition.severity](http://hl7.org/fhir/DSTU2/condition-definitions.html#Condition.severity)**<hr>**Description**<br>- A subjective assessment of the severity of the condition as evaluated by the clinician.<br><br>**Details:** [SNOMED CT](http://hl7.org/fhir/dstu2/snomedct.html)<br><br>**System:** `http://snomed.info/sct`<br><br>|
|<p>**[Condition.meta.security](http://www.hl7.org/fhir/resource-definitions.html#Meta.security)**<hr>**Description**<br>- These tags connect specific resources to the overall security policy and infrastructure.<br><br>**Details:** [ValueSet](http://www.hl7.org/fhir/valueset-security-labels.html)<br><br>**System:** `http://terminology.hl7.org/CodeSystem/v3-ActCode`<br><br>|