---
title: Encounter | DSTU 2 API
---

# Encounter

* TOC
{:toc}

## Overview

The Encounter resource provides admissions or visits during which health care services were provided to a patient. An encounter has a class to distinguish between different health care settings such as inpatient, outpatient, emergency, and so on. A patient may have one medical record number with multiple encounter numbers per facility or organization. There is substantial variance between organizations in the definition of an encounter and what events are aggregated together to constitute an encounter.

The following fields are returned if valued:

* [Encounter ID](http://hl7.org/fhir/dstu2/resource-definitions.html#Resource.id){:target="_blank"}
* [Encounter identifier (eg: FIN)](http://hl7.org/fhir/DSTU2/encounter-definitions.html#Encounter.identifier){:target="_blank"}
* [Status](http://hl7.org/fhir/DSTU2/encounter-definitions.html#Encounter.status){:target="_blank"}
* [Class](http://hl7.org/fhir/DSTU2/encounter-definitions.html#Encounter.class){:target="_blank"}
* [Type](http://hl7.org/fhir/dstu2/encounter-definitions.html#Encounter.type){:target="_blank"}
* [Priority](http://hl7.org/fhir/dstu2/encounter-definitions.html#Encounter.priority){:target="_blank"}
* [Patient](http://hl7.org/fhir/DSTU2/encounter-definitions.html#Encounter.patient){:target="_blank"}
* Participants:
     * [Type](http://hl7.org/fhir/DSTU2/encounter-definitions.html#Encounter.participant.type){:target="_blank"}
     * [Name](http://hl7.org/fhir/DSTU2/encounter-definitions.html#Encounter.participant.individual){:target="_blank"}
* [Start/end time of the encounter](http://hl7.org/fhir/DSTU2/encounter-definitions.html#Encounter.period){:target="_blank"}
* [Discharge disposition](http://hl7.org/fhir/DSTU2/encounter-definitions.html#Encounter.hospitalization.dischargeDisposition){:target="_blank"}
* [Reason for visit](http://hl7.org/fhir/DSTU2/encounter-definitions.html#Encounter.reason){:target="_blank"}
* [Location](http://hl7.org/fhir/DSTU2/encounter-definitions.html#Encounter.location.location){:target="_blank"}
* [Organization](http://hl7.org/fhir/DSTU2/encounter-definitions.html#Encounter.serviceProvider){:target="_blank"}
* Hospitalization:
   * [Admit source](http://hl7.org/fhir/dstu2/encounter-definitions.html#Encounter.hospitalization.admitSource){:target="_blank"}
   * [Diet preference](http://hl7.org/fhir/dstu2/encounter-definitions.html#Encounter.hospitalization.dietPreference){:target="_blank"}
   * [Special Courtesy](http://hl7.org/fhir/dstu2/encounter-definitions.html#Encounter.hospitalization.specialCourtesy){:target="_blank"}
   * [Special Arrangement](http://hl7.org/fhir/dstu2/encounter-definitions.html#Encounter.hospitalization.specialArrangement){:target="_blank"}
   * [Destination](http://hl7.org/fhir/dstu2/encounter-definitions.html#Encounter.hospitalization.destination){:target="_blank"}

## Terminology Bindings

<%= terminology_table(:encounter, :dstu2) %>

### Contained Location Bindings

<%= terminology_table(:encounter_contained_location, :dstu2) %>


## Extensions

* [Encounter guarantor]

### Custom Extensions

All URLs for custom extensions are defined as `https://fhir-ehr.cerner.com/dstu2/StructureDefinition/{id}`

Extension                                        | Value\[x] Type                                            | Description
-------------------------------------------------|-----------------------------------------------------------|---------------------------------------------------------------------
Encounter Guarantor (id: `encounter-guarantor`)  | None (contains nested extensions)                         | The guarantors of the encounter.
Encounter Guarantor Party                        | [`Reference`](http://hl7.org/fhir/DSTU2/references.html)  | A reference to a Patient, Person, or Organization.
Encounter Guarantor Period                       | [`Period`]                                                | The period when this encounter guarantor is effective.

## Search

Search for Encounters that meet supplied query parameters:

    GET /Encounter?:parameters

_Implementation Notes_

* The [Encounter.hospitalization.destination] will be returned as a reference to a [contained] location resource.
* The [Encounter.location.location] may be returned as a reference to a [contained] location resource.

### Authorization Types

<%= authorization_types(provider: true, patient: true, system: true)%>

### Parameters

 Name      | Required       | Type          | Description
-----------|-----------------|---------------|---------------------------------------------------------------------------
 `_id`     | Conditional     | [`token`]     | The logical resource ID associated with the Encounter. This parameter is required if `patient` is not used. Example: `7891`
 `patient` | Conditional     | [`reference`] | The Patient present at the Encounter. This parameter is required if `_id` is not used. Example: `12345`

### Headers

 <%= headers %>

### Example

#### Request

    GET https://fhir-open.cerner.com/dstu2/ec2458f2-1e24-41c8-b71b-0e701af7583d/Encounter?patient=12724066

#### Response

<%= headers status: 200 %>
<%= json(:dstu2_encounter_bundle) %>

<%= disclaimer %>

### Errors

The common [errors] and [OperationOutcomes] may be returned.

## Retrieve by ID

List an individual Encounter by the associated ID:

    GET /Encounter/:id

_Implementation Notes_

* The [Encounter.hospitalization.destination] will be returned as a reference to a [contained] location resource.
* The [Encounter.location.location] may be returned as a reference to a [contained] location resource.

### Authorization Types

<%= authorization_types(provider: true, patient: true, system: true)%>

### Headers

<%= headers %>

### Example

#### Request

    GET https://fhir-open.cerner.com/dstu2/ec2458f2-1e24-41c8-b71b-0e701af7583d/Encounter/97953477

#### Response

<%= headers status: 200 %>
<%= json(:dstu2_encounter) %>

<%= disclaimer %>

### Encounter Combines Example

Cerner Millennium supports the ability to logically merge an encounter record into another encounter record when both records are describing the same encounter. This is known
as an encounter combine. If necessary, this merging can later be undone by performing an encounter uncombine. When the requested encounter record has been combined into another
record, an inactive encounter entry is returned which has a reference to the current encounter entry in the `partOf` field. Entries for combined encounters will only be returned when retrieving
the entries directly by ID. They will not be returned when searching with other parameters.

#### Request

    GET https://fhir-open.cerner.com/dstu2/ec2458f2-1e24-41c8-b71b-0e701af7583d/Encounter/97865451

#### Response

<%= headers status: 200 %>
<%= json(:dstu2_combined_encounter) %>

### Errors

The common [errors] and [OperationOutcomes] may be returned.

[contained]: http://hl7.org/fhir/DSTU2/references.html#contained
[Encounter.hospitalization.destination]: http://hl7.org/fhir/DSTU2/encounter-definitions.html#Encounter.hospitalization.destination
[Encounter.location.location]: http://hl7.org/fhir/DSTU2/encounter-definitions.html#Encounter.location.location
[`Period`]: http://hl7.org/fhir/DSTU2/datatypes.html#period
[`reference`]: http://hl7.org/fhir/DSTU2/search.html#reference
[`token`]: http://hl7.org/fhir/DSTU2/search.html#token
[errors]: ../../#client-errors
[OperationOutcomes]: ../../#operation-outcomes
[Encounter guarantor]: ../../#custom-extensions
