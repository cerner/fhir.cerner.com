---
title: FamilyMemberHistory | R4 API
---

# FamilyMemberHistory

<%= beta_tag %>

* TOC
{:toc}

## Overview

The FamilyMemberHistory resource represents family history for a given patient. It may provide a list of conditions associated to a patient's family member or the absence of a condition on a given individual. In other cases, the resource may indicate that there is no relevant family history, no significant history for a given relative, or that the patient’s family history is unknown or unable to obtain.

The resource should be leveraged as a snapshot in time and new data should be consistently retrieved through the API rather than stored within an application. There may be instances where a relative had an associated condition removed from the patient’s chart which would then no longer be exposed on a subsequent transaction. It is crucial that the data be refreshed with every interaction.

The following fields are returned if valued:

* [FamilyMemberHistory id](https://hl7.org/fhir/r4/resource-definitions.html#Resource.id){:target="_blank"}
 
## Search

<%= beta_tag(action: true) %>

Search for FamilyMemberHistory that meet supplied query parameters:

    GET /FamilyMemberHistory?:parameters

### Authorization Types

<%= authorization_types(provider: true, patient: true, system: true) %>

### Parameters

Name      | Required?       | Type          | Description
----------|-----------------|---------------|-------------------------------------------------------
`_id`     | This or patient | [`token`]     | The logical resource id associated with the resource.
`patient` | This or _id     | [`reference`] | The identity of a subject to list family member history items for. Example: `12345`

### Headers

<%= headers fhir_json: true %>

### Example

#### Request

    GET https://fhir-open.cerner.com/r4/ec2458f2-1e24-41c8-b71b-0e701af7583d/FamilyMemberHistory?_id=123-456

#### Response

<%= headers status: 200 %>
<%= json(:r4_family_member_history_bundle) %>

<%= disclaimer %>

### Errors

The common [errors] and [OperationOutcomes] may be returned.

## Retrieve by id

<%= beta_tag(action: true) %>

List an individual FamilyMemberHistory by its id:

    GET /FamilyMemberHistory/:id

### Authorization Types

<%= authorization_types(provider: true, patient: true, system: true) %>

### Headers

<%= headers fhir_json: true %>

### Example

#### Request

    GET https://fhir-open.cerner.com/r4/ec2458f2-1e24-41c8-b71b-0e701af7583d/FamilyMemberHistory/123-456

#### Response

<%= headers status: 200 %>
<%= json(:r4_family_member_history_entry) %>

<%= disclaimer %>

## Create

<%= beta_tag(action: true) %>

Create new family member history.

    POST /FamilyMemberHistory

_Implementation Notes_

* Only the body fields mentioned below are supported. Unsupported fields will be ignored.

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
Etag: W/"1"
Location: https://fhir-ehr-code.cerner.com/r4/ec2458f2-1e24-41c8-b71b-0e701af7583d/FamilyMemberHistory/123-456
Last-Modified: Wed, 14 Aug 2019 17:23:14 GMT
Vary: Origin
X-Request-Id: 1638e30e497b93ff4383b2ff0eaeea91
</pre>

The `ETag` response header indicates the current `If-Match` version to use on a subsequent update.

<%= disclaimer %>

### Errors

The common [errors] and [OperationOutcomes] may be returned.

## Update

<%= beta_tag(action: true) %>

Update an FamilyMemberHistory.

    PUT /FamilyMemberHistory/:id

### Authorization Types

<%= authorization_types(provider: true, system: true, patient: false) %>

### Headers

<%= headers head: {Authorization: '&lt;OAuth2 Bearer Token>', 'Content-Type': 'application/fhir+json',
'If-Match': 'W/"&lt;Current version of the FamilyMemberHistory resource>"'} %>

### Body fields

<%= definition_table(:family_member_history, :update, :r4) %>

### Example

#### Request

    PUT https://fhir-ehr-code.cerner.com/r4/ec2458f2-1e24-41c8-b71b-0e701af7583d/FamilyMemberHistory/123-456

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

[`reference`]: http://hl7.org/fhir/r4/search.html#reference
[`token`]: https://hl7.org/fhir/R4/search.html#token
[errors]: ../../#client-errors
[OperationOutcomes]: ../../#operation-outcomes
