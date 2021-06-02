---
title: QuestionnaireResponse | R4 API
---

# QuestionnaireResponse

<%= beta_tag %>

* TOC
{:toc}

## Overview

The QuestionnaireResponse resource is a collection of answers to a given questionnaire typically used to request patient healthcare information. An example of a questionnaire is a form used to collect a patient's social history. Currently, only social history is supported.

The following fields are returned if valued:

* [Id](https://hl7.org/fhir/R4/resource-definitions.html#Resource.id){:target="_blank"}

## Search

<%= beta_tag(action: true) %>

Search for QuestionnaireResponses that meet supplied query parameters:

    GET /QuestionnaireResponse?:parameters

### Authorization Types

<%= authorization_types(provider: true, patient: true, system: true) %>

### Parameters

 Name      | Required? | Type          | Description
-----------|-----------|---------------|--------------------------------------------------------
 `_id`     | Yes       | [`token`]     | The logical resource id associated with the resource.

### Headers

<%= headers %>

### Example

#### Request

    GET https://fhir-open.cerner.com/r4/ec2458f2-1e24-41c8-b71b-0e701af7583d/QuestionnaireResponses?_id=SH-12508041

#### Response

<%= headers status: 200 %>
<%= json(:r4_questionnaire_response_bundle) %>

<%= disclaimer %>

## Retrieve by id

<%= beta_tag(action: true) %>

List an individual QuestionnaireResponse by its id:

    GET /QuestionnaireResponse/:id

### Authorization Types

<%= authorization_types(provider: true, patient: true, system: true) %>

### Headers

<%= headers fhir_json: true %>

### Example

#### Request

    GET https://fhir-open.cerner.com/r4/ec2458f2-1e24-41c8-b71b-0e701af7583d/QuestionnaireResponse/SH-12508041

#### Response

<%= headers status: 200 %>
<%= json(:r4_questionnaire_response_entry) %>

<%= disclaimer %>

### Errors

The common [errors] and [OperationOutcomes] may be returned.

## Update

<%= beta_tag(action: true) %>

Update an QuestionnaireResponse.

    PUT /QuestionnaireResponse/:id

### Authorization Types

<%= authorization_types(provider: true, system: true, patient: false) %>

### Headers

<%= headers head: {Authorization: '&lt;OAuth2 Bearer Token>', 'Content-Type': 'application/fhir+json',
                   'If-Match': 'W/"&lt;Current version of the QuestionnaireResponse resource>"'} %>

### Body fields

<%= definition_table(:questionnaire_response, :update, :r4) %>

### Example

#### Request

    PUT https://fhir-ehr-code.cerner.com/r4/ec2458f2-1e24-41c8-b71b-0e701af7583d/QuestionnaireResponse/SH-12508041

#### Body

<%= json(:r4_questionnaire_response_update) %>

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

[`token`]: https://hl7.org/fhir/R4/search.html#token
[errors]: ../../#client-errors
[OperationOutcomes]: ../../#operation-outcomes
