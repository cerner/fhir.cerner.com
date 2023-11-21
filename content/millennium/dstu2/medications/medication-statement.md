---
title: MedicationStatement | DSTU 2 API
---

# MedicationStatement

* TOC
{:toc}

## Overview

The MedicationStatement resource provides a snapshot in time of known medications taken by the patient now or in the past, which were reported by the patient, a significant other, or a provider. Future orders are not returned. 

Historical, past, or home medications are commonly captured when documenting the patient's medical history. Prescriptions without documented compliance are considered intended because whether the patient is actively taking the medication or has filled the prescription is unknown. Medications are assumed to be taken unless documented otherwise.

The following fields are returned if valued:

* [Medication Statement ID](https://hl7.org/fhir/dstu2/resource-definitions.html#Resource.id){:target="_blank"}
* [Patient](https://hl7.org/fhir/DSTU2/medicationstatement-definitions.html#MedicationStatement.patient){:target="_blank"}
* [Source of information](https://hl7.org/fhir/DSTU2/medicationstatement-definitions.html#MedicationStatement.informationSource){:target="_blank"}
* [Date/Time recorded](https://hl7.org/fhir/DSTU2/medicationstatement-definitions.html#MedicationStatement.dateAsserted){:target="_blank"}
* [Status](https://hl7.org/fhir/DSTU2/medicationstatement-definitions.html#MedicationStatement.status){:target="_blank"}
* [Was or Was Not Taken](https://hl7.org/fhir/DSTU2/medicationstatement-definitions.html#MedicationStatement.wasNotTaken){:target="_blank"}
* [Date/Time started and ended](https://hl7.org/fhir/DSTU2/medicationstatement-definitions.html#MedicationStatement.effective_x_){:target="_blank"}
* [Medication](https://hl7.org/fhir/DSTU2/medicationstatement-definitions.html#MedicationStatement.medication_x_){:target="_blank"}
* [Reference to source MedicationOrder, if applicable](https://hl7.org/fhir/DSTU2/medicationstatement-definitions.html#MedicationStatement.supportingInformation){:target="_blank"}
* [Category Extension](#extensions)
* Details of medication taken:
  * [Dosage](https://hl7.org/fhir/DSTU2/medicationstatement-definitions.html#MedicationStatement.dosage){:target="_blank"}
  * [Route](https://hl7.org/fhir/DSTU2/medicationstatement-definitions.html#MedicationStatement.dosage.route){:target="_blank"}
  * [Frequency](https://hl7.org/fhir/DSTU2/medicationstatement-definitions.html#MedicationStatement.dosage.timing){:target="_blank"}
  * [Quantity](https://hl7.org/fhir/DSTU2/medicationstatement-definitions.html#MedicationStatement.dosage.quantity_x_){:target="_blank"}
  * [Reason for use](https://hl7.org/fhir/DSTU2/medicationstatement-definitions.html#MedicationStatement.reasonForUse_x_){:target="_blank"}
  * [Site](https://hl7.org/fhir/DSTU2/medicationstatement-definitions.html#MedicationStatement.dosage.site_x_){:target="_blank"}
  * [Rate](https://hl7.org/fhir/DSTU2/medicationstatement-definitions.html#MedicationStatement.dosage.rate_x_){:target="_blank"}
  * [Order comments/special instructions](https://hl7.org/fhir/DSTU2/medicationstatement-definitions.html#MedicationStatement.note){:target="_blank"}
  * [Patient friendly display Extension](#extensions)

### Querying for Active Medications

To get all possible current medications, an application should query the MedicationStatement resource with the `status` query parameter set to `active,intended`. Because the MedicationStatement resource provides a snapshot in time, the reponse includes only the information that was in the system as of the last contact with the patient. Changes in medications that occurred after the patient last visited their provider are not included.

To get the list of current medications that would likely be shown by default to a practitioner, use the [MedicationOrder] resource and the query above to ensure that `draft` orders are included. You can use the `MedicationStatement.supportingInformation` reference to remove duplicates. A duplicate is identified when the `MedicationOrder.id` is equivalent to the `MedicationOrder/[id]` in the `supportingInformation` reference.

<%= disclaimer %>

### Errors

The common [errors] and [OperationOutcomes] may be returned.

## Terminology Bindings

<%= terminology_table(:medication_statement, :dstu2) %>

### Contained Medication Bindings

<%= terminology_table(:contained_medication, :dstu2) %>

### Contained Practitioner Bindings

<%= terminology_table(:medication_statement_contained_practitioner, :dstu2) %>

## Extensions

* [Patient friendly display]
* [Order category]

### Custom Extensions

All URLs for custom extensions are defined as `https://fhir-ehr.cerner.com/dstu2/StructureDefinition/{id}`

 ID                              | Value\[x] Type      | Description
---------------------------------|---------------------|-------------------------------------------------------------------------------------------
 `patient-friendly-display`      | [`string`]          | Extension to MedicationRequest.dosageInstruction. The display name that can be used for this field when producing a view suitable for a patient.
 `medication-statement-category` | [`CodeableConcept`] | The [category] of the order, for example: patientspecified, outpatient, and so on.


## Search

Search for medication statements that meet supplied query parameters.

    GET /MedicationStatement?:parameters

### Authorization Types

<%= authorization_types(provider: true, patient: true, system: true) %>


### Parameters


 Name        | Required?     | Type          | Description
------------ |---------------|---------------|--------------------------------------------------------------------------------------------------------
 `_id`       | Conditionally | [`token`]     | The logical resource ID associated with the resource. It may be a list separated by commas. This parameter is required if the `patient` parameter is not used. Example: `_id=1234`
 `patient`   | Conditionally | [`reference`] | The specific patient to return medication statements for. This parameter is required if the `_id` parameter is not used. Example: `patient=5678`
 `status`    | No            | [`token`]     | The status of the medication statement. It may be a list separated by commas. Example: `status=active,completed`
 [`_count`]  | No            | [`number`]    | The maximum number of results to return. Defaults to `_count=50`.


_Notes_

* [MedicationStatement.informationSource] may be a reference to a [contained] practitioner or related person. Only the relationship between the patient and information source is known; therefore, a specific practitioner or related person cannot be referenced.
* [MedicationStatement.medication] may be a reference to a [contained] medication when the medication cannot be represented by a [`CodeableConcept`] because it contains a unique combination of ingredients. Medications in the system always exist in the context of a medication statement and cannot be be referenced independently.
* When searching with the `_id` parameter:
  * It must not be provided with any other parameters.

### Headers

<%= headers %>

### Example

#### Request

    GET https://fhir-open.cerner.com/dstu2/ec2458f2-1e24-41c8-b71b-0e701af7583d/MedicationStatement?patient=12724067

#### Response

<%= headers status: 200 %>
<%= json(:dstu2_medication_statement_bundle) %>

## Retrieve by ID

List an individual medication statement by its ID.

    GET /MedicationStatement/:id

### Authorization Types

<%= authorization_types(provider: true, patient: true, system: true) %>

### Headers

<%= headers %>

### Example

#### Request

    GET https://fhir-open.cerner.com/dstu2/ec2458f2-1e24-41c8-b71b-0e701af7583d/MedicationStatement/309799821

#### Response

<%= headers status: 200 %>
<%= json(:dstu2_medication_statement_entry) %>

## Create

Create a new medication statement.

    POST /MedicationStatement

_Notes_

* If [MedicationStatement.medication] is a reference, it must refer to a [contained] medication with the code field populated and cannot have any product.ingredients populated.
* Only medication statements about home medications or historical medications can be created. Medication statements about prescribed medications cannot be created because the MedicationStatement resource is not used to capture compliance information.
* Only the body fields mentioned below are supported. Unsupported fields are ignored or result in errors.

### Authorization Types

<%= authorization_types(provider: true, patient: false, system: true) %>

### Headers

<%= headers head: {Authorization: '&lt;OAuth2 Bearer Token>', Accept: 'application/json+fhir', 'Content-Type': 'application/json+fhir'} %>

### Body Fields

<%= definition_table(:medication_statement, :create, :dstu2) %>

#### Contained Medication Body Fields

<%= definition_table(:contained_medication, :create, :dstu2) %>

### Example

#### Request

    POST https://fhir-ehr-code.cerner.com/dstu2/ec2458f2-1e24-41c8-b71b-0e701af7583d/MedicationStatement/

#### Body

<%= json(:dstu2_medication_statement_create) %>

#### Response

<%= headers status: 201 %>
<pre class="terminal">
Connection: Keep-Alive
Content-Encoding: gzip
Content-Length: 20
Content-Type: text/html; charset=UTF-8
Date: Wed, 13 Jan 2016 21:45:47 GMT
Keep-Alive: timeout=15, max=100
Last-Modified: Tue, 15 Dec 2015 19:13:20 GMT
access-control-allow-methods: DELETE, GET, POST, PUT, OPTIONS, HEAD
access-control-allow-origin: *
access-control-expose-headers: ETag, Content-Location, Location, X-Request-Id, WWW-Authenticate, Date
access-control-max-age: 0
cache-control: no-cache
etag: W/"0"
location: https://fhir-ehr-code.cerner.com/dstu2/ec2458f2-1e24-41c8-b71b-0e701af7583d/MedicationStatement/20465903
strict-transport-security: max-age=631152000
vary: Origin,User-Agent,Accept-Encoding
opc-request-id: /11111111111111111111111111111111/11111111111111111111111111111111
x-content-type-options: nosniff
x-frame-options: SAMEORIGIN
x-request-id: 11111111-1111-1111-1111-111111111111
x-xss-protection: 1; mode=block
</pre>

The `ETag` response header indicates the current `If-Match` version to use on subsequent updates.

## Update

Update a medication statement.

    PUT /MedicationStatement/:id

_Notes_

* Only medication statements without a reference to a medication order can be updated. When a medication statement is associated with a prescription or order, its status is updated when the order itself is completed or canceled.
* Only the body fields mentioned below are supported. Unsupported fields are ignored or result in errors.
* In addition to the common [errors], the following error may be returned:
  * Updating a medication statement without sending the `If-Match` header returns a `412 Precondition Failed` response.

### Authorization Types

<%= authorization_types(provider: true, patient: false, system: true) %>

### Headers

<%= headers head: {Authorization: '&lt;OAuth2 Bearer Token>', Accept: 'application/json+fhir',
                   'Content-Type': 'application/json+fhir', 'If-Match': 'W/"&lt;Current version of the MedicationStatement resource>"'} %>

### Body fields

<%= definition_table(:medication_statement, :update, :dstu2) %>

### Example

#### Request

    PUT https://fhir-ehr-code.cerner.com/dstu2/ec2458f2-1e24-41c8-b71b-0e701af7583d/MedicationStatement/309799821

#### Body

<%= json(:dstu2_medication_statement_update) %>

#### Response

<%= headers status: 200 %>
<pre class="terminal">
Connection: Keep-Alive
Content-Encoding: gzip
Content-Length: 20
Content-Type: text/html; charset=UTF-8
Date: Wed, 13 Jan 2016 21:50:53 GMT
Keep-Alive: timeout=15, max=100
Last-Modified: Tue, 15 Dec 2015 19:13:20 GMT
access-control-allow-methods: DELETE, GET, POST, PUT, OPTIONS, HEAD
access-control-allow-origin: *
access-control-expose-headers: ETag, Content-Location, Location, X-Request-Id, WWW-Authenticate, Date
access-control-max-age: 0
cache-control: no-cache
etag: W/"1"
strict-transport-security: max-age=631152000
vary: Origin,User-Agent,Accept-Encoding
opc-request-id: /11111111111111111111111111111111/11111111111111111111111111111111
x-content-type-options: nosniff
x-frame-options: SAMEORIGIN
x-request-id: 11111111-1111-1111-1111-111111111111
x-xss-protection: 1; mode=block
</pre>

The `ETag` response header indicates the current `If-Match` version to use on subsequent updates.

[`reference`]: https://hl7.org/fhir/DSTU2/search.html#reference
[`token`]: https://hl7.org/fhir/DSTU2/search.html#token
[`date`]: https://hl7.org/fhir/DSTU2/search.html#date
[`_count`]: https://hl7.org/fhir/DSTU2/search.html#count
[`number`]: https://hl7.org/fhir/DSTU2/search.html#number
[`string`]: https://hl7.org/fhir/DSTU2/datatypes.html#string
[`CodeableConcept`]: https://hl7.org/fhir/DSTU2/datatypes.html#codeableconcept
[contained]: https://hl7.org/fhir/DSTU2/references.html#contained
[MedicationStatement.informationSource]: https://hl7.org/fhir/DSTU2/medicationstatement-definitions.html#MedicationStatement.informationSource
[MedicationStatement.medication]: https://hl7.org/fhir/DSTU2/medicationstatement-definitions.html#MedicationStatement.medication_x_
[errors]: ../../#client-errors
[OperationOutcomes]: ../../#operation-outcomes
[Patient friendly display]: #custom-extensions
[Order category]: #custom-extensions
[category]: https://hl7.org/fhir/stu3/valueset-medication-statement-category.html
[`MedicationOrder`]: ../medication-order/#overview
