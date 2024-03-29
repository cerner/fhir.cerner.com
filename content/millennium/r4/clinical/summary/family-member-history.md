---
title: FamilyMemberHistory | R4 API
---

# FamilyMemberHistory

* TOC
{:toc}

## Overview

The FamilyMemberHistory resource represents family history for a given patient. The resource may provide a list of conditions associated with a patient's family member or the absence of a condition on a given individual. In other cases, the resource may indicate that no relevant family history exists, no significant history for a given relative exists, or the patient’s family history is unknown or unobtainable.

The resource should be used as a snapshot in time and new information should be consistently retrieved through the API rather than stored in an application. In some instances, a relative could have an associated condition removed from the patient’s chart, which would then no longer be exposed on a subsequent transaction. Information must be refreshed with every interaction.

Oracle Cerner recommends that an update to FamilyMemberHistory contains all relevant information that previously existed on the resource to ensure that information remains populated in the patient's chart (for example, FamilyMemberHistory.sex, FamilyMemberHistory.bornDate, FamilyMemberHistory.condition.onsetDate, and so on). The absence of this optional information may remove the existing information from the patient's chart.

The following fields are returned if valued:

* [ID](https://hl7.org/fhir/r4/resource-definitions.html#Resource.id){:target="_blank"}
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
  * [Precision Extension](https://hl7.org/fhir/extensibility.html#Extension){:target="_blank"}
* [Extension](https://hl7.org/fhir/extensibility.html#Extension){:target="_blank"}
  * [Patient Adopted](https://hl7.org/fhir/extensibility.html#Extension){:target="_blank"}
* [Condition](https://hl7.org/fhir/r4/familymemberhistory-definitions.html#FamilyMemberHistory.condition){:target="_blank"}
  * [ID](https://hl7.org/fhir/R4/element-definitions.html#Element.id){:target="_blank"}
  * [Code](https://hl7.org/fhir/r4/familymemberhistory-definitions.html#FamilyMemberHistory.condition.code){:target="_blank"}
  * [Onset](https://hl7.org/fhir/familymemberhistory-definitions.html#FamilyMemberHistory.condition.onset_x_){:target="_blank"}
     * [Precision Extension](https://hl7.org/fhir/extensibility.html#Extension){:target="_blank"}
  * [Note](https://hl7.org/fhir/r4/familymemberhistory-definitions.html#FamilyMemberHistory.condition.note){:target="_blank"}
  * [Modifier Extension](https://hl7.org/fhir/r4/domainresource-definitions.html#DomainResource.modifierExtension){:target="_blank"}
     * [Condition Result](https://hl7.org/fhir/r4/domainresource-definitions.html#DomainResource.modifierExtension){:target="_blank"}
     * [Condition Lifecycle Status](https://hl7.org/fhir/r4/domainresource-definitions.html#DomainResource.modifierExtension){:target="_blank"}
  * [Extension](https://hl7.org/fhir/r4/domainresource-definitions.html#DomainResource.extension){:target="_blank"}
     * [Condition Course](https://hl7.org/fhir/extensibility.html#Extension){:target="_blank"}
     * [Family Member History Severity](https://terminology.hl7.org/CodeSystem-v3-RoleCode.html){:target="_blank"}


## Terminology Bindings

<%= terminology_table(:family_member_history, :r4) %>

## Custom Modifier Extensions and Extensions

URLs for custom extensions are defined as `https://fhir-ehr.cerner.com/r4/StructureDefinition/{ID}`

### Modifier Extensions

ID                           | Value\[x] Type                                                              | Description
-----------------------------|-----------------------------------------------------------------------------|-----------------------------------------------
`condition-result`           | [`CodeableConcept`](https://hl7.org/fhir/r4/datatypes.html#codeableconcept) | Indicates the presence (positive) or absence (negative) of a given condition.
`condition-lifecycle-status` | [`CodeableConcept`](https://hl7.org/fhir/r4/datatypes.html#codeableconcept) | Indicates whether a condition is active, inactive, resolved, and so on.


### Extensions

ID                             | Value\[x] Type                                                              | Description
-------------------------------|-----------------------------------------------------------------------------|-----------------------------------------------
`patient-adopted`              | [`Boolean`](https://hl7.org/fhir/r4/datatypes.html#boolean)                 | Indicates whether a patient is adopted. Only returned when true.
`precision`                    | [`CodeableConcept`](https://hl7.org/fhir/r4/datatypes.html#codeableconcept) | Indicates the precision of a given value.
`condition-course`             | [`CodeableConcept`](https://hl7.org/fhir/r4/datatypes.html#codeableconcept) | Indicates a condition's progress since diagnosis.
`familymemberhistory-severity` | [`CodeableConcept`](https://hl7.org/fhir/r4/datatypes.html#codeableconcept) | Indicates the seriousness or health impact of the family member's condition.

## Search

Search for the family member histories that meet the supplied query parameters.

    GET /FamilyMemberHistory?:parameters

_Notes_

* Family member histories with the 'FAMMEMB' relation are sometimes system generated.

### Authorization Types

<%= authorization_types(provider: true, patient: true, system: true) %>

### Parameters

Name      | Required        | Type          | Description
----------|-----------------|---------------|-------------------------------------------------------
`_id`     | Conditionally   | [`token`]     | The logical resource ID associated with the resource. This parameter is required if `patient` is not used. 
`patient` | Conditionally   | [`reference`] | The identity of a subject to list family member history items for. This parameter is required if `_id_` is not used. Example: `12345`
`status`  | No              | [`token`]     | The record status for a specific family member. This parameter is only provided when the `patient` search parameter is used.

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

## Retrieve by ID

List an individual family member history by its ID.

    GET /FamilyMemberHistory/:ID

_Notes_

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

Create a new family member history.

    POST /FamilyMemberHistory

_Notes_

* Only the body fields below are supported. Unsupported fields are ignored.
* Conditions cannot be added while creating the family member history.

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

Update a family member history.

    PUT /FamilyMemberHistory/:ID

_Notes_

* Conditions can be removed from a family member history if you set the 'condition-lifecycle-status' modifierExtension to 'entered-in-error' with system 'http://terminology.hl7.org/CodeSystem/condition-ver-status'. Only existing conditions can be removed and condition ID must be provided.
* An update should only be performed directly after a family member history is retrieved. If a condition ID is returned for the `GET` request, the ID must be provided on the subsequent update and must match the condition ID returned from the `GET`.

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
