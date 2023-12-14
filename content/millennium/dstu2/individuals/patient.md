---
title: Patient | DSTU 2 API
---

# Patient

* TOC
{:toc}

## Overview

The Patient resource provides general demographic information about a person receiving health care services from a specific organization. Common demographic fields include patient ID, patient name, gender, date of birth, address, phone, primary language, and marital status. Cerner Millennium is a patient-centric application; thus, many of the other resources will include the patient ID in their queries. A person receiving care from multiple organizations may have data available in multiple patient resources in multiple FHIR servers.

The following fields are returned if valued:

* [Patient ID](https://hl7.org/fhir/DSTU2/resource-definitions.html#Resource.id){:target="_blank"}
* [name](https://hl7.org/fhir/DSTU2/patient-definitions.html#Patient.name){:target="_blank"}
* [Extension](#extensions)
* [Identifier](http://hl7.org/fhir/DSTU2/patient-definitions.html#Patient.identifier){:target="_blank"}
* [Telecom](http://hl7.org/fhir/DSTU2/patient-definitions.html#Patient.telecom){:target="_blank"}
* [Contact](http://hl7.org/fhir/DSTU2/patient-definitions.html#Patient.contact){:target="_blank"}
* [Gender](http://hl7.org/fhir/DSTU2/patient-definitions.html#Patient.gender){:target="_blank"}
* [Date of Birth](http://hl7.org/fhir/DSTU2/patient-definitions.html#Patient.birthDate){:target="_blank"}
* [Deceased](http://hl7.org/fhir/DSTU2/patient-definitions.html#Patient.deceased_x_){:target="_blank"}
* [Address](http://hl7.org/fhir/DSTU2/patient-definitions.html#Patient.address){:target="_blank"}
* [Communication language](http://hl7.org/fhir/DSTU2/patient-definitions.html#Patient.communication.language){:target="_blank"}
* [Marital status](http://hl7.org/fhir/DSTU2/patient-definitions.html#Patient.maritalStatus){:target="_blank"}
* [Care Provider](http://hl7.org/fhir/dstu2/patient-definitions.html#Patient.careProvider){:target="_blank"}
* [Multiple Birth](http://hl7.org/fhir/dstu2/patient-definitions.html#Patient.multipleBirth_x_){:target="_blank"}

<%= disclaimer %>

### Errors

The common [errors] and [OperationOutcomes] may be returned.

## Terminology Bindings

<%= terminology_table(:patient, :dstu2) %>

## Extensions

* [Time of day of birth]
* [Argonaut Ethnicity]
* [Argonaut Patient Birth Sex]
* [Argonaut Race]
* [Rendered Value]

## Search

Search for Patients that meet supplied query parameters:

    GET /Patient?:parameters

_Implementation Notes_

* The [Patient.animal] modifier element is not supported and will not be returned.
* Direct secure email will not be returned.
* If the current user is a patient or patient proxy, a search may be performed without providing any parameters. The search will return all patients the current user has been granted access to view.

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

Notes:

* The `name`, `family`, and `given` parameters support the [`:exact`] modifier and will search for current names only, based on the name's `period`.
* It is not recommended to combine `family` or `given` parameters with the `name` parameter when searching for a patient. Whenever possible, use the ':exact' modifier.
* The `address-postalcode` parameter supports the [`:exact`] modifier.
* The `identifier`, `name`, `family`, `given`, `phone`, `email`, `address-postalcode`, or `gender` parameters may be provided exactly once and may have only a single value.
* The `birthdate` parameter may be provided in the following formats:
  * Once with a prefix of `ge`, `le`, `gt`, `lt`, or `eq`. Example: `birthdate=ge2001-03-13`
  * Twice to indicate a date range and must contain one prefix each of `le` and `ge`. Example: `birthdate=ge2001-03-13&birthdate=le2001-05-01`
* A `422 - Unprocessable Entity` will be returned when over 1,000 patients qualify for the search criteria.

### Headers

<%= headers %>

### Example

#### Request

    GET https://fhir-open.cerner.com/dstu2/ec2458f2-1e24-41c8-b71b-0e701af7583d/Patient?_id=12724067

#### Response

<%= headers status: 200 %>
<%= json(:dstu2_patient_bundle) %>

## Retrieve by ID

List an individual Patient by its ID:

    GET /Patient/:id

_Implementation Notes_

* The [Patient.animal] modifier element is not supported and will not be returned.
* Direct secure email will not be returned.

### Authorization Types

<%= authorization_types(provider: true, patient: true, system: true) %>

### Headers

<%= headers %>

### Example

#### Request

    GET https://fhir-open.cerner.com/dstu2/ec2458f2-1e24-41c8-b71b-0e701af7583d/Patient/12724067

#### Response

<%= headers status: 200 %>
<%= json(:dstu2_patient_entry) %>

### Patient Combines Example

Cerner Millennium supports the ability to logically merge a patient record into another patient record when both records are describing the same patient. This is known
as a patient combine. If necessary, this merging can later be undone by performing a patient uncombine. When the requested patient record has been combined into another
record, an inactive Patient entry will be returned which has a link to the current Patient entry. Entries for combined patients will only be returned when retrieving
the entries directly by ID. They will not be returned when searching with other parameters.

#### Request

    GET https://fhir-open.cerner.com/dstu2/ec2458f2-1e24-41c8-b71b-0e701af7583d/Patient/12742633

#### Response

<%= headers status: 200 %>
<%= json(:dstu2_combined_patient_entry) %>

## Create

Create an individual Patient:

    POST /Patient

_Implementation Notes_

* The following elements are not supported and will cause an error to be returned if set:
  * [Patient.deceased]
  * [Patient.multipleBirth]
  * [Patient.photo]
  * [Patient.contact]
  * [Patient.animal]
  * [Patient.managingOrganization]
  * [Patient.link]

### Authorization Types

<%= authorization_types(provider: true, system: true) %>

### Headers

<%= headers head: {Authorization: '&lt;OAuth2 Bearer Token>', Accept: 'application/json+fhir', 'Content-Type': 'application/json+fhir'} %>

### Body Fields

Notes:

* Birth Sex may be recorded as an extension.

<%= definition_table(:patient, :create, :dstu2) %>

### Example

#### Request

    POST https://fhir-ehr-code.cerner.com/dstu2/ec2458f2-1e24-41c8-b71b-0e701af7583d/Patient

#### Body

  <%= json(:dstu2_patient_create) %>

#### Response

<%= headers status: 201 %>
<pre class="terminal">
Date: Tue, 27 Feb 2018 16:47:59 GMT
Cache-Control: no-cache
Vary: Origin,User-Agent,Accept-Encoding
Strict-Transport-Security: max-age=631152000
X-Xss-Protection: 1; mode=block
Pragma: no-cache
X-Request-Id: f17bbd99-f89b-4cfe-8425-43b14e5735cf
opc-request-id: /5E94C5FFC27CDD51DB70C0F464E44A96/AECA8B137DC613A323E70B1ED7C53808
Etag: W/"0"
X-Frame-Options: SAMEORIGIN
X-Content-Type-Options: nosniff
Expires: Mon, 01 Jan 1990 00:00:00 GMT
Last-Modified: Tue, 27 Feb 2018 16:48:00 GMT
Location: https://fhir-ehr-code.cerner.com/dstu2/ec2458f2-1e24-41c8-b71b-0e701af7583d/Patient/4842008
Content-Length: 0
Content-Type: application/json
</pre>

The `ETag` response header indicates the current `If-Match` version to use on subsequent updates.

[Time of day of birth]: http://hl7.org/fhir/DSTU2/extension-patient-birthtime.html
[Argonaut Race]: http://build.fhir.org/ig/Healthedata1/Argo-DSTU2/StructureDefinition-argo-race.html
[Argonaut Ethnicity]: http://build.fhir.org/ig/Healthedata1/Argo-DSTU2/StructureDefinition-argo-ethnicity.html
[Argonaut Patient Birth Sex]: http://build.fhir.org/ig/Healthedata1/Argo-DSTU2/StructureDefinition-argo-birthsex.html
[Rendered Value]: http://hl7.org/fhir/extension-rendered-value.html
[`token`]: http://hl7.org/fhir/DSTU2/search.html#token
[`date`]: http://hl7.org/fhir/DSTU2/search.html#date
[`string`]: http://hl7.org/fhir/DSTU2/search.html#string
[`_count`]: http://hl7.org/fhir/DSTU2/search.html#count
[`number`]: http://hl7.org/fhir/DSTU2/search.html#number
[`:exact`]: https://hl7.org/fhir/R4/search.html#string
[Patient.deceased]: http://hl7.org/fhir/dstu2/patient-definitions.html#Patient.deceased_x_
[Patient.multipleBirth]: http://hl7.org/fhir/dstu2/patient-definitions.html#Patient.multipleBirth_x_
[Patient.photo]: http://hl7.org/fhir/dstu2/patient-definitions.html#Patient.photo
[Patient.contact]: http://hl7.org/fhir/dstu2/patient-definitions.html#Patient.contact
[Patient.animal]: http://hl7.org/fhir/DSTU2/patient-definitions.html#Patient.animal
[Patient.managingOrganization]: http://hl7.org/fhir/dstu2/patient-definitions.html#Patient.managingOrganization
[Patient.link]: http://hl7.org/fhir/dstu2/patient-definitions.html#Patient.link
[errors]: ../../#client-errors
[OperationOutcomes]: ../../#operation-outcomes
