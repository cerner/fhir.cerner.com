---
title: CarePlan | DSTU 2 API
---

# CarePlan

* TOC
{:toc}

## Overview

The DSTU2 CarePlan resource can be used to represent both care plans and care teams.

### Care Plans

The CarePlan resource describes the intentions of how one or more practitioners plan to deliver care to a specific patient. Care plans are used in a variety of areas and scopes ranging from encounter or visit specific to cross-visits.  Care plans are used to group activities, goals and/or practitioners to create context. Care plans are intended to be specific to the patient. It is possible for a planned activity to stand alone without a care plan such as a scheduled appointment.  

The following fields are returned if valued:

* [Id](http://hl7.org/fhir/dstu2/resource-definitions.html#Resource.id){:target="_blank"}
* [Subject (patient only)](http://hl7.org/fhir/dstu2/careplan-definitions.html#CarePlan.subject){:target="_blank"}
* [Status](http://hl7.org/fhir/dstu2/careplan-definitions.html#CarePlan.status){:target="_blank"}
* [Context (patient encounter)](http://hl7.org/fhir/dstu2/careplan-definitions.html#CarePlan.context){:target="_blank"}
* [Date/Time created](http://hl7.org/fhir/dstu2/careplan-definitions.html#CarePlan.period){:target="_blank"}
* [Author](http://hl7.org/fhir/dstu2/careplan-definitions.html#CarePlan.author){:target="_blank"}
* [Date/Time last modified](http://hl7.org/fhir/dstu2/careplan-definitions.html#CarePlan.modified){:target="_blank"}
* [Category (assess-plan)](http://hl7.org/fhir/dstu2/careplan-definitions.html#CarePlan.category){:target="_blank"}
* [Care plan](http://hl7.org/fhir/dstu2/careplan-definitions.html#CarePlan.relatedPlan.plan){:target="_blank"}

### Care Teams

The CareTeam resource will be available in the STU3 version to represent care team members. Meanwhile, the CarePlan resource will be used to identify the care team members in DSTU2. Care team members or participants include practitioners (physicians, nurses, technicians, etc.), family members, friends, guardians, and the patient. The care team can be specific to an encounter or the patient across all encounters (longitudinal).

The following fields are returned if valued:

* [Id](http://hl7.org/fhir/dstu2/resource-definitions.html#Resource.id){:target="_blank"}
* [Subject (patient only)](http://hl7.org/fhir/dstu2/careplan-definitions.html#CarePlan.subject){:target="_blank"}
* [Status](http://hl7.org/fhir/dstu2/careplan-definitions.html#CarePlan.status){:target="_blank"}
* [Context (patient encounter)](http://hl7.org/fhir/dstu2/careplan-definitions.html#CarePlan.context){:target="_blank"}
* [Time period](http://hl7.org/fhir/dstu2/careplan-definitions.html#CarePlan.period){:target="_blank"}
* [Last modified](http://hl7.org/fhir/dstu2/careplan-definitions.html#CarePlan.modified){:target="_blank"}
* [Category (careteam, longitudinal, or encounter)](http://hl7.org/fhir/dstu2/careplan-definitions.html#CarePlan.category){:target="_blank"}
* [Participant](http://hl7.org/fhir/dstu2/careplan-definitions.html#CarePlan.participant){:target="_blank"}
* Participant details (only applies to references to contained RelatedPerson)
  * [Patient](http://hl7.org/fhir/dstu2/relatedperson-definitions.html#RelatedPerson.patient){:target="_blank"}
  * [Name](http://hl7.org/fhir/dstu2/relatedperson-definitions.html#RelatedPerson.name){:target="_blank"}
  * [Contact information (eg: telephone)](http://hl7.org/fhir/dstu2/relatedperson-definitions.html#RelatedPerson.telecom){:target="_blank"}
* [Participant Role](http://hl7.org/fhir/dstu2/careplan-definitions.html#CarePlan.participant.role){:target="_blank"}

## Terminology Bindings

<%= terminology_table(:care_plan, :dstu2) %>


## Search

Search for CarePlans that meet supplied query parameters:

    GET /CarePlan?:parameters

_Implementation Notes_

* The [CarePlan.activity] element is not supported and will not be returned. This means that the [CarePlan.activity.detail.status] and [CarePlan.activity.detail.prohibited] modifier elements will not be returned.

* The description of the CarePlan is included in the [CarePlan.text.div] element as ASCII text.

* In DSTU2 CareTeam is not a stand alone resource. It is a CarePlan with participants. A CareTeam will be returned only if a CareTeam specific category code is supplied.

* A CareTeam participant ([CarePlan.participant]) may have a reference to a [contained] RelatedPerson.

### Authorization Types

<%= authorization_types(provider: true, patient: true, system: true) %>

### Parameters

 Name         | Required? | Type          | Description
--------------|-----------|---------------|--------------
 `_id`        | See notes | [`token`]     | The logical resource id associated with the resource.
 `date`       | N         | [`date`]      | Time period plan covers. Example: `date=ge2016-08` or `date=le2017-01-24T12:00:00.000Z`
 `patient`    | See notes | [`reference`] | Who care plan is for. Example: `patient=12345`
 `subject`    | See notes | [`reference`] | Who care plan is for. Must represent a Patient resource. May use the `:Patient` modifier. Example: `subject=Patient/12345` or `subject:Patient=12345`
 [`_count`]   | N         | [`number`]    | Number of results per page.
 `category`   | See notes | [`token`]     | The scope of care plan being searched for. Examples: `category=assess-plan`, `category=http://argonaut.hl7.org|careteam`, `category=http://hl7.org/fhir/care-team-category|longitudinal`, or `category=careteam`
 `context`    | See notes | [`reference`] | The encounter id of the care plan. Example: `context=1138`


Notes:

- The `_id` parameter
  - May not be provided with the `category`, `context`, `date`, `patient`, or `subject` parameters.
  - When provided, `_count` is ignored.

- The `date` parameter
  - May be provided up to two times, and must use the `ge` or `le` prefixes.
    - When provided twice, the lower value must have the `ge` prefix and the higher value must have the `le` prefix.
  - Will be ignored if `category` is set to `encounter`.

- The `patient` parameter
  - Unless the `subject` parameter is provided, this is required when `category` is set to `careteam`, `assess-plan`, or `longitudinal`.
  - Cannot be provided with the `subject` parameter.

- The `subject` parameter
  - Unless the `patient` parameter is provided, this is required when `category` is set to `careteam`, `assess-plan`, or `longitudinal`.
  - Cannot be provided with the `patient` parameter.

- The `category` parameter
  - Must be provided when `_id` is not provided.
  - Only supports the codes `careteam`, `assess-plan`, `longitudinal`, and `encounter`.
    -  The `careteam` and `assess-plan` codes belong to the [Argonaut system]. `longitudinal` and `encounter` are defined by the [CareTeam category system].

- The `context` parameter
  - Must be set if the `category` parameter is set to `encounter`.
  - Cannot be set if the `category` parameter is set to `careteam`, `assess-plan`, or `longitudinal`.

### Headers

 <%= headers %>

### Example retrieve care plan

#### Request

    GET https://fhir-open.cerner.com/dstu2/ec2458f2-1e24-41c8-b71b-0e701af7583d/CarePlan?patient=12724066&category=assess-plan

#### Response

<%= headers status: 200 %>
<%= json(:dstu2_care_plan_bundle) %>

<%= disclaimer %>

### Example retrieve care teams

#### Request

    GET https://fhir-open.cerner.com/dstu2/ec2458f2-1e24-41c8-b71b-0e701af7583d/CarePlan?patient=12724066&category=careteam

#### Response

<%= headers status: 200 %>
<%= json(:dstu2_care_team_bundle) %>

<%= disclaimer %>

### Errors

The common [errors] and [OperationOutcomes] may be returned.

## Retrieve by id

List an individual CarePlan by its id:

    GET /CarePlan/:id

### Authorization Types

<%= authorization_types(provider: true, patient: true, system: true) %>

### Headers

<%= headers %>

### Example

#### Request

    GET https://fhir-open.cerner.com/dstu2/ec2458f2-1e24-41c8-b71b-0e701af7583d/CarePlan/197286315

#### Response

<%= headers status: 200 %>
<%= json(:dstu2_care_plan_entry) %>

<%= disclaimer %>

### Errors

The common [errors] and [OperationOutcomes] may be returned.

[CarePlan.activity]: https://www.hl7.org/fhir/careplan-definitions.html#CarePlan.activity
[CarePlan.activity.detail.status]: https://www.hl7.org/fhir/careplan-definitions.html#CarePlan.activity.detail.status
[CarePlan.activity.detail.prohibited]: https://www.hl7.org/fhir/careplan-definitions.html#CarePlan.activity.detail.prohibited
[CarePlan.participant]: http://hl7.org/fhir/dstu2/careplan-definitions.html#CarePlan.participant
[CarePlan.text.div]: https://www.hl7.org/fhir/careplan-definitions.html#CarePlan.text.div
[contained]: http://hl7.org/fhir/DSTU2/references.html#contained
[Argonaut profile]: http://build.fhir.org/ig/Healthedata1/Argo-DSTU2/StructureDefinition-argo-careteam.html
[Argonaut system]: http://www.fhir.org/guides/argonaut/r2/ValueSet-argo-codesystem.html
[CareTeam category system]: http://hl7.org/fhir/stu3/valueset-care-team-category.html
[`token`]: http://hl7.org/fhir/DSTU2/search.html#token
[`date`]: http://hl7.org/fhir/DSTU2/search.html#date
[`reference`]: http://hl7.org/fhir/DSTU2/search.html#reference
[`_count`]: http://hl7.org/fhir/DSTU2/search.html#count
[`number`]: http://hl7.org/fhir/DSTU2/search.html#number
[errors]: ../../#client-errors
[OperationOutcomes]: ../../#operation-outcomes
