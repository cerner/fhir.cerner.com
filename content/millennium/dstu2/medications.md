---
title: Medications
layout: api
---

# Medications

Resources in the Medications category are used to support the immunization and medication processes. Some notable boundaries:

* The MedicationOrder resource is used to represent any prescribed medication (inpatient, outpatient, or prescription medications taken at home).
* The MedicationStatement resource represents the medication list as known at a point in time. This includes both known prescribed medications (anything in MedicationOrder) as well as patient stated or historical medications.

Click [here](http://hl7.org/fhir/dstu2/resourceguide.html#3.1.2.3) to see the detailed categorization and full set of 
resources that fall into this category in the HL7<sup>®</sup> FHIR<sup>®</sup> Standard.

## Implemented Resources
* [Immunization](../medications/immunization)
* [MedicationOrder](../medications/medication-order)
* [MedicationStatement](../medications/medication-statement)