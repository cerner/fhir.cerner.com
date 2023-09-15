---
title: CareTeam | R4 API
---

# CareTeam

* TOC
{:toc}

## Overview

The R4 CareTeam resource represents a patient's care team members. Care team members or participants include practitioners (physicians, nurses, technicians, etc.), family members, friends, guardians, and the patient. The care team can be specific to an encounter or to the patient across all encounters (longitudinal).

* The following [HL7® FHIR® US Core Implementation Guide STU 4.0.0](https://hl7.org/fhir/us/core/STU4/) Profiles are supported by this resource:
  * [US Core CareTeam Profile](http://hl7.org/fhir/us/core/STU4/StructureDefinition-us-core-careteam.html)

The following fields are returned if valued:

* [Care Team id](http://hl7.org/fhir/resource-definitions.html#Resource.id){:target="_blank"}
* [Status (Active)](http://hl7.org/fhir/careteam-definitions.html#CareTeam.status){:target="_blank"}
* [Category (Longitudinal or Encounter)](http://hl7.org/fhir/careteam-definitions.html#CareTeam.category){:target="_blank"}
* [Name (Encounter-Level Only)](http://hl7.org/fhir/careteam-definitions.html#CareTeam.name){:target="_blank"}
* [Subject](http://hl7.org/fhir/careteam-definitions.html#CareTeam.subject){:target="_blank"}
  * [Reference](http://hl7.org/fhir/references.html#Reference){:target="_blank"} ([Patient](http://hl7.org/fhir/patient.html){:target="_blank"})
* [Encounter (Encounter-Level Only)]( http://hl7.org/fhir/careteam-definitions.html#CareTeam.encounter){:target="_blank"}
* [Participant](http://hl7.org/fhir/careteam-definitions.html#CareTeam.participant){:target="_blank"}
  * [Role](http://hl7.org/fhir/careteam-definitions.html#CareTeam.participant.role){:target="_blank"}
  * [Member](http://hl7.org/fhir/careteam-definitions.html#CareTeam.participant.member){:target="_blank"}
    * [Reference](http://hl7.org/fhir/references.html#Reference){:target="_blank"} ([Practitioner](http://hl7.org/fhir/r4/practitioner.html){:target="_blank"} \| [RelatedPerson](http://hl7.org/fhir/relatedperson.html){:target="_blank"})
  * [Period](http://hl7.org/fhir/careteam-definitions.html#CareTeam.participant.period){:target="_blank"}

## Terminology Bindings

<%= terminology_table(:care_team, :r4) %>

## Search

Search for CareTeams that meet supplied query parameters:

    GET /CareTeam?:parameters

_Implementation Notes_

* The CareTeam search returns the active Care Teams only.

### Authorization Types

<%= authorization_types(provider: true, patient: true, system: true) %>

### Parameters

 Name         | Required? | Type          | Description
--------------|-----------|---------------|--------------
 `_id`        | Required if `patient` or `encounter` is not present | [`token`]     | The logical resource id associated with the resource.
 `patient`    | Required if `_id` or `encounter` is not present     | [`reference`] | Who care team is for. Example: `patient=12345`
 `encounter`  | Required if `_id` or `patient` is not present       | [`reference`] | Who care team is for. Example: `encounter=98765`
 `category`   | N                                                   | [`token`]     | The scope of care team being searched for. Examples: `category=longitudinal`
 `status`     | N                                                   | [`token`]     | Indicates the status of the care team
`_revinclude` | N                                                   | [`token`]     | Provenance resource entries to be returned as part of the bundle. Example:_revinclude=Provenance:target

Notes:

* The `_id` parameter
  * This is required if `patient` or `encounter` are not provided.

* The `patient` parameter
  * This is required when `_id` or `encounter` is not provided.
  * This can be combined with `status` as per US Core guidelines.
  * This can be combined with the `category` parameter.

* The `encounter` parameter
  * This is required when `_id` or `patient` is not provided.
  * This cannot be combined with `category` or status.

* The `category` parameter
  * Only supports the codes longitudinal and encounter.
  * Can only be used with the `patient` parameter.
  * The longitudinal and encounter codes are defined by the CareTeam category system.

* The `_revinclude` parameter 
  * May be provided once with the value `Provenance:target`. Example: `_revinclude=Provenance:target`
  * May be provided with the `_id/patient` parameter. Example: `_id=LIFETIME_PROVIDER-4169494-0-4105597-0-0-0&_revinclude=Provenance:target`

* When `_revinclude` is provided in a request to the closed endpoint, the OAuth2 token must include the `user/Provenance.read` scope. Currently `patient/Provenance.read` is not supported and hence `_revinclude` cannot be utilised for patient persona.

### Headers

 <%= headers %>

### Example

#### Request

    GET https://fhir-open.cerner.com/r4/ec2458f2-1e24-41c8-b71b-0e701af7583d/CareTeam?patient=119078440&category=encounter

#### Response

<%= headers status: 200 %>
<%= json(:r4_care_team_bundle) %>

<%= disclaimer %>

### Example with RevInclude

### Authorization Types

<%= authorization_types(provider: true, system: true) %>

#### Request

    GET https://fhir-ehr.cerner.com/r4/ec2458f2-1e24-41c8-b71b-0e701af7583d/CareTeam?_id=LIFETIME_PROVIDER-4169494-0-4105597-0-0-0&_revinclude=Provenance:target

#### Response

<%= headers status: 200 %>
<%= json(:r4_care_team_revinclude_bundle) %>
<%= disclaimer %>

#### Patient Authorization Request

    GET https://fhir-ehr.cerner.com/r4/ec2458f2-1e24-41c8-b71b-0e701af7583d/CareTeam?patient=4169494

#### Response

<%= headers status: 200 %>
<%= json(:r4_care_team_patient_bundle) %>

<%= disclaimer %>

### Errors

The common [errors] and [OperationOutcomes] may be returned.

## Retrieve by id

List an individual CareTeam by its id:

    GET /CareTeam/:id

_Implementation Notes_

* The CareTeam read returns the active Care Teams only.

### Authorization Types

<%= authorization_types(provider: true, patient: true, system: true) %>

### Headers

<%= headers %>

### Example

#### Request

    GET https://fhir-open.cerner.com/r4/ec2458f2-1e24-41c8-b71b-0e701af7583d/CareTeam/CARE_TEAM-119078440-34768489-17490349-4048128-0-22554767

#### Response

<%= headers status: 200 %>
<%= json(:r4_care_team_entry) %>

<%= disclaimer %>

#### Patient Authorization Request

    GET https://fhir-ehr.cerner.com/r4/ec2458f2-1e24-41c8-b71b-0e701af7583d/CareTeam/LIFETIME_PROVIDER-4169494-0-3038500-0-0-0

#### Response

<%= headers status: 200 %>
<%= json(:r4_care_team_patient_entry) %>

<%= disclaimer %>

### Errors

The common [errors] and [OperationOutcomes] may be returned.

[CareTeam.participant]: http://hl7.org/fhir/r4/careteam-definitions.html#CareTeam.participant
[CareTeam.text.div]: https://www.hl7.org/fhir/careteam-definitions.html#CareTeam.text.div
[`token`]: http://hl7.org/fhir/r4/search.html#token
[`reference`]: http://hl7.org/fhir/r4/search.html#reference
[`number`]: http://hl7.org/fhir/r4/search.html#number
[errors]: ../../../#client-errors
[OperationOutcomes]: ../../../#operation-outcomes
