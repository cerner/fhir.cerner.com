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

### Care Provision

<h3>NutritionOrder</h3>

The NutritionOrder Resource supports proprietary codes for:

* NutritionOrder.foodPreferenceModifier codes are maintained in [Code Set 6102 Dietary Modifiers](#code-set-6102-dietary-modifiers) and [Code Set 6103 Beverage Modifiers](#code-set-6103-beverage-modifiers)
* NutritionOrder.oralDiet.schedule.code codes are maintained in [Code Set 4003 Frequency](#code-set-4003-frequency)
* NutritionOrder.oralDiet.texture.modifier codes are maintained in [Code Set 100197 Diet Consistency](#code-set-100197-diet-consistency)
* NutritionOrder.oralDiet.fluidConsistencyType codes are maintained in [Code Set 100123 Beverage Consistency](#code-set-100123-beverage-consistency)
* NutritionOrder.supplement.type codes are maintained in [Code Set 6107 Dietary Supplements](#code-set-6107-dietary-supplement)

<h3>ServiceRequest</h3>

The ServiceRequest Resource supports proprietary codes for:

* ServiceRequest.category codes are maintained in [Code Set 6000 Catalog Type](#code-set-6000-catalog-type)
* ServiceRequest.code codes are maintained in [Code Set 200 Order Catalog](#code-set-200-order-catalog)
* ServiceRequest.occurrence.timing codes are maintained in [Code Set 4003 Frequency](#code-set-4003-frequency)
* ServiceRequest.asNeededCodeableConcept codes are maintained in [Code Set 4005](#code-set-4005-reason-for-medication)
* ServiceRequest.bodySite codes are maintained in [Code Set 1028 Body Site](#code-set-1028-body-site) and [Code Set 14045 Surgical Procedure Modifiers](#code-set-14045-surgical-procedure-modifiers)

### Diagnostic

<h3>Observation</h3>

The Observation Resource supports proprietary codes for:

* Observation.code and Observation.component.code codes are maintained in [Code Set 72 Clinical Event Codes](https://fhir.cerner.com/millennium/r4/proprietary-codes-and-systems/#code-set-72-clinical-event-codes)
* Observation.interpretation and Observation.component.interpretation codes are maintained in [Code Set 52 Result Interpretation](https://fhir.cerner.com/millennium/r4/proprietary-codes-and-systems/#code-set-52-result-interpretation)

### Documents

<!-- use html header to avoid showing up in toc -->
<h3>DocumentReference</h3>

The DocumentReference Resource supports proprietary codes for:

* DocumentReference.type codes are maintained in [Code Set 72 Clinical Event Codes](#code-set-72-clinical-event-codes)

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
* Custom Attribute extensions on Encounter may contain Custom Attribute Value codes when Custom Attribute Value is of type CodeableConcept. These codes may be from [any Code Set](#list-of-code-sets)

### Entities

<!-- use html header to avoid showing up in toc -->
<h4>Organization</h4>

The Organization Resource supports proprietary codes for:

* Organization.identifier.type codes are maintained in [Code Set 334 Organization Alias Type](#code-set-334-organization-alias-type)
* Organization.type codes are maintained in [Code Set 278 Organization Type](#code-set-278-organization-type)

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

<h4>Procedure</h4>

The Procedure Resource supports proprietary codes for:

* Procedure.performer.function codes are maintained in [Code Set 388 Procedure Personnel Relation Type](#code-set-388-procedure-personnel-relation-type)

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

<h4>Location</h4>

The Location Resource supports proprietary codes for:

* location.physicalType code is maintained in [Code Set 222 Location Type](#code-set-222-location-type)

### Medications

<!-- use html header to avoid showing up in toc -->
<h4>Immunization</h4>

The Immunization Resource supports proprietary codes for:

* Immunization.statusReason codes are maintained in [Code Set 30440 Expire Reasons](#code-set-30440-expire-reasons)
* Immunization.vaccineCode codes are maintained in [Code Set 72 Clinical Event Codes](#code-set-72-clinical-event-codes)
* Immunization.reportOrigin codes are maintained in [Code Set 30200 Result Source](#code-set-30200-result-source)
* Immunization.site codes are maintained in [Code Set 97 Medication Administration Site](#code-set-97-medication-administration-site)
* Immunization.route codes are maintained in [Code Set 4001 Medication Administration Route](#code-set-4001-medication-administration-route)

<!-- use html header to avoid showing up in toc -->
<h4>MedicationRequest</h4>

The MedicationRequest Resource supports proprietary codes for:

* MedicationRequest.statusReason codes are maintained in [Code Set 1309 Cancel Reasons](#code-set-1309-cancel-reasons) and [Code Set 4001970 Void Order Reasons](#code-set-4001970-void-order-reasons)
* MedicationRequest.courseOfTherapyType codes are maintained in [Code Set 4009 Order Stop Types](#code-set-4009-order-stop-types)
* MedicationRequest.dosageInstruction.timing.code codes are maintained in [Code Set 4003 Frequency](#code-set-4003-frequency)
* MedicationRequest.dosageInstruction.asNeededCodeableConcept codes are maintained in [Code Set 4005 Reason for Medication](#code-set-4005-reason-for-medication)
* MedicationRequest.dosageInstruction.site codes are maintained in [Code Set 1028 Body Site](#code-set-1028-body-site)
* MedicationRequest.dosageInstruction.route codes are maintained in [Code Set 4001 Medication Administration Route](#code-set-4001-medication-administration-route)

<h4>Medication</h4>

The contained Medication Resource supports proprietary codes for:

* Medication.form codes are maintained in [Code Set 4002 Form](#code-set-4002-form)

### Scheduling

<!-- use html header to avoid showing up in toc -->
<h4>Appointment</h4>

The Appointment Resource supports proprietary codes for:

* Appointment.cancelationReason codes are maintained in [Code Set 14229 Scheduling Appointment Cancellation Reason](#code-set-14229-scheduling-appointment-cancellation-reason)

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

##### Code Set 52 Interpretation Result

This code set contains values that are used to interpret results such as Normal or High.

    {
      "system": "https://fhir.cerner.com/<EHR source id>/codeSet/52",
      "code": "214",
      "display": "Normal",
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

##### Code Set 200 Order Catalog

This code set is extremely large and highly customized by clients. It maintains the entire catalog of orders defined by a client.

    {
      "system": "https://fhir.cerner.com/<EHR source id>/codeSet/200",
      "code": "3976772",
      "userSelected": true
    }

##### Code Set 222 Location Type

This code set maintains the location types, such as BUILDING, NURSEUNIT, BED etc.

    {
      "system": "https://fhir.cerner.com/<EHR source id>/codeSet/222",
      "code": "794",
      "display": "Nurse Unit(s)",
      "userSelected": true
    }

##### Code Set 278 Organization Type

This code set maintains the classification of Organizations, such as GOVT or INSURANCE.

    {
      "system": "https://fhir.cerner.com/<EHR source id>/codeSet/278",
      "code": "1077",
      "display": "govt",
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

##### Code Set 334 Organization Alias Type

This code set maintains the identifying values for an Organization, such as NPI, OID, and FederalTAXID.

    {
      "system": "https://fhir.cerner.com/<EHR source id>/codeSet/334",
      "code": "2343451",
      "display": "OID",
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

##### Code Set 388 Procedure Personnel Relation Type

This code set contains the specific types of relationships you can establish between personnel and a procedure.

    {
      "system": "https://fhir.cerner.com/<EHR source id>/codeSet/388",
      "code": "1209",
      "display": "Surgeon",
      "userSelected": true
    }

##### Code Set 1028 Body Site

This code set contains body sites such as Chest, Back or Eye.

    {
      "system": "https://fhir.cerner.com/<EHR source id>/codeSet/1028",
      "code": "309163",
      "display": "Chest",
      "userSelected": true
    }

##### Code Set 1309 Cancel Reasons

This code set contains the various reasons why an order was cancelled/discontinued.

    {
      "system": "https://fhir.cerner.com/<EHR source id>/codeSet/1309",
      "code": "633908",
      "display": "Duplicate Order",
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

##### Code Set 4002 Form

This code set contains medication forms such as Aerosol, Gel or Tab.

    {
      "system": "https://fhir.cerner.com/<EHR source id>/codeSet/4002",
      "code": "318231",
      "display": "Tab",
      "userSelected": true
    }

##### Code Set 4003 Frequency

This code set contains an orders frequency such as BID, Daily or q2hr.

    {
      "system": "https://fhir.cerner.com/<EHR source id>/codeSet/4003",
      "code": "696528",
      "display": "BID",
      "userSelected": true
    }

##### Code Set 4005 Reason for Medication

This code set contains reasons a medication is needed such as Nausea, Anxiety or Pain.

    {
      "system": "https://fhir.cerner.com/<EHR source id>/codeSet/4005",
      "code": "614498",
      "display": "pain",
      "userSelected": true
    }

##### Code Set 4009 Order Stop Types

This code set contains the stop type of an order such as Physician Stop, Hard Stop or Soft Stop.

    {
      "system": "https://fhir.cerner.com/<EHR source id>/codeSet/4009",
      "code": "2336",
      "display": "Hard Stop",
      "userSelected": true
    }

##### Code Set 6000 Catalog Type

This code set contains the catalog types of the order catalog.

    {
      "system": "https://fhir.cerner.com/<EHR source id>/codeSet/6000",
      "code": "2516",
      "display": "Pharmacy",
      "userSelected": true
    }

##### Code Set 6102 Dietary Modifiers

This code set contains type of diet. Such as Halal, Vegan or Kosher.

    {
      "system": "https://fhir.cerner.com/<EHR source id>/codeSet/6102",
      "code": "658486",
      "display": "Kosher",
      "userSelected": true
    }

##### Code Set 6103 Beverage Modifiers

This code set contains type of Beverage Modifier. Such as No carbonated, caffeinated etc.

    {
      "system": "https://fhir.cerner.com/<EHR source id>/codeSet/6103",
      "code": "658489",
      "display": "No caffeinated beverages",
      "userSelected": true
    }

##### Code Set 6107 Dietary Supplement

This code set contains the kind of nutritional supplement.

    {
      "system": "https://fhir.cerner.com/<EHR source id>/codeSet/6107",
      "code": "658509",
      "display": "High protein pudding",
      "userSelected": true
    }

##### Code Set 12022 Severity

This code set contains levels of severity (mild, moderate, severe) used by multiple Millennium concepts including allergies, problems, diagnoses and family history.

    {
      "system": "https://fhir.cerner.com/<EHR source id>/codeSet/12022",
      "code": "3294",
      "display": "Moderate",
    }

##### Code Set 14045 Surgical Procedure Modifiers

This code set contains the area of the body the surgery procedure is being executed.

    {
      "system": "https://fhir.cerner.com/<EHR source id>/codeSet/14045",
      "code": "3858",
      "display": "Left",
      "userSelected": true
    }
    
##### Code Set 14229 Scheduling Appointment Cancellation Reason 

This code set defines a set of reasons for the cancellation of an appointment.
  
     {
       "system": "https://fhir.cerner.com/<EHR source id>/codeSet/14229",
       "code": "2191414701",
       "display": "Scheduled by mistake",
       "userSelected": true
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

##### Code Set 16127 Scheduling Processing Options

This code set contains the various scheduling processing options such as diagnostic, followup or primary.

    {
      "system": "https://fhir.cerner.com/<EHR source id>/codeSet/16127",
      "code": "22721463",
      "display": "DIAGNOSTIC"
      "userSelected": true
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

##### Code Set 100123 Beverage Consistency

This code set describes the required consistency of liquids to be served to the patient.

    {
      "system": "https://fhir.cerner.com/<EHR source id>/codeSet/100123",
      "code": "46122603",
      "display": "Nectar Thick",
      "userSelected": true
    }

##### Code Set 100197 Diet Consistency

This code set describes the texture modifications that should be made for the patient.

    {
      "system": "https://fhir.cerner.com/<EHR source id>/codeSet/100197",
      "code": "46122587",
      "display": "NDD2 (Ground)",
      "userSelected": true
    }

#### Code Set 4001970 Void Order Reasons

This code set contains the various reasons why an order was voided.

    {
      "system": "https://fhir.cerner.com/<EHR source id>/codeSet/4001970,
      "code": "1840873161",
      "display": "Ordered on wrong encounter",
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

<h4>ChargeItem</h4>

The ChargeItem Resource supports proprietary systems for:

* ChargeItem.code, ChargeItem.reason, Modifier, Procedure, and Revenue Code extension codes are [Bill Codes Types](#bill-codes-types) for charge items.

### Medications

<h4>MedicationRequest</h4>

The MedicationRequest Resource supports proprietary systems for:

* MedicationRequest.category is [Medication Request Category](#medication-request-category) for medication requests.
* MedicationRequest.medication\[x] is [Medication Request Synonym](#medication-request-synonym) for medication requests.

### List of Systems

##### Account Number

This system is the account number of a financial account.

    {
      "use": "usual",
      "system": "https://fhir.cerner.com/accountnumber",
      "value": "5646"
    }

##### Bill Codes Types

This system is the bill code type for a charge item.`Bill code type` can be either `CDM_SCHED`, `CPT`, `HCPCS`, or `REVENUE`.

    {
      'system': 'https://fhir.cerner.com/<Ehr source id>/CodeSystem/BillCodes-<Bill code type>',
      "code": "0310"
    }

##### Medication Request Category

This system is the category and is only for a pharmacy charge-only order. The code system currently only contains the `charge-only` code. The code system may be expanded at a future date.

    {
      "system": "https://fhir.cerner.com/medicationrequest-category",
      "code": "charge-only",
      "display": "Charge-Only"
    }

##### Medication Request Synonym

This system is the synonym id for an order and the ingredients.

    {
      'system': 'https://fhir.cerner.com/<Ehr source id>/synonym',
      'code': '2762111',
      'display': 'lidocaine topical',
      'userSelected': true
    }

##### Nomenclature

This system contains all nomenclature values configured in the domain.

    {
      'system': 'https://fhir.cerner.com/ec2458f2-1e24-41c8-b71b-0e701af7583d/nomenclature',
      'code': '13249579',
      'display': 'Tension-type headache',
      'userSelected': false
    }
