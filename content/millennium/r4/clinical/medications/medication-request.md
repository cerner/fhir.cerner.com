---
title: MedicationRequest | R4 API
---

# MedicationRequest

* TOC
{:toc}

## Overview

The MedicationRequest resource provides orders for all medications along with administration instructions for a patient in both the inpatient and outpatient setting (orders/prescriptions filled by a pharmacy and discharge medication orders). This resource also includes a patient's historical or documented home medications reported by the patient, significant other or another provider.

If the MedicationRequest represents a prescription (something the patient takes at home), the start, stop, and other data may not be a representation of when the medication was taken. For example, the system may not know if the patient ever filled or took the prescribed medication, or when the prescription was filled. Documented historical/past/home medications are commonly captured when taking the patient’s medical history.

The following [HL7® FHIR® US Core Implementation Guide STU 4.0.0](https://hl7.org/fhir/us/core/STU4/){:target="_blank"} Profiles are supported by this resource:

* [US Core MedicationRequest Profile](https://hl7.org/fhir/us/core/STU4/StructureDefinition-us-core-medicationrequest.html){:target="_blank"}

The following fields are returned if valued:

* [MedicationRequest id]( https://hl7.org/fhir/r4/resource-definitions.html#Resource.id){:target="_blank"}
* [Status](https://hl7.org/fhir/r4/medicationrequest-definitions.html#MedicationRequest.status){:target="_blank"}
* [Status Reason](https://hl7.org/fhir/r4/medicationrequest-definitions.html#MedicationRequest.statusReason){:target="_blank"}
* [Intent](https://hl7.org/fhir/r4/medicationrequest-definitions.html#MedicationRequest.intent){:target="_blank"}
  * Details in Implementation Notes sections for reads and searches.
* [Identifier](https://hl7.org/fhir/r4/medicationrequest-definitions.html#MedicationRequest.identifier){:target="_blank"}
* [Category](https://hl7.org/fhir/r4/medicationrequest-definitions.html#MedicationRequest.category){:target="_blank"}
* [Priority](https://hl7.org/fhir/r4/medicationrequest-definitions.html#MedicationRequest.priority){:target="_blank"}
* [Reported Boolean](https://hl7.org/fhir/r4/medicationrequest-definitions.html#MedicationRequest.reported_x_){:target="_blank"}
* [Medication](https://hl7.org/fhir/r4/medicationrequest-definitions.html#MedicationRequest.medication_x_){:target="_blank"}
  * [CodeableConcept](https://hl7.org/fhir/r4/datatypes.html#CodeableConcept){:target="_blank"}
  * [Reference](https://hl7.org/fhir/r4/references.html#Reference){:target="_blank"} ([Medication](https://hl7.org/fhir/r4/medication.html){:target="_blank"})
* [Patient](https://hl7.org/fhir/r4/medicationrequest-definitions.html#MedicationRequest.subject){:target="_blank"}
* [Encounter](https://hl7.org/fhir/r4/medicationrequest-definitions.html#MedicationRequest.encounter){:target="_blank"}
* [Authored on Date](https://hl7.org/fhir/r4/medicationrequest-definitions.html#MedicationRequest.authoredOn){:target="_blank"}
* [Requester](https://hl7.org/fhir/r4/medicationrequest-definitions.html#MedicationRequest.requester){:target="_blank"}
  * [Reference](https://hl7.org/fhir/r4/references.html#Reference){:target="_blank"} ([Practitioner](https://hl7.org/fhir/r4/practitioner.html){:target="_blank"})
* [Reason Code](https://hl7.org/fhir/r4/medicationrequest-definitions.html#MedicationRequest.reasonCode){:target="_blank"}
* [Course of Therapy Type](https://hl7.org/fhir/r4/medicationrequest-definitions.html#MedicationRequest.courseOfTherapyType){:target="_blank"}
* [Note](https://hl7.org/fhir/r4/medicationrequest-definitions.html#MedicationRequest.note){:target="_blank"}
  * [Annotation](https://hl7.org/fhir/R4/datatypes.html#Annotation){:target="_blank"}
    * [author](https://hl7.org/fhir/R4/datatypes-definitions.html#Annotation.author_x_){:target="_blank"}
      * [Reference](https://hl7.org/fhir/r4/references.html#Reference){:target="_blank"} ([Practitioner](https://hl7.org/fhir/r4/practitioner.html){:target="_blank"}) \| [string](https://hl7.org/fhir/R4/datatypes.html#string){:target="_blank"}
* [Dosage Instructions](https://hl7.org/fhir/r4/medicationrequest-definitions.html#MedicationRequest.dosageInstruction){:target="_blank"}
  * [Text](https://hl7.org/fhir/r4/dosage-definitions.html#Dosage.text){:target="_blank"}
  * [Additional Instructions](https://hl7.org/fhir/r4/dosage-definitions.html#Dosage.additionalInstruction){:target="_blank"}
  * [Patient Instructions](https://hl7.org/fhir/r4/dosage-definitions.html#Dosage.patientInstruction){:target="_blank"}
  * [Timing Schedule](https://hl7.org/fhir/r4/dosage-definitions.html#Dosage.timing){:target="_blank"}
    * [Timing](https://hl7.org/fhir/r4/datatypes.html#Timing){:target="_blank"}
      * [code](https://hl7.org/fhir/r4/datatypes-definitions.html#Timing.code){:target="_blank"} \| [CodeableConcept](https://hl7.org/fhir/r4/datatypes.html#CodeableConcept){:target="_blank"}
      * [repeat](https://hl7.org/fhir/r4/datatypes-definitions.html#Timing.repeat){:target="_blank"} \| [Element](https://hl7.org/fhir/r4/element.html){:target="_blank"}
      * [duration](https://hl7.org/fhir/r4/datatypes-definitions.html#Timing.repeat.duration){:target="_blank"} \| [decimal](https://hl7.org/fhir/r4/datatypes.html#decimal){:target="_blank"}
      * [durationUnit](https://hl7.org/fhir/r4/datatypes-definitions.html#Timing.repeat.durationUnit){:target="_blank"} \| [code](https://hl7.org/fhir/r4/datatypes.html#code){:target="_blank"}
      * [bounds](https://hl7.org/fhir/r4/datatypes-definitions.html#Timing.repeat.bounds_x_){:target="_blank"}
        * boundsPeriod \| [Period](https://hl7.org/fhir/r4/datatypes.html#Period){:target="_blank"}
  * [As Needed](https://hl7.org/fhir/r4/dosage-definitions.html#Dosage.asNeeded_x_){:target="_blank"}
  * [Body Site](https://hl7.org/fhir/r4/dosage-definitions.html#Dosage.site ){:target="_blank"}
  * [Route](https://hl7.org/fhir/r4/dosage-definitions.html#Dosage.route){:target="_blank"}
  * [Dose and Rate](https://hl7.org/fhir/r4/dosage-definitions.html#Dosage.doseAndRate){:target="_blank"}
    * [doseAndRate.dose\[x\]](https://hl7.org/fhir/r4/dosage-definitions.html#Dosage.doseAndRate.dose_x_){:target="_blank"}
    * [doseAndRate.rate\[x\]](https://hl7.org/fhir/r4/dosage-definitions.html#Dosage.doseAndRate.rate_x_){:target="_blank"}
* [Dispensing Details](https://hl7.org/fhir/r4/medicationrequest-definitions.html#MedicationRequest.dispenseRequest){:target="_blank"}
  * [Validity Period](https://hl7.org/fhir/r4/medicationrequest-definitions.html#MedicationRequest.dispenseRequest.validityPeriod ){:target="_blank"}
  * [initialFill Quantity](https://hl7.org/fhir/r4/medicationrequest-definitions.html#MedicationRequest.dispenseRequest.initialFill.quantity){:target="_blank"}
  * [Number of Refills](https://hl7.org/fhir/r4/medicationrequest-definitions.html#MedicationRequest.dispenseRequest.numberOfRepeatsAllowed){:target="_blank"}
  * [Dispense Interval](https://hl7.org/fhir/r4/medicationrequest-definitions.html#MedicationRequest.dispenseRequest.dispenseInterval){:target="_blank"}
  * [Dispense Quantity](https://hl7.org/fhir/r4/medicationrequest-definitions.html#MedicationRequest.dispenseRequest.quantity){:target="_blank"}
  * [Expected Days Supply per Dispense](https://hl7.org/fhir/r4/medicationrequest-definitions.html#MedicationRequest.dispenseRequest.expectedSupplyDuration){:target="_blank"}
  * [Intended Dispenser](https://hl7.org/fhir/r4/medicationrequest-definitions.html#MedicationRequest.dispenseRequest.performer){:target="_blank"}
* [Substitution](https://hl7.org/fhir/r4/medicationrequest-definitions.html#MedicationRequest.substitution){:target="_blank"}
  * [Allowed Boolean](https://hl7.org/fhir/r4/medicationrequest-definitions.html#MedicationRequest.substitution.allowed_x_){:target="_blank"}
* [Prior Prescription](https://hl7.org/fhir/r4/medicationrequest-definitions.html#MedicationRequest.priorPrescription){:target="_blank"}

## Terminology Bindings

<%= terminology_table(:medication_request, :r4) %>

### Contained Medication Bindings

<%= terminology_table(:medication_request_contained_medication, :r4) %>

## Extensions

* [NLLPrescriptionFormat](https://simplifier.net/guide/swedishnationalmedicationlist/MedicationRequest)
* [NLLRegistrationBasis](https://simplifier.net/guide/swedishnationalmedicationlist/MedicationRequest)
* [NLLDosePackaging](https://simplifier.net/guide/swedishnationalmedicationlist/MedicationRequest)

All URLs for Swedish extensions are defined as `http://electronichealth.se/fhir/StructureDefinition/{id}`

 ID                      | Value\[x] Type | Description
-----------------------------------------------------------|------------------------------------------------------------------|----------------------------------------------------------------
 `NLLPrescriptionFormat` | Coding         | Current prescription format
 `NLLRegistrationBasis`  | Coding         | Format for prescription registration
 `NLLDosePackaging`      | valueBoolean   | Dose dispensed prescription

## Custom Extensions

* Clinical Instruction: Is an extension on MedicationRequest.dosageInstruction with type of valueString. It represents instructions for an order that are intended for healthcare providers. URL for this extension is defined as: `https://fhir-ehr.cerner.com/r4/StructureDefinition/clinical-instruction`.

* Pharmacy Verification Status: Is an extension on MedicationRequest.extension with type of CodeableConcept. It represents whether a MedicationRequest has been verified by a pharmacist. Supported values are Does not need pharmacy verification, Needs pharmacy verification or Rejected by pharmacy. 
  URL for this extension is defined as: `https://fhir-ehr.cerner.com/r4/StructureDefinition/pharmacy-verification-status`.

## Search

Search for MedicationRequests that meet supplied query parameters:

    GET /MedicationRequest?:parameters

_Implementation Notes_

We use the intent field to determine if a medication is an authorization or a medication reported by a patient. In the reported field, we support "Plan" and "Order" in accordance with the US Core Profile changes.

### Authorization Types

<%= authorization_types(provider: true, patient: true, system: true) %>

### Parameters

 Name                   | Required?          | Type          | Description
------------------------|--------------------|---------------|-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
 `_id`                  | This, or `patient` | [`token`]     | The logical resource id associated with the resource. Example: `12345`
 `patient`              | This, or `_id`     | [`reference`] | The specific patient to return MedicationRequests for. Example: `12345`
 `status`               | N                  | [`token`]     | The [status] of the medication, may be a list separated by commas. Example: `active,completed`
 `intent`               | N                  | [`token`]     | Whether the medication is an authorization or a medication reported by a patient. Example: `order,plan`
 `-timing-boundsPeriod` | N                  | [`token`]     | The date-time which should fall within the `dosageInstruction.timing.repeat.boundsPeriod` the medication should be given to the patient. Must be prefixed by `ge`. Example: `ge2014-05-19T20:54:02.000Z` 
 `_lastUpdated`         | N                  | [`date`]      | An explicit or implied date-time range within which the most recent clinically relevant update was made to the medication. Must include a time, and must be prefixed by `ge` or `le`. Example: `ge2014-05-19T20:54:02.000Z`
 `_count`               | N                  | [`number`]    | The maximum number of results to include in a page. Example: `50`
 `_revinclude`          | N                  | [`token`]     | Provenance resource entries to be returned as part of the bundle. Example:_revinclude=Provenance:target

Notes:

* `_revinclude` parameter may be provided once with the value `Provenance:target`. Example: `_revinclude=Provenance:target`
* `_revinclude` parameter may be provided with the `_id/patient/subject/account` parameter. Example: `_id=74771957,4732066&_revinclude=Provenance:target`
* `_revinclude` is provided in a request to the closed endpoint, the OAuth2 token must include the `user/Provenance.read` scope. Currently `patient/Provenance.read` is not supported and hence `_revinclude` cannot be utilised for patient persona.
* The `_lastUpdated` parameter may be provided:
  * once with a prefix `ge` or `le` representing the earliest date or latest date. (e.g. `date=ge2015-01-01`, `date=le2016-01-01`)
  * twice with the prefixes `ge`, `le` to indicate a specific range. (e.g. `date=ge2015-01-01&date=le2016-01-01`)

### Headers

<%= headers fhir_json: true %>

### Example

#### Request

    GET https://fhir-open.cerner.com/r4/ec2458f2-1e24-41c8-b71b-0e701af7583d/MedicationRequest?patient=12742400

#### Response

<%= headers status: 200 %>
<%= json(:R4_MEDICATION_REQUEST_BUNDLE) %>
<%= disclaimer %>

### Example with RevInclude

### Authorization Types

<%= authorization_types(provider: true, system: true) %>

#### Request

    GET https://fhir-ehr.cerner.com/r4/ec2458f2-1e24-41c8-b71b-0e701af7583d/MedicationRequest?_id=16863377&_revinclude=Provenance:target

#### Response

<%= headers status: 200 %>
<%= json(:r4_medication_request_revinclude_bundle) %>

#### Patient Authorization Request

    GET https://fhir-ehr.cerner.com/r4/ec2458f2-1e24-41c8-b71b-0e701af7583d/MedicationRequest?patient=12742400

#### Response

<%= headers status: 200 %>
<%= json(:R4_MEDICATION_REQUEST_PATIENT_BUNDLE) %>
<%= disclaimer %>

### Errors

The common [errors] and [OperationOutcomes] may be returned.

## Retrieve by id

List an individual MedicationRequest by its id:

    GET /MedicationRequest/:id

_Implementation Notes_

We use the intent field to determine if a medication is an authorization or a medication reported by a patient. In the reported field, we support "Plan" and "Order" in accordance with the US Core Profile changes.

### Authorization Types

<%= authorization_types(provider: true, patient: true, system: true) %>

### Headers

<%= headers %>

### Example

#### Request

    GET https://fhir-open.cerner.com/r4/ec2458f2-1e24-41c8-b71b-0e701af7583d/MedicationRequest/56770371

#### Response

<%= headers status: 200 %>
<%= json(:R4_MEDICATION_REQUEST_ENTRY) %>
<%= disclaimer %>

#### Patient Authorization Request For Active Status

    GET https://fhir-ehr.cerner.com/r4/ec2458f2-1e24-41c8-b71b-0e701af7583d/MedicationRequest/314010287

#### Response

<%= headers status: 200 %>
<%= json(:R4_MEDICATION_REQUEST_PATIENT_ENTRY) %>
<%= disclaimer %>

#### Patient Authorization Request For Entered in Error Status

  GET https://fhir-ehr.cerner.com/r4/ec2458f2-1e24-41c8-b71b-0e701af7583d/MedicationRequest/261542609

#### Response

<%= headers status: 200 %>
<%= json(:R4_MEDICATION_REQUEST_ENTERED_IN_ERROR) %>
<%= disclaimer %>

### Errors

The common [errors] and [OperationOutcomes] may be returned.

## Create

Create an individual MedicationRequest.

    POST /MedicationRequest

### Authorization Types

<%= authorization_types(provider: true, patient: false, system: true) %>

### Headers

<%= headers head: {Authorization: '&lt;OAuth2 Bearer Token>', 'Content-Type': 'application/fhir+json'} %>

### Body Fields

<%= definition_table(:medication_request, :create, :r4) %>

### Example

#### Request

    POST https://fhir-ehr-code.cerner.com/r4/ec2458f2-1e24-41c8-b71b-0e701af7583d/MedicationRequest

#### Body

<%= json(:r4_medication_request_create) %>

#### Response

<%= headers status: 201 %>
<pre class="terminal">
Cache-Control: no-cache
Content-Length: 0
Content-Type: application/fhir+json
Date: Wed, 27 Mar 2019 15:59:33 GMT
Etag: W/"0"
Last-Modified: Wed, 27 Mar 2019 15:59:30 GMT
Location: https://fhir-ehr-code.cerner.com/r4/ec2458f2-1e24-41c8-b71b-0e701af7583d/MedicationRequest/4595905
Vary: Origin
X-Request-Id: 1638e30e497b93ff4383b2ff0eaeea68
</pre>

<%= disclaimer %>

### Errors

The common [errors] and [OperationOutcomes] may be returned.

## Patch

Patch an existing medication request.

    PATCH /MedicationRequest/:id

_Implementation Notes_

* This implementation follows the [JSON PATCH](https://tools.ietf.org/html/rfc6902) spec.
* Only operations on the paths listed below are supported.

### Authorization Types

<%= authorization_types(provider: true, system: true) %>

### Headers

<%= headers head: {Authorization: '&lt;OAuth2 Bearer Token>', 'Accept': 'application/fhir+json', 'Content-Type': 'application/json-patch+json', 'If-Match': 'W/"&lt;Current version of the MedicationRequest resource>"'} %>

### Patch Operations

<%= patch_definition_table(:medication_request_patch, :r4) %>

### Example

#### Request

    PATCH https://fhir-ehr.cerner.com/r4/ec2458f2-1e24-41c8-b71b-0e701af7583d/MedicationRequest/1621910

#### Body

<%= json(:r4_medication_request_patch) %>

#### Response

<%= headers status: 200 %>
<pre class="terminal">
Cache-Control: no-cache
Content-Length: 0
Content-Type: text/html
Date: Tue, 26 Mar 2019 15:42:29 GMT
Etag: W/"10"
Last-Modified: Tue, 26 Mar 2019 15:42:27 GMT
Vary: Origin
X-Request-Id: 47306a14c8a2c3afd4ab85aa9594101d
</pre>

The `ETag` response header indicates the current `If-Match` version to use on subsequent updates.

### Errors

The common [errors] and [OperationOutcomes] may be returned.

[`token`]: http://hl7.org/fhir/R4/search.html#token
[`reference`]: http://hl7.org/fhir/R4/search.html#reference
[`date`]: http://hl7.org/fhir/R4/search.html#date
[`number`]: http://hl7.org/fhir/R4/search.html#number
[status]: https://www.hl7.org/fhir/r4/valueset-medicationrequest-status.html
[errors]: ../../#client-errors
[OperationOutcomes]: ../../#operation-outcomes
