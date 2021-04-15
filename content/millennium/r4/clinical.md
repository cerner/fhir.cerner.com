---
title: Clinical | R4 API
layout: api
---

<%= render '/millennium/r4/clinical.*' %>

## Summary
<%= render '/millennium/r4/clinical/summary.*' %>

* [AllergyIntolerance](../clinical/summary/allergy-intolerance)
* [Condition](../clinical/summary/condition)
* [Procedure](../clinical/summary/procedure)

## Diagnostics

<%= render '/millennium/r4/clinical/diagnostics.*' %>

* [Observation](../clinical/diagnostics/observation)

## Medications

<%= render '/millennium/r4/clinical/medications.*' %>

* [MedicationRequest](../clinical/medications/medication-request)
* [Immunization](../clinical/medications/immunization)

## Care Provision

<%= render '/millennium/r4/clinical/care-provision.*' %>

* [CarePlan](../clinical/care-provision/care-plan)
* [CareTeam](../clinical/care-provision/care-team)
* [Goal](../clinical/care-provision/goal)
* [ServiceRequest](../clinical/care-provision/service-request)
* [NutritionOrder](../clinical/care-provision/nutrition-order)


## Request & Response

<%= render '/millennium/r4/clinical/request-and-response.*' %>

* [Communication](../clinical/request-and-response/communication)
