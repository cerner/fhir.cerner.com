---
title: Health Cards | R4 API
---

# Health-Cards

<%= beta_tag %>

* TOC
{:toc}

## Overview

A Health Card is a verifiable, digital artifact that represents a limited set of information about an individual, relevant to a specific health status. The card can be presented in digital and physical form. A QR code representing the card can be shared from a device or a piece of paper. Information in the health card can be used to determine the authenticity of the artifact and its issuer. The goal is to provide individuals with the choice to share limited health information in a portable and secure manner.

Health cards are designed in conformance with the emerging [SMART<sup>®</sup> Health Card framework](https://smarthealth.cards) ([technical specification](https://spec.smarthealth.cards/)) and [HL7<sup>®</sup> FHIR<sup>®</sup> Vaccination and Testing IG](http://build.fhir.org/ig/dvci/vaccine-credential-ig/branches/main/).

The [$health-cards-issue](#health-cards-issue) operation adheres to the [FHIR specification](https://spec.smarthealth.cards/#via-fhir-health-cards-issue-operation) and returns Health Cards as verifiableCredentials in a FHIR [Parameters](http://hl7.org/fhir/r4/parameters.html) resource. These verifiable credentials are [JSON Web Signatures](https://datatracker.ietf.org/doc/html/rfc7515) with a compressed payload. Refer to the specification for details on the protocols for 

* [encoding/decoding the health cards JWS](https://spec.smarthealth.cards/#health-cards-are-encoded-as-compact-serialization-json-web-signatures-jws)
* [signing/verifying the JWS](https://spec.smarthealth.cards/#generating-and-resolving-cryptographic-keys)

The FHIR Bundle encompassed in the Health Card adheres to the Data Minimization profiles defined by [HL7 FHIR Vaccination and Testing IG](http://build.fhir.org/ig/dvci/vaccine-credential-ig/branches/main/).

## Supported Health Card Types

 Description                                            | FHIR Bundle Profile                                                               | Credential Types
--------------------------------------------------------|-----------------------------------------------------------------------------------|-------------------------------------
Covid19 vaccination            | [Vaccination Credentials (DM)](#vaccination-credentials-dm)                       | `https://smarthealth.cards#health-card`<br>`https://smarthealth.cards#immunization`<br>`https://smarthealth.cards#covid19` 
Covid19 laboratory test result | [Laboratory Test Result Credentials (DM)](#laboratory-test-result-credentials-dm) | `https://smarthealth.cards#health-card`<br>`https://smarthealth.cards#laboratory`<br>`https://smarthealth.cards#covid19` 

A supported health card type is returned if the following conditions are met:

* The intersection of the requested credential types matches the credential types of the health card type
* The system contains valid data to satisfy the health card types FHIR Bundle profile


## Supported FHIR Bundle Profiles

These are the FHIR Bundle profiles for the resources returned in a health card type.

### Vaccination Credentials (DM)

Represents the patient and the clinical data related to a vaccination

Contains the following resources:

* A single Patient resource that follows the [VaccinationCredentialPatientDM](http://build.fhir.org/ig/dvci/vaccine-credential-ig/branches/main/StructureDefinition-vaccination-credential-patient-dm.html#tab-ms) profile with the following fields, if valued:
  * [Patient official name](http://build.fhir.org/ig/dvci/vaccine-credential-ig/branches/main/StructureDefinition-vaccination-credential-patient-definitions.html#Patient.name){:target="_blank"}
  * [Date of Birth](http://build.fhir.org/ig/dvci/vaccine-credential-ig/branches/main/StructureDefinition-vaccination-credential-patient-definitions.html#Patient.birthDate){:target="_blank"}

* One or more Immunization resources that follow the [VaccinationCredentialImmunizationDM](http://build.fhir.org/ig/dvci/vaccine-credential-ig/branches/main/StructureDefinition-vaccination-credential-immunization-dm.html) profile with the following fields, if valued:
  * [Status](http://build.fhir.org/ig/dvci/vaccine-credential-ig/branches/main/StructureDefinition-vaccination-credential-immunization-definitions.html#Immunization.status){:target="_blank"}
  * [Vaccine administered](http://build.fhir.org/ig/dvci/vaccine-credential-ig/branches/main/StructureDefinition-vaccination-credential-immunization-definitions.html#Immunization.vaccineCode){:target="_blank"}
  * [Patient](http://build.fhir.org/ig/dvci/vaccine-credential-ig/branches/main/StructureDefinition-vaccination-credential-immunization-definitions.html#Immunization.patient){:target="_blank"}
  * [Administration date/time](http://build.fhir.org/ig/dvci/vaccine-credential-ig/branches/main/StructureDefinition-vaccination-credential-immunization-definitions.html#Immunization.occurrenceDateTime){:target="_blank"}
  * [Vaccine lot number](http://build.fhir.org/ig/dvci/vaccine-credential-ig/branches/main/StructureDefinition-vaccination-credential-immunization-definitions.html#Immunization.lotNumber){:target="_blank"}
  * [Performer](http://build.fhir.org/ig/dvci/vaccine-credential-ig/branches/main/StructureDefinition-vaccination-credential-immunization-definitions.html#Immunization.performer){:target="_blank"}
    * [Organization that performed the action](http://build.fhir.org/ig/dvci/vaccine-credential-ig/branches/main/StructureDefinition-vaccination-credential-immunization-definitions.html#Immunization.performer.actor){:target="_blank"}

_Terminology Bindings_

<%= terminology_table(:health_cards_immunization, :r4) %>

_Authorization Types_

The OAuth2 token must include `Patient.read` and `Immunization.read` scopes.

### Laboratory Test Result Credentials (DM)

Represents the patient and the clinical data related to a laboratory test result

Contains the following resources:

* A single Patient resource that follows the [VaccinationCredentialPatientDM](http://build.fhir.org/ig/dvci/vaccine-credential-ig/branches/main/StructureDefinition-vaccination-credential-patient-dm.html#tab-ms) profile with the following fields, if valued:
  * [Patient official name](http://build.fhir.org/ig/dvci/vaccine-credential-ig/branches/main/StructureDefinition-vaccination-credential-patient-definitions.html#Patient.name){:target="_blank"}
  * [Date of Birth](http://build.fhir.org/ig/dvci/vaccine-credential-ig/branches/main/StructureDefinition-vaccination-credential-patient-definitions.html#Patient.birthDate){:target="_blank"}

* One or more Observation resources that follow the [InfectiousDiseaseLaboratoryResultObservationDM](http://build.fhir.org/ig/dvci/vaccine-credential-ig/branches/main/StructureDefinition-infectious-disease-laboratory-result-observation-dm.html) profile with the following fields, if valued:
  * [Status](http://build.fhir.org/ig/dvci/vaccine-credential-ig/branches/main/StructureDefinition-infectious-disease-laboratory-result-observation-definitions.html#Observation.status){:target="_blank"}
  * [Code](http://build.fhir.org/ig/dvci/vaccine-credential-ig/branches/main/StructureDefinition-infectious-disease-laboratory-result-observation-definitions.html#Observation.code){:target="_blank"}
  * [Subject](http://build.fhir.org/ig/dvci/vaccine-credential-ig/branches/main/StructureDefinition-infectious-disease-laboratory-result-observation-definitions.html#Observation.subject){:target="_blank"}
  * [Effective date time](http://build.fhir.org/ig/dvci/vaccine-credential-ig/branches/main/StructureDefinition-infectious-disease-laboratory-result-observation-definitions.html#Observation.effectiveDateTime){:target="_blank"}
  * [Value (one of)](http://build.fhir.org/ig/dvci/vaccine-credential-ig/branches/main/StructureDefinition-infectious-disease-laboratory-result-observation-definitions.html#Observation.value[x]){:target="_blank"}
    * [Value codeable concept](http://build.fhir.org/ig/dvci/vaccine-credential-ig/branches/main/StructureDefinition-infectious-disease-laboratory-result-observation-definitions.html#Observation.value[x]:valueCodeableConcept){:target="_blank"}
    * [Value quantity](http://build.fhir.org/ig/dvci/vaccine-credential-ig/branches/main/StructureDefinition-infectious-disease-laboratory-result-observation-definitions.html#Observation.value[x]:valueQuantity){:target="_blank"}
    * [Value string](http://build.fhir.org/ig/dvci/vaccine-credential-ig/branches/main/StructureDefinition-infectious-disease-laboratory-result-observation-definitions.html#Observation.value[x]:valueString){:target="_blank"}
  * [Reference range](http://build.fhir.org/ig/dvci/vaccine-credential-ig/branches/main/StructureDefinition-infectious-disease-laboratory-result-observation-definitions.html#Observation.referenceRange){:target="_blank"}

_Terminology Bindings_

<%= terminology_table(:health_cards_observation, :r4) %>

_Authorization Types_

The OAuth2 token must include `Patient.read` and `Observation.read` scopes.

## $health-cards-issue 

<%= beta_tag(action: true) %>

Issues Health Cards for an existing Patient that meet the supplied request:

    POST /Patient/:id/$health-cards-issue

_Implementation Notes_

* Though the spec is considered stable, it is yet to undergo the HL7 FHIR balloting process that may introduce changes. Please consider this while implementing in a Production environment.
* Only the body fields mentioned below are supported. Unsupported fields will be ignored.

### Authorization Types

<%= authorization_types(provider: false, patient: true, system: false) %>

_Implementation Notes_

* See [Supported Health Card Types](#supported-health-card-types) and the authorization types section of the associated [FHIR Bundle Profile](#supported-fhir-bundle-profiles) for scopes required for specific health card types.

### Headers

<%= headers head: {Authorization: '&lt;OAuth2 Bearer Token>', Accept: 'application/fhir+json', 'Content-Type': 'application/fhir+json'} %>

### Body Fields

<%= definition_table(:health_cards, :'health-cards-issue', :r4) %>

### Example

#### Request

    POST https://fhir-myrecord.cerner.com/r4/ec2458f2-1e24-41c8-b71b-0e701af7583d/Patient/12742542/$health-cards-issue

#### Body

<%= json(:r4_health_cards_issue_request, css_override: 'body-response-auto-height') %>

#### Response

<%= headers status: 200 %>
<%= json(:r4_health_cards_response) %>

<%= disclaimer %>

### Errors

The common [errors] and [OperationOutcomes] may be returned.

[errors]: ../../#client-errors
[OperationOutcomes]: ../../#operation-outcomes
