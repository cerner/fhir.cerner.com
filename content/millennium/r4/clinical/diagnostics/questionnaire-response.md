---
title: QuestionnaireResponse | R4 API
---

# QuestionnaireResponse

<%= beta_tag %>

* TOC
{:toc}

## Overview

The QuestionnaireResponse resource is a collection of answers to a given questionnaire typically used to request patient healthcare information. A given QuestionnaireResponse must belong to a corresponding Questionnaire. An example of a questionnaire is a form used to collect a patient's social history. Currently, only social history is supported.

The following fields are returned if valued:

* [Id](https://hl7.org/fhir/R4/resource-definitions.html#Resource.id){:target="_blank"}
* [Questionnaire](https://hl7.org/fhir/r4/questionnaireresponse-definitions.html#QuestionnaireResponse.questionnaire){:target="_blank"}
* [Status](https://hl7.org/fhir/r4/questionnaireresponse-definitions.html#QuestionnaireResponse.status){:target="_blank"}
* [Subject](https://hl7.org/fhir/r4/questionnaireresponse-definitions.html#QuestionnaireResponse.subject){:target="_blank"}
* [Authored](https://hl7.org/fhir/r4/questionnaireresponse-definitions.html#QuestionnaireResponse.authored){:target="_blank"}
* [Item](https://hl7.org/fhir/r4/questionnaireresponse-definitions.html#QuestionnaireResponse.item){:target="_blank"}
    * [Id](https://hl7.org/fhir/R4/element-definitions.html#Element.id){:target="_blank"}
    * [Link id](https://hl7.org/fhir/r4/questionnaireresponse-definitions.html#QuestionnaireResponse.item.linkId){:target="_blank"}
    * [Note Extension](#extensions){:target="_blank"}
    * [Text](https://hl7.org/fhir/r4/questionnaireresponse-definitions.html#QuestionnaireResponse.item.text){:target="_blank"}
    * [Item](https://hl7.org/fhir/r4/questionnaireresponse-definitions.html#QuestionnaireResponse.item.item){:target="_blank"}
        * [Link id](https://hl7.org/fhir/r4/questionnaireresponse-definitions.html#QuestionnaireResponse.item.linkId){:target="_blank"}
        * [Text](https://hl7.org/fhir/r4/questionnaireresponse-definitions.html#QuestionnaireResponse.item.text){:target="_blank"}
        * [Choice Answer Extension](#extensions){:target="_blank"}
        * [valueString Answers](https://hl7.org/fhir/r4/datatypes.html#string){:target="_blank"}
        * [valueCoding Answers](https://hl7.org/fhir/r4/datatypes.html#Coding){:target="_blank"}
        * [valueQuantity Answers](https://hl7.org/fhir/r4/datatypes.html#Quantity){:target="_blank"}

## Terminology Bindings

<%= terminology_table(:questionnaire_response, :r4) %>

## Extensions

* [Choice Answer]
* [Note]

### Custom Extensions

URLs for custom extensions are defined as `https://fhir-ehr.cerner.com/r4/StructureDefinition/{id}`

 ID              | Value\[x] Type                                                    | Description                   
-----------------|-------------------------------------------------------------------|-----------------------------------------------
 `choice-answer` | [`Boolean`](https://hl7.org/fhir/r4/datatypes.html#boolean)       | Indicates answers come from a list of options.
 `note`          | [`Annotation`](https://hl7.org/fhir/r4/datatypes.html#annotation) | Additional details about a given QuestionnaireResponse group item. Includes author and date/time information.

## Search

<%= beta_tag(action: true) %>

Search for QuestionnaireResponses that meet supplied query parameters:

    GET /QuestionnaireResponse?:parameters

_Implementation Notes_

* QuestionnaireResponses are sometimes system generated without any answers. These may be updated with the correct responses at any time.

### Authorization Types

<%= authorization_types(provider: true, patient: false, system: true) %>

### Parameters

 Name      | Required?         | Type          | Description
-----------|------------------ |---------------|--------------------------------------------------------------------------------------------
 `_id`     | This or `patient` | [`token`]     | The logical resource id associated with the resource.
 `patient` | This or `_id`     | [`reference`] | The subject (Patient) that the questionnaire response is about. Example: `patient=12345`

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

_Implementation Notes_

* QuestionnaireResponses are sometimes system generated without any answers. These may be updated with the correct responses at any time.

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

<%= headers head: {Authorization: '&lt;OAuth2 Bearer Token>', 'Content-Type': 'application/fhir+json'} %>

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

[`reference`]: https://hl7.org/fhir/r4/search.html#reference
[`token`]: https://hl7.org/fhir/R4/search.html#token
[errors]: ../../#client-errors
[Note]: #custom-extensions
[Choice Answer]: #custom-extensions
[OperationOutcomes]: ../../#operation-outcomes
