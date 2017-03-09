---
title: CarePlan | DSTU 2 API
---

# CarePlan

* TOC
{:toc}

## Terminology Bindings

<%= terminology_table(:care_plan, :dstu2) %>

## Search

Search for CarePlans that meet supplied query parameters:

    GET /CarePlan?:parameters

_Implementation Notes_

* The [CarePlan.activity] element is not supported and will not be returned. This means that the [CarePlan.activity.detail.status] and [CarePlan.activity.detail.prohibited] modifier elements will not be returned.

* The description of the CarePlan is included in the [CarePlan.text.div] element as ASCII text.

* In DSTU2 CareTeam is not a stand alone resource. It is a CarePlan with participants. A CareTeam will be returned only if a CareTeam specific category code is supplied.

### Parameters

 Name         | Required?                              | Type          | Description
--------------|----------------------------------------|---------------|-----------------------------------------------------------------------------------------------------------------------------------------------------------
 `_id`        | This, or one of `patient` or `subject` | [`token`]     | The logical resource id associated with the resource.
 `date`       | N                                      | [`date`]      | Time period plan covers. Example: `date=ge2016-08` or `date=le2017-01-24T12:00:00.000Z`
 `patient`    | This, or one of `_id` or `subject`     | [`reference`] | Who care plan is for. Example: `patient=1316024`
 `subject`    | This, or one of `_id` or `patient`     | [`reference`] | Who care plan is for. Must represent a Patient resource. May use the `:Patient` modifier. Example: `subject=Patient/1316024` or `subject:Patient=1316024`
 [`_count`]   | N                                      | [`number`]    | Number of results per page. Defaults to `10`. Capped at `10`.
 `category`   | N                                      | [`token`]     | The scope of care plan being searched for. Examples: `category=assess-plan`, `category=http://argonaut.hl7.org|careteam`, `category=http://hl7.org/fhir/care-team-category|longitudinal`, or `category=careteam`
 `context`    | N                                      | [`reference`] | The encounter id of the care plan. Example: `context=1138`


Notes:

- The `_id` parameter may not be provided at the same time as the `category`, `date`, `patient`, or `subject` parameters.
  - When `_id` is provided, `_count` is ignored.

- The `patient` parameter is preferred when set simultaneously with `subject`.

- The `date` parameter may be provided up to two times, and must use the `ge` or `le` prefixes. When provided twice, the lower value must have the `ge` prefix and the higher value must have the `le` prefix.

- The `category` parameter only supports the codes `careteam`, `assess-plan`, `longitudinal`, and `encounter`. The `careteam` and `assess-plan` codes belong to the [Argonaut system]. `longitudinal` and `encounter` are defined by the [FHIR system].

### Response

<%= headers status: 200 %>
<%= json(:dstu2_care_plan_bundle) %>

<%= headers status: 200, head: {Functionality: 'CareTeam (CarePlan with participants)'} %>
<%= json(:dstu2_care_team_bundle) %>

## Retrieve by id

List an individual CarePlan by its id:

    GET /CarePlan/:id

### Response

<%= headers status: 200 %>
<%= json(:dstu2_care_plan_entry) %>

[CarePlan.activity]: https://www.hl7.org/fhir/careplan-definitions.html#CarePlan.activity
[CarePlan.activity.detail.status]: https://www.hl7.org/fhir/careplan-definitions.html#CarePlan.activity.detail.status
[CarePlan.activity.detail.prohibited]: https://www.hl7.org/fhir/careplan-definitions.html#CarePlan.activity.detail.prohibited
[CarePlan.text.div]: https://www.hl7.org/fhir/careplan-definitions.html#CarePlan.text.div
[Argonaut profile]: http://build.fhir.org/ig/Healthedata1/Argo-DSTU2/StructureDefinition-argo-careteam.html
[Argonaut system]: http://www.fhir.org/guides/argonaut/r2/ValueSet-argo-codesystem.html
[FHIR system]: http://hl7.org/fhir/care-team-category
[`token`]: http://hl7.org/fhir/DSTU2/search.html#token
[`date`]: http://hl7.org/fhir/DSTU2/search.html#date
[`reference`]: http://hl7.org/fhir/DSTU2/search.html#reference
[`_count`]: http://hl7.org/fhir/DSTU2/search.html#count
[`number`]: http://hl7.org/fhir/DSTU2/search.html#number
