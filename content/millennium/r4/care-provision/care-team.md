---
title: CareTeam | R4 API
---

# CareTeam

* TOC
{:toc}

## Overview

The R4 CareTeam resource can be used to represent care teams.

The CareTeam resource represents a patient’s care team members. Care team members or participants include practitioners (physicians, nurses, technicians, etc.), family members, friends, guardians, and the patient. The care team can be specific to an encounter or to the patient across all encounters (longitudinal).

The following fields are returned if valued:

* [Care Team id](http://hl7.org/fhir/resource-definitions.html#Resource.id) {:target="_blank"}
* [Status (Active)](http://hl7.org/fhir/careteam-definitions.html#CareTeam.status) {:target="_blank"}
* [Category (Longitudinal or Encounter)](http://hl7.org/fhir/careteam-definitions.html#CareTeam.category) {:target="_blank"}
* [Name (Encounter-Level Only)](http://hl7.org/fhir/careteam-definitions.html#CareTeam.name) {:target="_blank"}
* [Subject](http://hl7.org/fhir/careteam-definitions.html#CareTeam.subject) {:target="_blank"}
* [Encounter (Encounter-Level Only)]( http://hl7.org/fhir/careteam-definitions.html#CareTeam.encounter) {:target="_blank"}
* [Participant](http://hl7.org/fhir/careteam-definitions.html#CareTeam.participant) {:target="_blank"}
  * [Role](http://hl7.org/fhir/careteam-definitions.html#CareTeam.participant.role) {:target="_blank"}
  * [Member](http://hl7.org/fhir/careteam-definitions.html#CareTeam.participant.member) {:target="_blank"}

## Terminology Bindings

<%= terminology_table(:care_team, :r4) %>


## Search

Search for CareTeams that meet supplied query parameters:

    GET /CareTeam?:parameters

_Implementation Notes_

* The [CareTeam.activity] element is not supported and will not be returned. This means that the [CareTeam.activity.detail.status] and [CareTeam.activity.detail.prohibited] modifier elements will not be returned.

* The description of the CareTeam is included in the [CareTeam.text.div] element as ASCII text.

### Authorization Types

<%= authorization_types(provider: true, system: true) %>

### Parameters

 Name         | Required? | Type          | Description
--------------|-----------|---------------|--------------
 `_id`        | See notes | [`token`]     | The logical resource id associated with the resource.
 `patient`    | See notes | [`reference`] | Who care team is for. Example: `patient=12345`
 `encounter`  | See notes | [`reference`] | Who care team is for. Example: `encounter=98765`
 `category`   | N         | [`token`]     | The scope of care team being searched for. Examples: `category=assess-team`
 `status`     | N         | [`token`]     | Indicates the status of the care team


Notes:

- The `_id` parameter
  - This is required if patient or encounter are not provided.

- The `patient` parameter
  - This is required when `_id` is not provided.
  - This can be combined with status as per US Core guidelines.
  - This can be combined with the category parameter.

- The `encounter` parameter
  - This is required when `_id` is not provided.
  - This cannot be combined with category or status.

- The `category` parameter
  - Only supports the codes longitudinal and encounter.
  - Can only be used with the patient parameter.
  - The longitudinal and encounter codes are defined by the CareTeam category system.

### Headers

 <%= headers %>

### Example retrieve care team

#### Request

    GET https://fhir-open.sandboxcerner.com/r4/ec2458f2-1e24-41c8-b71b-0e701af7583d/CareTeam?patient=1316020&category=assess-team

#### Response

<%= headers status: 200 %>
<%= json(:r4_care_team_bundle) %>

<%= disclaimer %>

### Errors

The common [errors] and [OperationOutcomes] may be returned.

## Retrieve by id

List an individual CareTeam by its id:

    GET /CareTeam/:id

### Authorization Types

<%= authorization_types(provider: true, system: true) %>

### Headers

<%= headers %>

### Example

#### Request

    GET https://fhir-open.sandboxcerner.com/r4/ec2458f2-1e24-41c8-b71b-0e701af7583d/CareTeam/SA-1316020-2076906-7016273-0-0-0

#### Response

<%= headers status: 200 %>
<%= json(:r4_care_team_entry) %>

<%= disclaimer %>

### Errors

The common [errors] and [OperationOutcomes] may be returned.

[CareTeam.activity]: https://www.hl7.org/fhir/careteam-definitions.html#CareTeam.activity
[CareTeam.activity.detail.status]: https://www.hl7.org/fhir/careteam-definitions.html#CareTeam.activity.detail.status
[CareTeam.activity.detail.prohibited]: https://www.hl7.org/fhir/careteam-definitions.html#CareTeam.activity.detail.prohibited
[CareTeam.participant]: http://hl7.org/fhir/r4/careteam-definitions.html#CareTeam.participant
[CareTeam.text.div]: https://www.hl7.org/fhir/careteam-definitions.html#CareTeam.text.div
[`token`]: http://hl7.org/fhir/r4/search.html#token
[`reference`]: http://hl7.org/fhir/r4/search.html#reference
[`number`]: http://hl7.org/fhir/r4/search.html#number
[errors]: ../../#client-errors
[OperationOutcomes]: ../../#operation-outcomes
