---
title: Proprietary Codes and Systems | R4 API
---

# Proprietary Codes and Systems

* TOC
{:toc}

## Proprietary Codes

### Overview

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

### Encounters

<!-- use html header to avoid showing up in toc -->
<h4>Encounter</h4>

The Encounter Resource supports proprietary codes for:

* Encounter.identifier.type codes are maintained in [Code Set 319 Encounter Alias Type](#code-set-319-encounter-alias-type)
* Encounter.type codes are maintained in [Code Set 71 Visit Type](#code-set-71-visit-type)
* Encounter.serviceType codes are maintained in [Code Set 34 Hospital Service](#code-set-34-hospital-service)
* Encounter.priority codes are maintained in [Code Set 3 Encounter Admission Type](#code-set-3-encounter-admission-type)
* Encounter.participant.type codes are maintained in [Code Set 333 Encounter/Personnel Relationship](#code-set-333-encounterpersonnel-relationship)
* Encounter.hospitalization.admitSource codes are maintained in [Code Set 2 Admission Source](#code-set-2-admission-source)
* Encounter.hospitalization.dietPreference codes are maintained in [Code Set 18 Diet](#code-set-18-diet)
* Encounter.hospitalization.specialCourtesy codes are maintained in [Code Set 67 VIP](#code-set-67-vip) and [Code Set 16 Courtesy](#code-set-16-courtesy)
* Encounter.hospitalization.dischargeDisposition codes are maintained in [Code Set 19 Discharge Disposition](#code-set-19-discharge-disposition)

### Financial

<!-- use html header to avoid showing up in toc -->
<h4>Account</h4>

The Account Resource supports proprietary codes for:

* Account.type.text codes are maintained in [Code Set 18736 Account Types](#code-set-18736-account-types)
* Account.balance.currency codes are maintained in [Code Set 18934 Currency Type](#code-set-18934-currency-type)
* Account.state codes are maintained in [Code Set 24451 Benefit Order Status](#code-set-24451-benefit-order-status) and [Code Set 4002640 Correspondence Status](#code-set-4002640-correspondence-status)
* Account.identifier codes are maintained in [Code Set 28200 PFT Bill Alias Type](#code-set-28200-pft-bill-alias-type)

### General Clinical

<!-- use html header to avoid showing up in toc -->
<h4>Condition</h4>

The Condition Resource supports proprietary codes for:

* Condition.severity codes are maintained in [Code Set 12022 Severity](#code-set-12022-severity)

### Individuals

<!-- use html header to avoid showing up in toc -->
<h4>Patient</h4>

The Patient Resource supports proprietary codes for:

* Patient.maritalStatus codes are maintained in [Code Set 38 Marital Status](#code-set-38-marital-status)
* Patient.communication.language codes are maintained in [Code Set 36 Languages](#code-set-36-languages)
* Patient.identifier.type codes are maintained in [Code Set 4 Person Identifier (Alias) Types](#code-set-4-person-identifier-alias-types)
* Patient.contact.relationship codes for are maintained in [Code Set 351 Person Relationship Types](#code-set-351-person-relationship-types)

<h4>RelatedPerson</h4>

The RelatedPerson Resource supports proprietary codes for:

* RelatedPerson.communication.language codes are maintained in [Code Set 36 Languages](#code-set-36-languages)
* RelatedPerson.relationship codes are maintained in [Code Set 40 Person Relationship Types](#code-set-40-person-relationships) and [Code Set 351 Person Relationship Types](#code-set-351-person-relationship-types) 

### Medications

<!-- use html header to avoid showing up in toc -->
<h4>Immunization</h4>

The Immunization Resource supports proprietary codes for:

* Immunization.statusReason codes are maintained in [Code Set 30440 Expire Reasons](#code-set-30440-expire-reasons)
* Immunization.vaccineCode codes are maintained in [Code Set 72 Clinical Event Codes](#code-set-72-clinical-event-codes)
* Immunization.reportOrigin codes are maintained in [Code Set 30200 Result Source](#code-set-30200-result-source)
* Immunization.site codes are maintained in [Code Set 97 Medication Administration Site](#code-set-97-medication-administration-site)
* Immunization.route codes are maintained in [Code Set 4001 Medication Administration Route](#code-set-4001-medication-administration-route)

### Scheduling

<!-- use html header to avoid showing up in toc -->
<h4>Appointment</h4>

The Appointment Resource supports proprietary codes for:

* Appointment.serviceType codes are maintained in [Code Set 14249 Scheduling Appointment Type Synonyms](#code-set-14249-scheduling-appointment-type-synonyms)

* Appointment.participant.type codes are maintained in [Code Set 14250 Scheduling Resource Roles](#code-set-14250-scheduling-resource-roles)

### List of Code Sets

##### Code Set 2 Admission Source

This code set is similar to the HL7 value set but may have more specific displays such as Transfer from Critical Access Hospital versus Transferred from other hospital.

    {
      "system": "https://fhir.cerner.com/<EHR source id>/codeSet/2,
      "code": "309194",
      "display": "Emergency Room",
      "userSelected": true
    }

##### Code Set 3 Encounter Admission Type

This code set is typically small and similar to the HL7 value set.

    {
      "system": "https://fhir.cerner.com/<EHR source id>/codeSet/3",
      "code": "309203",
      "display": "Emergency",
      "userSelected": true
    }

##### Code Set 4 Person Identifier (Alias) Types

This code set includes Identifier Types such as Medical Record Number and Driver's License Number.

    {
      "system": "https://fhir.cerner.com/<EHR source id>/codeSet/4",
      "code": "10",
      "display": "MRN",
      "userSelected": true
    }

##### Code Set 16 Courtesy

This code set is a one-element code set containing only Yes.

    {
      "system": "https://fhir.cerner.com/<EHR source id>/codeSet/16",
      "code": "4334139",
      "display": "Yes",
      "userSelected": true
    }

##### Code Set 18 Diet

This is a small code set similar to the HL7 value set.

    {
      "system": "https://fhir.cerner.com/<EHR source id>/codeSet/18",
      "code": "301226",
      "display": "Low Sodium",
      "userSelected": true
    }

##### Code Set 19 Discharge Disposition

The Center for Medicare and Medicaid Services (CMS) maintains a minimum set of required values for documenting the disposition of patients upon discharge.

    {
      "system": "https://fhir.cerner.com/<EHR source id>/codeSet/19",
      "code": "638672",
      "display": "Home Care with Home Health",
      "userSelected": true
    }

##### Code Set 34 Hospital Service

This code set maintains service types available in the facility such as Emergency Medicine, Neurology, and Pediatrics.

    {
      "system": "https://fhir.cerner.com/<EHR source id>/codeSet/34",
      "code": "313022",
      "display": "Pediatrics",
      "userSelected": true
    }

##### Code Set 36 Languages

This code set is customized by clients and may include Languages such as English and Chinese.

    {
      "system": "https://fhir.cerner.com/<EHR source id>/codeSet/36",
      "code": "151",
      "display": "English",
      "userSelected": true
    }

##### Code Set 38 Marital Status

This code set may include Marital Statuses such as Divorced and Married.

    {
      "system": "https://fhir.cerner.com/<EHR source id>/codeSet/38",
      "code": "309236",
      "display": "Divorced",
      "userSelected": true
    }

##### Code Set 40 Person Relationships

This code set is used to describe the patient's relationship to Subscriber, Guarantor, Emergency Contact, Next of Kin, and other related persons.
     
    {
      "system": "https://fhir.cerner.com/<EHR source id>/codeSet/40",
      "code": "153",
      "display": "DAUGHTER",
      "userSelected": true
    }


##### Code Set 67 VIP

This code set is a one-element code set containing only Yes.

    {
      "system": "https://fhir.cerner.com/<EHR source id>/codeSet/67",
      "code": "4334139",
      "display": "Yes",
      "userSelected": true
    }

##### Code Set 71 Visit Type

This code set is client definable for different patient types such an Outpatient in a Bed versus Outpatient Clinic visit. There can be workflow and/or functional requirements for different encounter types.

    {
      "system": "https://fhir.cerner.com/<EHR source id>/codeSet/71",
      "code": "309314",
      "display": "Recurring",
      "userSelected": true
    }

##### Code Set 72 Clinical Event Codes

This code set is extremely large and highly customized by clients. It maintains all the various clinical events such as vital signs, laboratory results, documents, and immunizations.

    { 
      "system": "https://fhir.cerner.com/<EHR source id>/codeSet/72", 
      "code": "2799031", 
      "display": "Lyme disease vaccine", 
      "userSelected": true 
    }

##### Code Set 97 Medication Administration Site

This code set maintains medication administration sites such as left arm, right gluteus medius, or right deltoid.

    { 
      "system": "https://fhir.cerner.com/<EHR source id>/codeSet/97", 
      "code": "603", 
      "display": "Right arm", 
      "userSelected": true 
    }

##### Code Set 319 Encounter Alias Type

This is a small code set currently only supporting FIN NBR and VISITID.

    {
      "system": "https://fhir.cerner.com/<EHR source id>/codeSet/319",
      "code": "1077",
      "display": "FIN NBR",
      "userSelected": true
    }

##### Code Set 333 Encounter/Personnel Relationship

This code set maintains the various personnel positions in the facility such as Attending Physician, ED Nurse Practitioner, and Case Manager.

    {
      "system": "https://fhir.cerner.com/<EHR source id>/codeSet/333",
      "code": "1119",
      "display": "Attending Physician",
      "userSelected": true
    }

##### Code Set 351 Person Relationship Types

This code set includes Relationship Types such as Guardian and Emergency Contact.

    {
      "system": "https://fhir.cerner.com/<EHR source id>/codeSet/351",
      "code": "1156",
      "display": "Guardian",
      "userSelected": true
    }

##### Code Set 4001 Medication Administration Route

This code set maintains medication administration routes such as ID or IM.

    { 
      "system": "https://fhir.cerner.com/<EHR source id>/codeSet/4001", 
      "code": "318167", 
      "display": "IM", 
      "userSelected": true 
    }

##### Code Set 12022 Severity

This code set contains levels of severity (mild, moderate, severe) used by multiple Millennium concepts including allergies, problems, diagnoses and family history. 

    { 
      "system": "https://fhir.cerner.com/<EHR source id>/codeSet/12022", 
      "code": "3294", 
      "display": "Moderate", 
    }

##### Code Set 14249 Scheduling Appointment Type Synonyms

This code set is highly customized by clients and may include appointment types such as Office Visit, Office Visit - New, or Office Visit - Follow Up.

    {
      "system": "https://fhir.cerner.com/<EHR source id>/codeSet/14249,
      "code": "5038369",
      "display": "Office Visit - Return",
      "userSelected": true
    }

##### Code Set 14250 Scheduling Resource Roles

This code set is customized by clients and defines exam rooms, surgery rooms, and generic resource roles such as Anesthesiologist and Radiology Tech.

    {
      "system": "https://fhir.cerner.com/<EHR source id>/codeSet/14250,
      "code": "4573",
      "display": "Radiology Exam Room",
    }

##### Code Set 18736 Account Types

This code set includes Account Types such as A/R and CASH.

    {
      "system": "https://fhir.cerner.com/<EHR source id>/codeSet/18736,
      "code": "18736",
      "display": "Cash",
      "userSelected": true
    }

##### Code Set 18934 Currency Type

This code set includes currency types such as USD.

    {
      "system": "https://fhir.cerner.com/<EHR source id>/codeSet/18934,
      "code": "11074",
      "display": "USD",
      "userSelected": true
    }

##### Code Set 24451 Benefit Order Status

This code set includes the statuses within the billing workflow such as In Process and Ready to bill.

    {
      "system": "https://fhir.cerner.com/<EHR source id>/codeSet/24451,
      "code": "653931",
      "display": "In Process",
      "userSelected": true
    }

##### Code Set 28200 PFT Bill Alias Type

This code set includes bill alias types such as billalias, invalias, and stmtalias.

    {
      "system": "https://fhir.cerner.com/<EHR source id>/codeSet/28200,
      "code": "6678349",
      "display": "STMTALIAS",
      "userSelected": true
    }

#####  Code Set 30200 Result Source
      
This code set maintains the source of information for a result such as self, parent, clinician, or other record and not the documenting or verifying user.

    { 
       "system": "https://fhir.cerner.com/<EHR source id>/codeSet/30200", 
       "code": "679976", 
       "display": "Mother", 
       "userSelected": true 
    }

##### Code Set 30440 Expire Reasons

This code set describes why an immunization was not administered when documented through the Health Maintenance model.

    { 
      "system": "https://fhir.cerner.com/<EHR source id>/codeSet/30440", 
      "code": "688466", 
      "display": "Postpone due to refusal",
      "userSelected": true
    } 

#### Code Set 4002640 Correspondence Status

This code set includes the statuses that reflect the current status of a correspondence within the statement workflow such as Pending and Delivered.

    {
      "system": "https://fhir.cerner.com/<EHR source id>/codeSet/4002640,
      "code": "19177939",
      "display": "Delivered",
      "userSelected": true
    }

## Proprietary Systems

### Overview

Cerner's implementation of the HL7<sup>®</sup> R4 FHIR<sup>®</sup> standard allows Millennium proprietary systems to be used in addition to standard systems.

### Financial

<!-- use html header to avoid showing up in toc -->
<h4>Account</h4>

The Account Resource supports proprietary systems for:

* Account.identifier.system is [Account Number](#account-number) for financial accounts.

### List of Systems

##### Account Number

This system is the account number of a financial account.

    {
      "use": "usual",
      "system": "https://fhir.cerner.com/accountnumber",
      "value": "5646"
    }
