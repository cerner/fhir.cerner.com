---
title: FamilyMemberHistory | R4 API
---

# FamilyMemberHistory

* TOC
{:toc}

## Overview

The FamilyMemberHistory resource represents family history for a given patient. It may provide a list of conditions associated to a patient's family member or the absence of a condition on a given individual. In other cases, the resource may indicate that there is no relevant family history, no significant history for a given relative, or that the patient’s family history is unknown or unable to obtain.

The resource should be leveraged as a snapshot in time and new data should be consistently retrieved through the API rather than stored within an application. There may be instances where a relative had an associated condition removed from the patient’s chart which would then no longer be exposed on a subsequent transaction. It is crucial that the data be refreshed with every interaction.

It is recommended that an update to FamilyMemberHistory contain all relevant data that previously existed on the resource to ensure that data remains populated in the patient's chart (e.g., FamilyMemberHistory.sex, FamilyMemberHistory.bornDate, FamilyMemberHistory.condition.onsetDate, etc.). The absence of this optional information may result in the removal of data from the patient's chart.

The following fields are returned if valued:

* [Id](https://hl7.org/fhir/r4/resource-definitions.html#Resource.id){:target="_blank"}
* [Status](https://hl7.org/fhir/r4/familymemberhistory-definitions.html#FamilyMemberHistory.status){:target="_blank"}
* [Data Absent Reason](https://hl7.org/fhir/r4/familymemberhistory-definitions.html#FamilyMemberHistory.dataAbsentReason){:target="_blank"}
* [Patient](https://hl7.org/fhir/r4/familymemberhistory-definitions.html#FamilyMemberHistory.patient){:target="_blank"}
* [Date](https://hl7.org/fhir/r4/familymemberhistory-definitions.html#FamilyMemberHistory.date){:target="_blank"}
* [Name](https://hl7.org/fhir/r4/familymemberhistory-definitions.html#FamilyMemberHistory.name){:target="_blank"}
* [Relationship](https://hl7.org/fhir/r4/familymemberhistory-definitions.html#FamilyMemberHistory.relationship){:target="_blank"}
* [Sex](https://hl7.org/fhir/r4/familymemberhistory-definitions.html#FamilyMemberHistory.sex){:target="_blank"}
* [Born](https://hl7.org/fhir/r4/familymemberhistory-definitions.html#FamilyMemberHistory.born_x_){:target="_blank"}
* [Age](https://hl7.org/fhir/r4/familymemberhistory-definitions.html#FamilyMemberHistory.age_x_){:target="_blank"}
* [Deceased](https://hl7.org/fhir/r4/familymemberhistory-definitions.html#FamilyMemberHistory.deceased_x_]){:target="_blank"}
  * [Precision Extension](#extensions){:target="_blank"}
* [Extension](#extensions){:target="_blank"}
  * [Patient Adopted](#extensions){:target="_blank"}
* [Condition](https://hl7.org/fhir/r4/familymemberhistory-definitions.html#FamilyMemberHistory.condition){:target="_blank"}
  * [Id](https://hl7.org/fhir/R4/element-definitions.html#Element.id){:target="_blank"}
  * [Code](https://hl7.org/fhir/r4/familymemberhistory-definitions.html#FamilyMemberHistory.condition.code){:target="_blank"}
  * [Onset](https://hl7.org/fhir/familymemberhistory-definitions.html#FamilyMemberHistory.condition.onset_x_){:target="_blank"}
     * [Precision Extension](#extensions){:target="_blank"}
  * [Note](https://hl7.org/fhir/r4/familymemberhistory-definitions.html#FamilyMemberHistory.condition.note){:target="_blank"}
  * [Modifier Extension](#modifier-extensions){:target="_blank"}
     * [Condition Result](#custom-extensions){:target="_blank"}
     * [Condition Lifecycle Status](#extensions){:target="_blank"}
  * [Extension](#extensions){:target="_blank"}
     * [Condition Course](#extensions){:target="_blank"}
     * [Family Member History Severity](#extensions){:target="_blank"}


## Terminology Bindings

<%= terminology_table(:family_member_history, :r4) %>

## Modifier Extensions

* [Condition Result]
* [Condition Lifecycle Status]

## Extensions

* [Patient Adopted]
* [Precision Extension]
* [Condition Course]
* [Family Member History Severity]

## Custom Modifier Extensions and Extensions

URLs for custom extensions are defined as `https://fhir-ehr.cerner.com/r4/StructureDefinition/{id}`

### Modifier Extensions

ID              | Value\[x] Type                                                    | Description
-----------------------------|-----------------------------------------------------------------------------|-----------------------------------------------
`condition-result`           | [`CodeableConcpet`](https://hl7.org/fhir/r4/datatypes.html#codeableconcept) | Indication of the presence (positive) or absence (negative) of a given condition.
`condition-lifecycle-status` | [`CodeableConcpet`](https://hl7.org/fhir/r4/datatypes.html#codeableconcept) | Indication of whether a condition is active, inactive, resolved, etc.


### Extensions

ID              | Value\[x] Type                                                    | Description
-----------------------------|-----------------------------------------------------------------------------|-----------------------------------------------
`patient-adopted`            | [`Boolean`](https://hl7.org/fhir/r4/datatypes.html#boolean)                 | Indication of whether a patient is adopted. Only returned when true.
`precision`                  | [`CodeableConcpet`](https://hl7.org/fhir/r4/datatypes.html#codeableconcept) | Indication of the precision of a given value.
`condition-course`           | [`CodeableConcpet`](https://hl7.org/fhir/r4/datatypes.html#codeableconcept) | Indication of a condition's progress since diagnosis.

## Search

Search for FamilyMemberHistories that meet supplied query parameters:

    GET /FamilyMemberHistory?:parameters

_Implementation Notes_

* FamilyMemberHistories with the 'FAMMEMB' relation are sometimes system generated.

### Authorization Types

<%= authorization_types(provider: true, patient: true, system: true) %>

### Parameters

Name      | Required?       | Type          | Description
----------|-----------------|---------------|-------------------------------------------------------
`_id`     | This or patient | [`token`]     | The logical resource id associated with the resource.
`patient` | This or _id     | [`reference`] | The identity of a subject to list family member history items for. Example: `12345`
`status`  | No              | [`token`] | The status of the record of the family history of a specific family member.

_Implementation Notes_

`status` may only be provided when the `patient` search parameter is provided

### Headers

<%= headers fhir_json: true %>

### Example

#### Request

    GET https://fhir-open.cerner.com/r4/ec2458f2-1e24-41c8-b71b-0e701af7583d/FamilyMemberHistory?patient=12504018

#### Response

<%= headers status: 200 %>
<%= json(:r4_family_member_history_bundle) %>

<%= disclaimer %>

### Errors

The common [errors] and [OperationOutcomes] may be returned.

## Retrieve by id

List an individual FamilyMemberHistory by its id:

    GET /FamilyMemberHistory/:id

_Implementation Notes_

* FamilyMemberHistories with the 'FAMMEMB' relation are sometimes system generated.

### Authorization Types

<%= authorization_types(provider: true, patient: true, system: true) %>

### Headers

<%= headers fhir_json: true %>

### Example

#### Request

    GET https://fhir-open.cerner.com/r4/ec2458f2-1e24-41c8-b71b-0e701af7583d/FamilyMemberHistory/12504018-12764234

#### Response

<%= headers status: 200 %>
<%= json(:r4_family_member_history_entry) %>

<%= disclaimer %>

### Errors

The common [errors] and [OperationOutcomes] may be returned.

## Create

Create a new FamilyMemberHistory.

    POST /FamilyMemberHistory

_Implementation Notes_

* Only the body fields mentioned below are supported. Unsupported fields will be ignored.
* Conditions cannot be added while creating the FamilyMemberHistory.

### Authorization Types

<%= authorization_types(provider: true, system: true, patient: false) %>

### Headers

<%= headers head: {Authorization: '&lt;OAuth2 Bearer Token>', 'Content-Type': 'application/fhir+json'} %>

### Body Fields

<%= definition_table(:family_member_history, :create, :r4) %>

### Example

#### Request

    POST https://fhir-ehr-code.cerner.com/r4/ec2458f2-1e24-41c8-b71b-0e701af7583d/FamilyMemberHistory

#### Body

<%= json(:r4_family_member_history_create) %>

#### Response

<%= headers status: 201 %>
<pre class="terminal">
Cache-Control: no-cache
Content-Length: 0
Content-Type: text/html
Date: Wed, 14 Aug 2019 17:23:14 GMT
Location: https://fhir-ehr-code.cerner.com/r4/ec2458f2-1e24-41c8-b71b-0e701af7583d/FamilyMemberHistory/123-456
Last-Modified: Wed, 14 Aug 2019 17:23:14 GMT
Vary: Origin
X-Request-Id: 1638e30e497b93ff4383b2ff0eaeea91
</pre>

<%= disclaimer %>

### Errors

The common [errors] and [OperationOutcomes] may be returned.

## Update

Update a FamilyMemberHistory.

    PUT /FamilyMemberHistory/:id

_Implementation Notes_

* Conditions can be removed from a FamilyMemberHistory by setting the 'condition-lifecycle-status' modifierExtension to 'entered-in-error' with system 'http://terminology.hl7.org/CodeSystem/condition-ver-status'. Only existing conditions can be removed; condition id must be provided.
* An update should only be performed directly after a FamilyMemberHistory is retrieved. If a condition.id is returned on the get operation, it MUST be provided on the subsequent update and must match the condition.id returned from the get.

### Authorization Types

<%= authorization_types(provider: true, system: true, patient: false) %>

### Headers

<%= headers head: {Authorization: '&lt;OAuth2 Bearer Token>', 'Content-Type': 'application/fhir+json'} %>

### Body fields

<%= definition_table(:family_member_history, :update, :r4) %>

### Example

#### Request

    PUT https://fhir-ehr-code.cerner.com/r4/ec2458f2-1e24-41c8-b71b-0e701af7583d/FamilyMemberHistory/12504018-12764234

#### Body

<%= json(:r4_family_member_history_update) %>

#### Response

<%= headers status: 200 %>
<pre class="terminal">
Cache-Control: no-cache
Content-Length: 0
Content-Type: application/fhir+json
Date: Sun, 30 Jun 2019 10:40:00 GMT
Vary: Origin
X-Request-Id: 1638e30e497b93ff4383b2ff0eaeea91
</pre>

### Errors

The common [errors] and [OperationOutcomes] may be returned.

[`reference`]: https://hl7.org/fhir/r4/search.html#reference
[`token`]: https://hl7.org/fhir/R4/search.html#token
[errors]: ../../../#client-errors
[Patient Adopted]: #custom-extensions
[Precision Extension]: #custom-extensions
[Condition Result]: #custom-extensions
[Condition Lifecycle Status]: #custom-extensions
[Condition Course]: #custom-extensions
[Family Member History Severity]: http://hl7.org/fhir/extension-familymemberhistory-severity.html
[OperationOutcomes]: ../../../#operation-outcomes
