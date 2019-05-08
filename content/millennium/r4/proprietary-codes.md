---
title: Proprietary Codes | R4 API
---

# Proprietary Codes

* TOC
{:toc}

## Overview

Cerner's implementation of the HL7<sup>®</sup> R4 FHIR<sup>®</sup> standard allows Millennium proprietary code values to be used in addition to standard value set codes. This allows developers to read and write data with clients' proprietary codes, eliminating the need to map proprietary codes to standard codes. This is particularly beneficial for concepts that are highly customized by clients such as appointment and document types.

Millennium groups repetitive textual information into code sets. The code set stores a numeric code value that represents a textual or character display. Code sets are consistent across all clients. But the values in a code set vary between clients and are only guaranteed unique within a specific EHR system, which is the reason for the EHR source id (or tenant) qualifier in the system URL.

The following are true for all Millennium proprietary codes:

* The `system` value uses the following format: `https://fhir.cerner.com/<EHR source id>/codeSet/<code set>`
* The `code` value is the numeric code value as a string
* The `display` value is the code value display
* The `userSelected` value is set to true

Example CodeableConcept displaying both standard and proprietary codes:

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

## Encounters

<!-- use html header to avoid showing up in toc -->
<h3>Encounter</h3>

The Encounter Resource supports proprietary codes for:

* Encounter.identifier.type codes are maintained in [Code Set 319 Encounter Alias Type](#code-set-319-encounter-alias-type)
* Encounter.type codes are maintained in [Code Set 71 Visit Type](#code-set-71-visit-type)
* Encounter.priority codes are maintained in [Code Set 3 Encounter Admission Type](#code-set-3-encounter-admission-type)
* Encounter.participant.type codes are maintained in [Code Set 333 Encounter/Personnel Relationship](#code-set-333-encounterpersonnel-relationship)
* Encounter.hospitalization.admitSource codes are maintained in [Code Set 2 Admission Source](#code-set-2-admission-source)
* Encounter.hospitalization.dietPreference codes are maintained in [Code Set 18 Diet](#code-set-18-diet)
* Encounter.hospitalization.specialCourtesy codes are maintained in [Code Set 67 VIP](#code-set-67-vip) and [Code Set 16 Courtesy](#code-set-16-courtesy)
* Encounter.hospitalization.dischargeDisposition codes are maintained in [Code Set 19 Discharge Disposition](#code-set-19-discharge-disposition)

## Individuals

<!-- use html header to avoid showing up in toc -->
<h3>Patient</h3>

The Patient Resource supports proprietary codes for:

* Patient.maritalStatus codes are maintained in [Code Set 38 Marital Status](#code-set-38-marital-status)
* Patient.communication.language codes are maintained in [Code Set 36 Languages](#code-set-36-languages)
* Patient.identifier.type codes are maintained in [Code Set 4 Person Identifier (Alias) Types](#code-set-4-person-identifier-alias-types)
* Patient.contact.relationship codes for are maintained in [Code Set 351 Person Relationship Types](#code-set-351-person-relationship-types)

## List of Code Sets

#### Code Set 2 Admission Source

This code set is similar to the HL7 value set but may have more specific displays such as Transfer from Critical Access Hospital versus Transferred from other hospital.

    {
      "system": "https://fhir.cerner.com/<EHR source id>/codeSet/2,
      "code": "309194",
      "display": "Emergency Room",
      "userSelected": true
    }

#### Code Set 3 Encounter Admission Type

This code set is typically small and similar to the HL7 value set.

    {
      "system": "https://fhir.cerner.com/<EHR source id>/codeSet/3",
      "code": "309203",
      "display": "Emergency",
      "userSelected": true
    }

#### Code Set 4 Person Identifier (Alias) Types

This code set includes Identifier Types such as Medical Record Number and Driver's License Number.

    {
      "system": "https://fhir.cerner.com/<EHR source id>/codeSet/4",
      "code": "10",
      "display": "MRN",
      "userSelected": true
    }

#### Code Set 16 Courtesy

This code set is a one-element code set containing only Yes.

    {
      "system": "https://fhir.cerner.com/<EHR source id>/codeSet/16",
      "code": "4334139",
      "display": "Yes",
      "userSelected": true
    }

#### Code Set 18 Diet

This is a small code set similar to the HL7 value set.

    {
      "system": "https://fhir.cerner.com/<EHR source id>/codeSet/18",
      "code": "301226",
      "display": "Low Sodium",
      "userSelected": true
    }

#### Code Set 19 Discharge Disposition

The Center for Medicare and Medicaid Services (CMS) maintains a minimum set of required values for documenting the disposition of patients upon discharge.

    {
      "system": "https://fhir.cerner.com/<EHR source id>/codeSet/19",
      "code": "638672",
      "display": "Home Care with Home Health",
      "userSelected": true
    }

#### Code Set 36 Languages

This code set is customized by clients and may include Languages such as English and Chinese.

    {
      "system": "https://fhir.cerner.com/<EHR source id>/codeSet/36",
      "code": "151",
      "display": "English",
      "userSelected": true
    }

#### Code Set 38 Marital Status

This code set may include Marital Statuses such as Divorced and Married.

    {
      "system": "https://fhir.cerner.com/<EHR source id>/codeSet/38",
      "code": "309236",
      "display": "Divorced",
      "userSelected": true
    }

#### Code Set 67 VIP

This code set is a one-element code set containing only Yes.

    {
      "system": "https://fhir.cerner.com/<EHR source id>/codeSet/67",
      "code": "4334139",
      "display": "Yes",
      "userSelected": true
    }

#### Code Set 71 Visit Type

This code set is client definable for different patient types such an Outpatient in a Bed versus Outpatient Clinic visit. There can be workflow and/or functional requirements for different encounter types.

    {
      "system": "https://fhir.cerner.com/<EHR source id>/codeSet/71",
      "code": "309314",
      "display": "Recurring",
      "userSelected": true
    }

#### Code Set 319 Encounter Alias Type

This is a small code set currently only supporting FIN NBR and VISITID.

    {
      "system": "https://fhir.cerner.com/<EHR source id>/codeSet/319",
      "code": "1077",
      "display": "FIN NBR",
      "userSelected": true
    }

#### Code Set 333 Encounter/Personnel Relationship

This code set maintains the various personnel positions in the facility such as Attending Physician, ED Nurse Practitioner, and Case Manager.

    {
      "system": "https://fhir.cerner.com/<EHR source id>/codeSet/333",
      "code": "1119",
      "display": "Attending Physician",
      "userSelected": true
    }

#### Code Set 351 Person Relationship Types

This code set includes Relationship Types such as Guardian and Emergency Contact.

    {
      "system": "https://fhir.cerner.com/<EHR source id>/codeSet/351",
      "code": "1156",
      "display": "Guardian",
      "userSelected": true
    }

#### Code Set 14249 Scheduling Appointment Synonyms or Types

This code set is highly customized by clients and may include appointment types such as Office Visit, Office Visit - New, or Office Visit - Follow Up.

    {
      "system": "https://fhir.cerner.com/<EHR source id>/codeSet/14249,
      "code": "5038369",
      "display": "Office Visit - Return",
      "userSelected": true
    }
