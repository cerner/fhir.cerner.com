---
title: Goal | DSTU 2 API
---

# Goal

* TOC
{:toc}

## Terminology Bindings

<%= terminology_table(:goal, :dstu2) %>

## Search

Search for Goals that meet supplied query parameters:

    GET /Goal?:parameters

### Parameters

 Name              | Required?                                | Type          | Description
-------------------|------------------------------------------|---------------|---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
 `_id`             | This, or one of `patient`, or `subject`. | [`token`]     | The logical resource id associated with the Goal. Example: `_id=24110557`
 `patient`         | This, or one of `_id`, or `subject`.     | [`reference`] | The patient who has the goal. Example: `patient=1316024`
 `subject:Patient` | This, or one of `_id`, or `patient`.     | [`reference`] | The subject who this goal is intended for. Must represent a Patient resource. May use the `:Patient` modifier. Example: `subject=Patient/1316020` or `subject:Patient=1316020`
 `targetdate`      | N                                        | [`date`]      | A date or date range from which to find Goals. Example: `targetdate=ge2016-10-01&targetdate=le2016-12-01`
 
Notes:

  - The `_id` parameter may not be provided at the same time as the `patient`, `subject`, or `targetdate` parameters.

  - The `targetDate` parameter may be provided once with a prefix to imply a date range or without a prefix to search for goals at a specific date. Alternately it may be provided twice with `le`, `lt`, `ge`, or `gt` prefixes to search for goals within specific range. The date and prefix pairs must create a closed range.

### Response

<%= headers status: 200, head: {Functionality: 'Search by patient'} %>
<%= json(:dstu2_goal_bundle) %>
<%= headers status: 200, head: {Functionality: 'Search by id'} %>
<%= json(:dstu2_goal_bundle_by_id) %>

## Retrieve by id

List an individual Goal by its id:

    GET /Goal/:id

### Response

<%= headers status: 200 %>
<%= json(:dstu2_goal) %>

[`date`]: http://hl7.org/fhir/dstu2/search.html#date
[`reference`]: http://hl7.org/fhir/DSTU2/search.html#reference
[`token`]: http://hl7.org/fhir/DSTU2/search.html#token
