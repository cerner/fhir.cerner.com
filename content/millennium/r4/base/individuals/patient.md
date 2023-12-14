---
title: Patient | R4 API
---

# Patient

* TOC
{:toc}

## Overview

The Patient Resource provides general demographic information about a person receiving health care services from a specific organization. Common demographic fields include patient ID, patient name, gender, date of birth, address, phone, primary language and marital status. Additional concepts returned as extensions and not part of the base resource include time of birth, preferred contact, race, ethnicity and birth sex. Cerner Millennium is a patient centric application: thus, many of the other resources will include the patient ID in their queries. A person receiving care from multiple organizations may have data available in multiple patient resources in multiple FHIR servers.

* The following [US Core Implementation Guide](https://hl7.org/fhir/us/core/STU4/){:target="_blank"} profiles are supported by this resource:

  * [US Core Patient Profile](https://hl7.org/fhir/us/core/STU4/StructureDefinition-us-core-patient.html){:target="_blank"}

The following fields are returned if valued:

* [Patient ID](https://hl7.org/fhir/R4/resource-definitions.html#Resource.id){:target="_blank"}
* [Identifiers](https://hl7.org/fhir/R4/patient-definitions.html#Patient.identifier){:target="_blank"}
* [Active](https://hl7.org/fhir/R4/patient-definitions.html#Patient.active){:target="_blank"}
* [Name](https://hl7.org/fhir/R4/patient-definitions.html#Patient.name){:target="_blank"}
* [Telecom](https://hl7.org/fhir/R4/patient-definitions.html#Patient.telecom){:target="_blank"}
* [Gender](https://hl7.org/fhir/R4/patient-definitions.html#Patient.gender){:target="_blank"}
* [Extensions](#extensions)
* [Date of Birth]( https://hl7.org/fhir/R4/patient-definitions.html#Patient.birthDate){:target="_blank"}
* [Deceased]( https://hl7.org/fhir/R4/patient-definitions.html#Patient.deceased_x_){:target="_blank"}
* [Address]( https://hl7.org/fhir/R4/patient-definitions.html#Patient.address){:target="_blank"}
* [Marital status]( https://hl7.org/fhir/R4/patient-definitions.html#Patient.maritalStatus){:target="_blank"}
* [Multiple Birth information]( https://hl7.org/fhir/R4/patient-definitions.html#Patient.multipleBirth_x_){:target="_blank"}
* [Contact person](https://hl7.org/fhir/R4/patient-definitions.html#Patient.contact){:target="_blank"}
* [Communication]( https://hl7.org/fhir/R4/patient-definitions.html#Patient.communication){:target="_blank"}
* [Primary Care Providers]( https://hl7.org/fhir/R4/patient-definitions.html#Patient.generalPractitioner){:target="_blank"}

_Notes_

* Direct secure email will not be returned.

<%= disclaimer %>

### Errors

The common [errors] and [OperationOutcomes] may be returned. In addition, a `422 - Unprocessable Entity` will be returned when more than 1,000 patients qualify for the search criteria.

## Terminology Bindings

<%= terminology_table(:patient, :r4) %>

## Extensions

* [Patient Birth Time]
* [Patient Preferred Contact]
* [US Core Race]
* [US Core Ethnicity]
* [US Core Birth Sex]
* [Communication Preference]

## Search

Search for Patients that meet supplied query parameters:

    GET /Patient?:parameters

### Authorization Types

<%= authorization_types(provider: true, patient: true, system: true) %>

### Parameters

| Name                 | Required?     | Type       | Description                                                                                                                                                                                                                          |
|----------------------|---------------|------------|--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| `_id`                | Conditionally | [`token`]  | The logical resource ID associated with the resource. This parameter is required if at least one of `identifier`, `name`, `family`, `given`, `birthdate`, `phone`, `email`, or `address-postalcode` is not used. Example: `11111111` |
| `identifier`         | Conditionally | [`token`]  | A patient identifier. This parameter is required if `_id`, `name`, `family`, `given`, `birthdate`, `phone`, `email`, and `address-postalcode` are not used. Example: `urn:oid:1.1.1.1.1.1\|1022228`                                  |
| `name`               | Conditionally | [`string`] | The start of either family or given name of the patient.This parameter is required if `_id`, `identifier`, `family`, `given`, `birthdate`, `phone`, `email`, and `address-postalcode` are not used. Example: `Pete`                  |
| `family`             | Conditionally | [`string`] | The start of the family name of the patient. This parameter is required if `_id`, `identifier`, `name`, `given`, `birthdate`, `phone`, `email`, and `address-postalcode` are not used. Example: `Adam`                               |
| `given`              | Conditionally | [`string`] | The start of the given name of the patient. This parameter is required if `_id`, `identifier`, `name`, `family`, `birthdate`, `phone`, `email`, and `address-postalcode` are not used. Example: `Tim`                                |
| `birthdate`          | Conditionally | [`date`]   | The patient's date of birth. This parameter is required if `_id`, `identifier`, `name`, `family`, `given`, `phone`, `email`, and `address-postalcode` are not used. Example: `1961-01-16`                                            |
| `phone`              | Conditionally | [`token`]  | The patient's phone number. This parameter is required if `_id`, `identifier`, `name`, `family`, `given`, `birthdate`, `email`, and `address-postalcode` are not used. Example: `1111111111`                                         |
| `email`              | Conditionally | [`token`]  | The patient's email address. This parameter is required if `_id`, `identifier`, `name`, `family`, `given`, `birthdate`, `phone`, and `address-postalcode` are not used. Example: `example@example.com`                               |
| `address-postalcode` | Conditionally | [`string`] | The postal code in the address details of the patient. This parameter is required if `_id`, `identifier`, `name`, `family`, `given`, `birthdate`, `phone`, and `email` are not used. Example: `11111`                                |
| `gender`             | No            | [`token`]  | The administrative gender of the patient. Example: `male`                                                                                                                                                                            |
| [`_count`]           | No            | [`number`] | The maximum number of results to return. Defaults to `20`.                                                                                                                                                                           |
| `_revinclude`        | No            | [`token`]  | Provenance resource entries to be returned as part of the bundle. Example:`_revinclude=Provenance:target`                                                                                                                            |

Notes:

* A `422 - Unprocessable Entity` will be returned when more than 1,000 patients qualify for the search criteria.
* The `name`, `family`, and `given` parameters support the [`:exact`] modifier and will search for current names only, based on the name's `period`.
* It is not recommended to combine `family` or `given` parameters with the `name` parameter when searching for a patient. Whenever possible use the `:exact` modifier.
* The `identifier`, `name`, `family`, `given`, `phone`, `email`, `address-postalcode`, or `gender` parameters may be provided exactly once and may have only a single value.
* The `birthdate` parameter
  * May be provided once using one of the following prefixes to imply a date range: `ge`, `le`, `gt`, `lt`, `eq`
  * May be provided twice to indicate a date range and must contain one prefix each of `le` and `ge`. Example: `birthdate=ge2001-03-13&birthdate=le2001-05-01`
  * Must not be provided with a time component
* The `identifier` parameter
    * Requires a code, but the system is optional. If the system is not provided, the search is performed across all systems supported by the Patient resource.
    * Searches against the specific system, if it is provided.
    * Accepts a Social Security Number (SSN), but the value will not be returned in a matching response.
* The `_revinclude` parameter
  * May be provided once with the value `Provenance:target`. Example: `_revinclude=Provenance:target`
  * Requires the OAuth2 token to include the Provenance scope corresponding to the current Patient scope, such as `user/Provenance.read`, `patient/Provenance.read` or `system/Provenance.read`.

### Headers

 <%= headers fhir_json: true %>

### Example

#### Request

    GET https://fhir-open.cerner.com/r4/ec2458f2-1e24-41c8-b71b-0e701af7583d/Patient?family=smart&given=joe&birthdate=1990-09-15

#### Response

<%= headers status: 200 %>
<%= json(:r4_patient_bundle) %>

### Example with RevInclude

### Authorization Types

<%= authorization_types(provider: true, system: true) %>

#### Request

    GET https://fhir-ehr.cerner.com/r4/ec2458f2-1e24-41c8-b71b-0e701af7583d/Patient?_id=629928&_revinclude=Provenance:target

#### Response

<%= headers status: 200 %>
<%= json(:r4_patient_revinclude_bundle) %>

## Retrieve by ID

List an individual patient by their ID:

    GET /Patient/:id

### Authorization Types

<%= authorization_types(provider: true, patient: true, system: true) %>

### Headers

<%= headers fhir_json: true %>

### Example

#### Request

    GET https://fhir-open.cerner.com/r4/ec2458f2-1e24-41c8-b71b-0e701af7583d/Patient/12724067

#### Response

<%= headers status: 200 %>
<%= json(:r4_patient_entry) %>

### Patient Combines Example

Oracle Health Millennium Platform supports the ability to logically merge a patient record into another patient record when both records are describing the same patient. This is known
as a patient combine. If necessary, this merging can later be undone by performing a patient uncombine. When the requested patient record has been combined into another
record, an inactive patient entry will be returned, which has a link to the current patient entry. Entries for combined patients will only be returned when retrieving
the entries directly by ID. They will not be returned when searching with other parameters.

#### Request

    GET https://fhir-open.cerner.com/r4/ec2458f2-1e24-41c8-b71b-0e701af7583d/Patient/12742633

#### Response

<%= headers status: 200 %>
<%= json(:r4_combined_patient_entry) %>

## Create

Create a new patient.

    POST /Patient

### Authorization Types

<%= authorization_types(provider: true, system: true) %>

### Headers

<%= headers head: {Authorization: '&lt;OAuth2 Bearer Token>', Accept: 'application/fhir+json', 'Content-Type': 'application/fhir+json'} %>

### Body Fields
_Notes_

* Only the body fields mentioned below are supported. Unsupported fields are ignored.
* Birth Sex, Ethnicity, and Race may be recorded as extensions.

<%= definition_table(:patient, :create, :r4) %>

### Example

#### Request

    POST https://fhir-ehr-code.cerner.com/r4/ec2458f2-1e24-41c8-b71b-0e701af7583d/Patient

#### Body

<%= json(:r4_patient_create) %>

#### Response

<%= headers status: 201 %>
<pre class="terminal">
Cache-Control: no-cache
Content-Length: 0
Content-Type: text/html
Date: Wed, 27 Mar 2019 17:23:14 GMT
Etag: W/"0"
Location: https://fhir-ehr-code.cerner.com/r4/ec2458f2-1e24-41c8-b71b-0e701af7583d/Patient/5786010
Last-Modified: Wed, 27 Mar 2019 17:23:14 GMT
Vary: Origin
X-Request-Id: 6aa99cae-2ee5-4529-8cb2-1aa73f818207
opc-request-id: /4B7BCF043117301F1B647EF553C7F250/A326F573558AD7570F63BFC19D88739A
</pre>

The `ETag` response header indicates the current `If-Match` version to use on subsequent updates.

## Patch

Patch an existing Patient.

    PATCH /Patient/:id

_Notes_

* This implementation follows RFC 6902 [JSON Patch](https://tools.ietf.org/html/rfc6902).
* Only operations on the paths listed below are supported.
* When a path includes `{index}`, it refers to the index of the element in the list of elements. 
* All indexes are 0 based.

### Authorization Types

<%= authorization_types(provider: true, system: true) %>

### Headers

<%= headers head: {Authorization: '&lt;OAuth2 Bearer Token>', Accept: 'application/fhir+json',
                   'Content-Type': 'application/json-patch+json', 'If-Match': 'W/"&lt;Current version of the Patient resource>"'} %>

### Patch Operations

<%= patch_definition_table(:patient_patch, :r4) %>

### Example

#### Request

    PATCH https://fhir-ehr-code.cerner.com/r4/ec2458f2-1e24-41c8-b71b-0e701af7583d/Patient/12724067

#### Body

<%= json(:r4_patient_patch) %>

### Response

<%= headers status: 200 %>
<pre class="terminal">
Cache-Control: no-cache
Content-Length: 0
Content-Type: application/fhir+json
Date: Wed, 27 Mar 2019 17:23:14 GMT
Etag: W/"1"
Last-Modified: Wed, 27 Mar 2019 17:23:14 GMT
Vary: Origin
X-Request-Id: 02352eda-9574-4f23-9ab7-5915d5b09627
opc-request-id: /4B7BCF043117301F1B647EF553C7F250/A326F573558AD7570F63BFC19D88739A
</pre>

The `ETag` response header indicates the current `If-Match` version to use on subsequent updates.

## Operation: $health-cards-issue

Issues Health Cards for an existing Patient.

    POST /Patient/:id/$health-cards-issue

See [Health Cards] documentation for more details about this operation.

[`_count`]: https://hl7.org/fhir/R4/search.html#count
[`date`]: https://hl7.org/fhir/R4/search.html#date
[`number`]: https://hl7.org/fhir/R4/search.html#number
[`string`]: https://hl7.org/fhir/R4/search.html#string
[`token`]: https://hl7.org/fhir/R4/search.html#token
[errors]: ../../../#client-errors
[OperationOutcomes]: ../../../#operation-outcomes
[Patient Birth Time]: https://hl7.org/fhir/R4/extension-patient-birthtime.html
[Patient Preferred Contact]: https://www.hl7.org/fhir/defining-extensions.html
[US Core Race]: https://hl7.org/fhir/us/core/StructureDefinition-us-core-race.html
[US Core Ethnicity]: https://hl7.org/fhir/us/core/StructureDefinition-us-core-ethnicity.html
[US Core Birth Sex]: https://hl7.org/fhir/us/core/StructureDefinition-us-core-birthsex.html
[Communication Preference]: https://fhir-ehr.cerner.com/r4/StructureDefinition/communication-preference?_format=json
[Health Cards]: ../../foundation/other/health-cards
