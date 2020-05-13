---
title: Observation | R4 API
---

# Observation

* TOC
{:toc}

## Overview
The Observation resource provides measurements or simple assertions about a patient that are useful for establishing baselines or trends, monitoring a patient's progress, and establishing diagnoses. Most observations are simple name/value pair assertions but some observations, such as blood pressure, group other observations together logically. Examples of common observations are: Laboratory results (blood sugar, hemoglobin), Vital signs (temperature, blood pressure), Personal characteristics (height, weight), and Social history (tobacco/alcohol use, employment status). Pathology reports, radiology reports, and other textual reports should be represented by the DiagnosticReport resource.

The following fields are returned if valued:

* [Id](https://hl7.org/fhir/R4/resource-definitions.html#Resource.id){:target="_blank"}
* [Identifier](https://hl7.org/fhir/R4/observation-definitions.html#Observation.identifier){:target="_blank"}
* [BasedOn](https://hl7.org/fhir/R4/observation-definitions.html#Observation.basedOn){:target="_blank"}
* [Status](https://hl7.org/fhir/R4/observation-definitions.html#Observation.status){:target="_blank"}
* [Category (laboratory, social history)](https://hl7.org/fhir/R4/observation-definitions.html#Observation.category){:target="_blank"}
* [Code (Observation name or text)](https://hl7.org/fhir/R4/observation-definitions.html#Observation.code){:target="_blank"}
* [Subject (Patient)](https://hl7.org/fhir/R4/observation-definitions.html#Observation.subject){:target="_blank"}
* [Encounter](https://hl7.org/fhir/R4/observation-definitions.html#Observation.encounter){:target="_blank"}
* [Effective date/time (collection date/time for laboratory)](https://hl7.org/fhir/R4/observation-definitions.html#Observation.effective_x_){:target="_blank"}
* [Extensions](#extensions){:target="_blank"}
* [Issued (date/time observation made available, entered, verified)](https://hl7.org/fhir/R4/observation-definitions.html#Observation.issued){:target="_blank"}
* [Performer](http://hl7.org/fhir/R4/observation-definitions.html#Observation.performer){:target="_blank"}
* [Observation value or result](https://hl7.org/fhir/R4/observation-definitions.html#Observation.value_x_){:target="_blank"}
* For Observations with `valueQuantity`
    * [Quantity comparator (<, <=, >, >=)](https://hl7.org/fhir/R4/datatypes-definitions.html#Quantity.comparator){:target="_blank"}
    * [Quantity units](https://hl7.org/fhir/R4/datatypes-definitions.html#Quantity.unit){:target="_blank"}
* [Data absent reason](https://hl7.org/fhir/R4/observation-definitions.html#Observation.dataAbsentReason){:target="_blank"}
* [Interpretation (abnormal flagging)](https://hl7.org/fhir/R4/observation-definitions.html#Observation.interpretation){:target="_blank"}
* [Note (comments)](https://hl7.org/fhir/R4/observation-definitions.html#Observation.note){:target="_blank"}
* [Reference range](https://hl7.org/fhir/R4/observation-definitions.html#Observation.referenceRange){:target="_blank"}
    * [low](https://hl7.org/fhir/R4/observation-definitions.html#Observation.referenceRange.low){:target="_blank"}
    * [high](https://hl7.org/fhir/R4/observation-definitions.html#Observation.referenceRange.high){:target="_blank"}
    * [type](https://hl7.org/fhir/R4/observation-definitions.html#Observation.referenceRange.type){:target="_blank"}
    * [text](https://hl7.org/fhir/R4/observation-definitions.html#Observation.referenceRange.text){:target="_blank"}
* [Member Observations (for limited use cases)](https://hl7.org/fhir/R4/observation-definitions.html#Observation.hasMember){:target="_blank"}
* [Component (eg: systolic and diastolic for blood pressure)](https://hl7.org/fhir/R4/observation-definitions.html#Observation.component){:target="_blank"}

## Terminology Bindings
<%= terminology_table(:observation, :r4) %>

## Extensions

* valueAttachment: URL for this extension is defined as: `http://hl7.org/fhir/5.0/StructureDefinition/extension-Observation.valueAttachment`
  This extension is defined and referenced from the newer version of FHIR. See [Extensions for converting between versions] and [R5 Snapshot of Observation.value] for more information.
* [performerFunction]

## Search

Search for labs, vitals, and alcohol/tobacco use Observations that meet supplied query parameters:

    GET /Observation?:parameters

### Authorization Types

<%= authorization_types(practitioner: true, patient: false, system: true) %>

_Implementation Notes_

* The `comments` field may have RTF or other formatted data rather than simple text. This is an issue that will be resolved in a future correction. We are investigating alternative solutions to fix this.

* When multiple pages of Observation results are returned for a single query:
  * All Social history Observations (if any qualify for the query) will be returned on the first page of results. This means that the next bullet does not apply to Social history Observations.
  * Results are sorted by effective date/time in descending order by page. That is, all Observations on any given page of results are newer than all Observations on the next page of results. Sort order within pages is not guaranteed.
  * If the query uses the `_lastUpdated` query parameter, results are sorted by last updated date/time in descending order by page, not by effective date/time.

### Parameters

 Name             | Required?         | Type          | Description
------------------|-------------------|---------------|-----------------------------------------------------------------------------------------------------------------------------------------
 `patient`        | This or `subject` | [`reference`] | The subject (Patient) that the observation is about. Example: `patient=1316024`
 `subject`        | This or `patient` | [`reference`] | The subject (Patient) that the observation is about. Example: `subject=Patient/1316024` or `subject:Patient=1316024`
 `code`           | N                 | [`token`]     | The code or component-code of the observation type. Example: `code=http://loinc.org|3094-0,http://loinc.org|3139-3`
 `date`           | N                 | [`date`]      | Date range into which the observation falls. Example: `date=gt2014-09-24` or `date=lt2015-09-24T12:00:00.000Z`
 `_lastUpdated`   | N                 | [`date`]      | Date range in which the observation was last updated. Example: `_lastUpdated=gt2014-09-24` or `_lastUpdated=lt2015-09-24T12:00:00.000Z`
 `category`       | N                 | [`token`]     | The category of observations. Example: `category=laboratory`
 [`_count`]       | N                 | [`number`]    | The maximum number of results to return per page.



Notes:

* The `subject` parameter must represent a Patient resource and may use the `:Patient` modifier.

* It is recommended to search by either `code` or `date` (or both).

* The `code` parameter:
  * May be a list of comma separated values. A system must be provided for each code.
  * Searches only `Observation.code`. For example when fetching blood pressures the resource will be only be returned when the search is based on `85354-9(Systolic and Diastolic BP)`. Using the component codes `8480-6(Systolic BP)` or `8462-4 (Diastolic BP)` will not return the resource.
  * Searching with proprietary codes or systems is not supported.

* The `date` and `_lastUpdated` parameters may be provided up to two times, and must use the `eq`, `ge`, `gt`, `le`, or `lt` prefixes. When a value is provided without a prefix, an implied `eq` prefix is used. When provided twice, the lower value must have a `ge` or `gt` prefix and the higher value must have an `le` or `lt` prefix.

* The `date` and `_lastUpdated` parameters may not be provided together.

* The `_lastUpdated` query will only qualify clinically significant updates. For example, changes to the value or code, and other significant fields. Minor updates, like some non-clinically relevant note updates, will not qualify.

### Headers

 <%= headers %>

### Example

#### Request

    GET https://fhir-open.sandboxcerner.com/r4/0b8a0111-e8e6-4c26-a91c-5069cbc6b1ca/Observation?patient=3998008

#### Response

<%= headers status: 200 %>
<%= json(:R4_OBSERVATION_BUNDLE) %>

<%= disclaimer %>

### Errors

The common [errors] and [OperationOutcomes] may be returned.

## Create

Create a new Observation.

    POST /Observation

_Implementation Notes_

* Only the body fields mentioned below are supported. Unsupported fields will be ignored.
* Modifier fields should not be provided, and will cause the transaction to fail.

### Authorization Types

<%= authorization_types(practitioner: false, system: true) %>

### Headers

<%= headers head: {Authorization: '&lt;OAuth2 Bearer Token>', 'Content-Type': 'application/fhir+json'} %>

### Body Fields

<%= definition_table(:observation, :create, :r4) %>

### Example

#### Request

    POST https://fhir-ehr.sandboxcerner.com/r4/0b8a0111-e8e6-4c26-a91c-5069cbc6b1ca/Observation

#### Body

<%= json(:r4_observation_create) %>

#### Response

<%= headers status: 201 %>
<pre class="terminal">
Cache-Control: no-cache
Content-Length: 0
Content-Type: text/html
Date: Wed, 14 May 2020 17:23:14 GMT
Etag: W/"12793861"
Location: https://fhir-ehr.sandboxcerner.com/r4/0b8a0111-e8e6-4c26-a91c-5069cbc6b1ca/Observation/M-12793861
Last-Modified: Wed, 14 May 2020 17:23:14 GMT
Server-Response-Time: 296.405243
Status: 201 Created
Vary: Origin
X-Request-Id: 11111111111111111111111111111111
X-Runtime: 2.011826
</pre>

The `ETag` response header indicates the current `If-Match` version to use on a subsequent update.

<%= disclaimer %>

### Errors

The common [errors] and [OperationOutcomes] may be returned.

[`reference`]: https://hl7.org/fhir/r4/search.html#reference
[`token`]: https://hl7.org/fhir/r4/search.html#token
[`date`]: https://hl7.org/fhir/r4/search.html#date
[`_count`]: https://hl7.org/fhir/r4/search.html#count
[`number`]: https://hl7.org/fhir/r4/search.html#number
[errors]: ../../#client-errors
[OperationOutcomes]: ../../#operation-outcomes
[Extensions for converting between versions]: https://www.hl7.org/fhir/r4/versions.html#extensions
[R5 Snapshot of Observation.value]: https://hl7.org/fhir/2020Feb/observation-definitions.html#Observation.value_x_
[performerFunction]: http://hl7.org/fhir/R4/extension-event-performerfunction.html
