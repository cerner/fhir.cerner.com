---
title: Health Cards | R4 API
---

# Health-Cards

* TOC
{:toc}

## Overview

A Health Card is a verifiable, digital artifact that represents a limited set of information about an individual, relevant to a specific health status. The card can be presented in digital and physical form. A QR code representing the card can be shared from a device or a piece of paper. Information in the health card can be used to determine the authenticity of the artifact and its issuer. The goal is to provide individuals with the choice to share limited health information in a portable and secure manner. 

Health cards are designed in conformance with the emerging [SMART Health Card framework](https://smarthealth.cards) and [HL7 FHIR Vaccination and Testing IG](http://build.fhir.org/ig/dvci/vaccine-credential-ig/branches/main/).

The FHIR payloads encompassed in the Health Card adhere to the Data Minimization profiles defined by [HL7 FHIR Vaccination and Testing IG](http://build.fhir.org/ig/dvci/vaccine-credential-ig/branches/main/).

## Terminology Bindings

TBD
<%= terminology_table(:health_cards, :r4) %>

## $health-cards-issue 

Issue a  Health Card for a patient that meet the supplied request:

    POST /Patient/{Patient.id}/$health-cards-issue

_Implementation Notes_

* Only the body fields mentioned below are supported. Unsupported fields will be ignored.

### Authorization Types

<%= authorization_types(provider: false, patient: true, system: false) %>

### Supported Credential Types

TBD - May need to be put in the [Body Fields](#Body-Fields)

### Headers

<%= headers fhir_json: true %>

### Body Fields

TBD

### Example

#### Request

    POST https://fhir-myrecord.cerner.com/r4/ec2458f2-1e24-41c8-b71b-0e701af7583d/Patient/12724065/$health-cards-issue

#### Body

<%= json(:r4_health_cards_issue_request) %>

#### Response

TBD
<%= headers status: 200 %>
<%= json(:r4_health_cards_response) %>

<%= disclaimer %>

### Errors

The common [errors] and [OperationOutcomes] may be returned.