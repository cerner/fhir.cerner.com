---
title: Clinical | R4 API
layout: api
---

<%= render '/soarian/r4/clinical.*' %>

## Summary
<%= render '/soarian/r4/clinical/summary.*' %>

* [AllergyIntolerance](/soarian/r4/clinical/summary/allergy-intolerance)
* [Condition](/soarian/r4/clinical/summary/condition)
* [Procedure](/soarian/r4/clinical/summary/procedure)
* [Observation](/soarian/r4/clinical/diagnostics/observation)

## Medications
<%= render '/soarian/r4/clinical/medications.*' %>

* [MedicationRequest](/soarian/r4/clinical/medications/medicationrequest)
* [Immunization](/soarian/r4/clinical/medications/immunization)

## Care Provision
<%= render '/soarian/r4/clinical/care-provision.*' %>

* [CarePlan](/soarian/r4/clinical/care-provision/care-plan)
* [CareTeam](/soarian/r4/clinical/care-provision/careteam)
* [Goal](/soarian/r4/clinical/care-provision/goal)
