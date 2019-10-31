---
title: Proprietary Codes | DSTU2 API
---

# Proprietary Codes

* TOC
{:toc}

## Overview

Cerner's implementation of the HL7<sup>®</sup> DSTU2 FHIR<sup>®</sup> standard allows Millennium proprietary code values
to be used in addition to standard value set codes on a limited basis. This allows developers to read and write data
with clients' proprietary codes, eliminating the need to map proprietary codes to standard codes. This is particularly
beneficial for concepts that are highly customized by clients such as appointment and document types.

Millennium groups repetitive textual information into code sets. The code set stores a numeric code value that
represents a textual or character display. Code sets are consistent across all clients. But the values in a code set
vary between clients and are only guaranteed unique within a specific EHR system, which is the reason for the EHR
source id (or tenant) qualifier in the system URL.

The following are true for all Millennium proprietary codes:

* The `system` value uses the following format: `https://fhir.cerner.com/<EHR source id>/codeSet/<code set>`
* The `code` value is the numeric code value as a string
* The `display` value is the code value display
* The `userSelected` value is set to true
* On inbound requests (POST, PUT, PATCH), proprietary codes and standard codes may not be set in the same coding array. If they are, the create or update request will fail with a `422 Unprocessable Entity` response.

Example outbound CodeableConcept displaying both standard and proprietary codes:

    {
      "type": {
        "coding": [
          {
            "system": "http://snomed.info/sct",
            "code": "394581000",
            "display": "Community medicine",
            "userSelected": false
          },
          {
            "system": "https://fhir.cerner.com/<EHR source id>/codeSet/14249",
            "code": "21265426",
            "display": "Same Day",
            "userSelected": true
          }
        ]
      }
    }

## Infrastructure

<!-- use html header to avoid showing up in toc -->
<h3>DocumentReference</h3>

The DocumentReference Resource supports proprietary codes for:

* DocumentReference.type codes are maintained in [Code Set 72 Event Code](#code-set-72-event-code)

## Scheduling

<!-- use html header to avoid showing up in toc -->
<h3>Appointment</h3>

The Appointment Resource supports proprietary codes for:

* Appointment.type codes are maintained in [Code Set 14249 Scheduling Appointment Synonyms or Types](#code-set-14249-scheduling-appointment-synonyms-or-types)

<!-- use html header to avoid showing up in toc -->
<h3>Slot</h3>

The Slot Resource supports proprietary codes for:

* Slot.type codes are maintained in [Code Set 14249 Scheduling Appointment Synonyms or Types](#code-set-14249-scheduling-appointment-synonyms-or-types)

## List of Code Sets

#### Code Set 72 Event Code

This code set is extremely large, very client customized, and maintains all clinical events such as various clinical
documents or note types and clinical observations such as laboratory results and vital signs.

    {
      "system": "https://fhir.cerner.com/<EHR source id>/codeSet/72,
      "code": "2820587",
      "display": "Discharge Note-Nursing",
      "userSelected": true
    }

#### Code Set 14249 Scheduling Appointment Synonyms or Types

This code set is highly customized by clients and may include appointment types such as
Office Visit, Office Visit - New, or Office Visit - Follow Up.

    {
      "system": "https://fhir.cerner.com/<EHR source id>/codeSet/14249,
      "code": "5038369",
      "display": "Office Visit - Return",
      "userSelected": true
    }
