---
title: Questionnaire | R4 API
---

# Questionnaire

* TOC
{:toc}

## Overview

The Questionnaire resource defines and organizes questions and the allowed answers to the questions typically used to collect patient healthcare information.  A questionnaire is a snapshot in time and should be retrieved before each use. Examples of questionnaires are forms used to collect a patient's social history or family member history. Currently, only social history is supported. In order to find a questionnaire for a specific patient, first search QuestionnaireResponse by patient. Then use the 'questionnaire' field from the QuestionnaireResponse to retrieve the original questionnaire.

The following fields are returned if valued:

* [Questionnaire id](https://hl7.org/fhir/r4/resource-definitions.html#Resource.id){:target="_blank"}
* [Name](https://hl7.org/fhir/R4/questionnaire-definitions.html#Questionnaire.name){:target="_blank"}
* [Title](https://hl7.org/fhir/R4/questionnaire-definitions.html#Questionnaire.title){:target="_blank"}
* [Status](https://hl7.org/fhir/R4/questionnaire-definitions.html#Questionnaire.status){:target="_blank"}
* [Patient Subject Type](https://hl7.org/fhir/R4/questionnaire-definitions.html#Questionnaire.subjectType){:target="_blank"}
* [Item](https://hl7.org/fhir/R4/questionnaire-definitions.html#Questionnaire.item){:target="_blank"}
    * [Link id](https://hl7.org/fhir/R4/questionnaire-definitions.html#Questionnaire.item.linkId){:target="_blank"}
    * [Extension](#extensions)
    * [Text](https://hl7.org/fhir/R4/questionnaire-definitions.html#Questionnaire.item.text){:target="_blank"}
    * [Type](https://hl7.org/fhir/R4/questionnaire-definitions.html#Questionnaire.item.type){:target="_blank"}
    * [Item](https://hl7.org/fhir/R4/questionnaire-definitions.html#Questionnaire.item){:target="_blank"}
        * [Link id](https://hl7.org/fhir/R4/questionnaire-definitions.html#Questionnaire.item.linkId){:target="_blank"}
        * [Text](https://hl7.org/fhir/R4/questionnaire-definitions.html#Questionnaire.item.text){:target="_blank"}
        * [Type](https://hl7.org/fhir/R4/questionnaire-definitions.html#Questionnaire.item.type){:target="_blank"}
        * [Required](https://hl7.org/fhir/R4/questionnaire-definitions.html#Questionnaire.item.required){:target="_blank"}
        * [Repeats](https://hl7.org/fhir/R4/questionnaire-definitions.html#Questionnaire.item.repeats){:target="_blank"}
        * [Max Length](https://hl7.org/fhir/R4/questionnaire-definitions.html#Questionnaire.item.maxLength){:target="_blank"}
        * [Extension](#extensions)
        * [Answer Option](https://hl7.org/fhir/R4/questionnaire-definitions.html#Questionnaire.item.answerOption){:target="_blank"}
    
## Terminology Bindings

<%= terminology_table(:questionnaire, :r4) %>

## Extensions

* [Max Decimal Places]
* [Note Allowed]

### Custom Extensions

URLs for custom extensions are defined as `https://fhir-ehr.cerner.com/r4/StructureDefinition/{id}`

 ID             | Value\[x] Type                                              | Description                   
----------------|-------------------------------------------------------------|-------------------------------
 `note-allowed` | [`Boolean`](https://hl7.org/fhir/r4/datatypes.html#boolean) | Whether a comment is allowed.

## Search

Search for Questionnaires that meet supplied query parameters:

    GET /Questionnaire?:parameters

### Authorization Types

<%= authorization_types(provider: true, patient: true, system: true) %>

### Parameters

 Name  | Required? | Type      | Description
-------|-----------|-----------|-------------------------------------------------------
 `_id` | Yes       | [`token`] | The logical resource id associated with the resource.

### Headers

<%= headers fhir_json: true %>

### Example

#### Request

    GET https://fhir-open.cerner.com/r4/ec2458f2-1e24-41c8-b71b-0e701af7583d/Questionnaire?_id=SH-12508041

#### Response

<%= headers status: 200 %>
<%= json(:r4_questionnaire_bundle) %>

<%= disclaimer %>

### Errors

The common [errors] and [OperationOutcomes] may be returned.

## Retrieve by id

List an individual Questionnaire by its id:

    GET /Questionnaire/:id

### Authorization Types

<%= authorization_types(provider: true, patient: true, system: true) %>

### Headers

<%= headers fhir_json: true %>

### Example

#### Request

    GET https://fhir-open.cerner.com/r4/ec2458f2-1e24-41c8-b71b-0e701af7583d/Questionnaire/SH-12508041

#### Response

<%= headers status: 200 %>
<%= json(:r4_questionnaire_entry) %>

<%= disclaimer %>

### Errors

The common [errors] and [OperationOutcomes] may be returned.

[`token`]: https://hl7.org/fhir/R4/search.html#token
[Note Allowed]: #custom-extensions
[Max Decimal Places]: https://hl7.org/fhir/R4/extension-maxdecimalplaces.html
[errors]: ../../#client-errors
[OperationOutcomes]: ../../#operation-outcomes
