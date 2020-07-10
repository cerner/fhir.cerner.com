---
title: MedicationStatement | DSTU 2 API
---

# MedicationStatement

* TOC
{:toc}

## Overview

The Medication Statement resource provides a snapshot in time of known medications taken by the patient now or in the past reported by either the patient, significant other or a provider. Future orders are not returned. Documented historical/past/home medications are commonly captured when taking the patient's medical history. Prescriptions without documented compliance are Intended, since we may not know if the patient is actively taking the medication or has filled the prescription. Medications are assumed to be Taken unless documented otherwise.

References to implicitRules and modifierExtensions are NOT supported and will fail a Create or Update request.

The following fields are returned if valued:

* [Id](http://hl7.org/fhir/dstu2/resource-definitions.html#Resource.id){:target="_blank"}
* [Patient](http://hl7.org/fhir/DSTU2/medicationstatement-definitions.html#MedicationStatement.patient){:target="_blank"}
* [Source of information](http://hl7.org/fhir/DSTU2/medicationstatement-definitions.html#MedicationStatement.informationSource){:target="_blank"}
* [Date/Time recorded](http://hl7.org/fhir/DSTU2/medicationstatement-definitions.html#MedicationStatement.dateAsserted){:target="_blank"}
* [Status](http://hl7.org/fhir/DSTU2/medicationstatement-definitions.html#MedicationStatement.status){:target="_blank"}
* [Was or Was Not Taken](http://hl7.org/fhir/DSTU2/medicationstatement-definitions.html#MedicationStatement.wasNotTaken){:target="_blank"}
* [Date/Time started and ended](http://hl7.org/fhir/DSTU2/medicationstatement-definitions.html#MedicationStatement.effective_x_){:target="_blank"}
* [Medication](http://hl7.org/fhir/DSTU2/medicationstatement-definitions.html#MedicationStatement.medication_x_){:target="_blank"}
* [Reference to source MedicationOrder, if applicable](http://hl7.org/fhir/DSTU2/medicationstatement-definitions.html#MedicationStatement.supportingInformation){:target="_blank"}
* [Category Extension](#extensions)
* Details of medication taken:
  * [Dosage](http://hl7.org/fhir/DSTU2/medicationstatement-definitions.html#MedicationStatement.dosage){:target="_blank"}
  * [Route](http://hl7.org/fhir/DSTU2/medicationstatement-definitions.html#MedicationStatement.dosage.route){:target="_blank"}
  * [Frequency](http://hl7.org/fhir/DSTU2/medicationstatement-definitions.html#MedicationStatement.dosage.timing){:target="_blank"}
  * [Quantity](http://hl7.org/fhir/DSTU2/medicationstatement-definitions.html#MedicationStatement.dosage.quantity_x_){:target="_blank"}
  * [Reason for use](http://hl7.org/fhir/DSTU2/medicationstatement-definitions.html#MedicationStatement.reasonForUse_x_){:target="_blank"}
  * [Site](http://hl7.org/fhir/DSTU2/medicationstatement-definitions.html#MedicationStatement.dosage.site_x_){:target="_blank"}
  * [Rate](http://hl7.org/fhir/DSTU2/medicationstatement-definitions.html#MedicationStatement.dosage.rate_x_){:target="_blank"}
  * [Order comments/special instructions](http://hl7.org/fhir/DSTU2/medicationstatement-definitions.html#MedicationStatement.note){:target="_blank"}
  * [Patient friendly display Extension](#extensions)

### Querying for Active Medications

To get all possible current medications, an application should query `MedicationStatement` with the `status` query parameter set to `active,intended`. Since `MedicationStatement` is a snapshot in time, this is only a representation of what the system knew of during the last contact with the patient, and will not include things that have happened since the patient last visited with their provider.

To get the list of current medications that would likely be shown by default to a practitioner, the `MedicationOrder` resource should be used in addition to the query above in order to ensure that `draft` orders are included. Duplicates can be removed using the `MedicationStatement.supportingInformation` reference. A duplicate is identified when `MedicationOrder.id` is equivalent to the `supportingInformation` referenced `MedicationOrder/[id]`

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
 `patient-friendly-display`      | [`string`]          | The display that can be used for this field when producing a view suitable for a patient.
 `medication-statement-category` | [`CodeableConcept`] | The [category] of the order, for example: patientspecified, outpatient, etc.


## Search

Search for MedicationStatements that meet supplied query parameters:

    GET /MedicationStatement?:parameters

_Implementation Notes_

* [MedicationStatement.informationSource] may be a reference to a [contained] Practitioner or RelatedPerson. Only the relationship between the patient and information source is known, therefore a specific Practitioner or RelatedPerson cannot be referenced.
* [MedicationStatement.medication] may be a reference to a [contained] Medication when the Medication cannot be represented by a CodeableConcept because it contains a unique combination of ingredients. Medications in the system always exist within the context of a MedicationStatement and cannot be be referenced independently.

### Authorization Types

<%= authorization_types(provider: true, patient: true, system: true) %>


### Parameters


 Name            | Required?          | Type          | Description
-----------------|--------------------|---------------|--------------------------------------------------------------------------------------------------------
 `_id`           | This, or `patient` | [`token`]     | The logical resource id associated with the resource.
 `patient`       | This, or `_id`     | [`reference`] | The identifier of a patient to list statements for. Example: `12345`
 `status`        | N                  | [`token`]     | The status of the medication statement, may be a list separated by commas. Example: `active,completed`
 [`_count`]      | N                  | [`number`]    | The maximum number of results to return. Defaults to `50`.


Notes:

* Either the `_id` parameter or a combination of the `patient`, `status`, and `_count` parameters must be provided.

### Headers

<%= headers %>

### Example

#### Request

    GET https://fhir-open.cerner.com/dstu2/ec2458f2-1e24-41c8-b71b-0e701af7583d/MedicationStatement?patient=12724067

#### Response

<%= headers status: 200 %>
<%= json(:dstu2_medication_statement_bundle) %>

<%= disclaimer %>

### Errors

The common [errors] and [OperationOutcomes] may be returned.

## Retrieve by id

List an individual MedicationStatement by its id:

    GET /MedicationStatement/:id

_Implementation Notes_

* [MedicationStatement.informationSource] may be a reference to a [contained] Practitioner or RelatedPerson. Only the relationship between the patient and information source is known, therefore a specific Practitioner or RelatedPerson cannot be referenced.
* [MedicationStatement.medication] may be a reference to a [contained] Medication when the Medication cannot be represented by a CodeableConcept because it contains a unique combination of ingredients. Medications in the system always exist within the context of a MedicationStatement and cannot be be referenced independently.

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

<%= disclaimer %>

### Errors

The common [errors] and [OperationOutcomes] may be returned.

## Create

Create a new MedicationStatement.

    POST /MedicationStatement

_Implementation Notes_

* [MedicationStatement.status] must be set to `active`.
* [MedicationStatement.wasNotTaken] set to `true` is not supported.
* If [MedicationStatement.medication] is a reference, it must refer to a [contained] Medication with the code field populated and cannot have any product.ingredients populated.
* Only MedicationStatements about home medications or historical medications can be created. MedicationStatements about prescribed medications cannot be created because MedicationStatement isn't used to capture compliance information.

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
Status: 201 Created
access-control-allow-methods: DELETE, GET, POST, PUT, OPTIONS, HEAD
access-control-allow-origin: *
access-control-expose-headers: ETag, Content-Location, Location, X-Request-Id, WWW-Authenticate, Date
access-control-max-age: 0
cache-control: no-cache
etag: W/"0"
location: https://fhir-ehr-code.cerner.com/dstu2/ec2458f2-1e24-41c8-b71b-0e701af7583d/MedicationStatement/20465903
strict-transport-security: max-age=631152000
vary: Origin,User-Agent,Accept-Encoding
x-content-type-options: nosniff
x-frame-options: SAMEORIGIN
x-request-id: 682c633c-b20f-4f6f-8fae-c58b3aeffe04
x-xss-protection: 1; mode=block
</pre>

The `ETag` response header indicates the current `If-Match` version to use on subsequent updates.

<%= disclaimer %>

### Errors

The common [errors] and [OperationOutcomes] may be returned.

## Update

Update a MedicationStatement.

    PUT /MedicationStatement/:id

_Implementation Notes_

* The only supported change is to update the [MedicationStatement.status] to `completed`.
* Only MedicationStatements that have no reference to a MedicationOrder can be updated. When a MedicationStatement is tied to a prescription or order, its status is updated when the order itself is completed or cancelled.

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
Status: 200 OK
access-control-allow-methods: DELETE, GET, POST, PUT, OPTIONS, HEAD
access-control-allow-origin: *
access-control-expose-headers: ETag, Content-Location, Location, X-Request-Id, WWW-Authenticate, Date
access-control-max-age: 0
cache-control: no-cache
etag: W/"1"
strict-transport-security: max-age=631152000
vary: Origin,User-Agent,Accept-Encoding
x-content-type-options: nosniff
x-frame-options: SAMEORIGIN
x-request-id: 9dba8326-899a-406f-a125-3fc3d6605dad
x-xss-protection: 1; mode=block
</pre>

The `ETag` response header indicates the current `If-Match` version to use on subsequent updates.

<%= disclaimer %>

### Errors

The common [errors] and [OperationOutcomes] may be returned.

In addition, the following error may be returned:

* Updating a MedicationStatement without sending the `If-Match` header will result in a `412 Precondition Failed` response.

[`reference`]: http://hl7.org/fhir/DSTU2/search.html#reference
[`token`]: http://hl7.org/fhir/DSTU2/search.html#token
[`date`]: http://hl7.org/fhir/DSTU2/search.html#date
[`_count`]: http://hl7.org/fhir/DSTU2/search.html#count
[`number`]: http://hl7.org/fhir/DSTU2/search.html#number
[`string`]: http://hl7.org/fhir/DSTU2/datatypes.html#string
[`CodeableConcept`]: http://hl7.org/fhir/DSTU2/datatypes.html#codeableconcept
[contained]: http://hl7.org/fhir/DSTU2/references.html#contained
[MedicationStatement.informationSource]: http://hl7.org/fhir/DSTU2/medicationstatement-definitions.html#MedicationStatement.informationSource
[MedicationStatement.medication]: http://hl7.org/fhir/DSTU2/medicationstatement-definitions.html#MedicationStatement.medication_x_
[MedicationStatement.status]: http://hl7.org/fhir/DSTU2/medicationstatement-definitions.html#MedicationStatement.status
[MedicationStatement.wasNotTaken]: http://hl7.org/fhir/DSTU2/medicationstatement-definitions.html#MedicationStatement.wasNotTaken
[errors]: ../../#client-errors
[OperationOutcomes]: ../../#operation-outcomes
[Patient friendly display]: #custom-extensions
[Order category]: #custom-extensions
[category]: http://hl7.org/fhir/stu3/valueset-medication-statement-category.html
