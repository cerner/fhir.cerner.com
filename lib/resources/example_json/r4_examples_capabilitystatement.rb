# frozen_string_literal: true

module Cerner
  module Resources

    R4_OPEN_METADATA ||= {
      'resourceType': 'CapabilityStatement',
      'url': 'https://fhir-open.cerner.com/r4/ec2458f2-1e24-41c8-b71b-0e701af7583d/metadata',
      'name': 'CernerCapabilityStatement',
      'title': 'Cerner Capability Statement',
      'status': 'active',
      'publisher': 'Cerner',
      'date': '2019-10-22',
      'description': 'Cerner implementation of FHIR on top of Millennium',
      'kind': 'instance',
      'implementation': {
        'description': 'Cerner implementation of FHIR on top of Millennium',
        'url': 'https://fhir-open.cerner.com/r4/ec2458f2-1e24-41c8-b71b-0e701af7583d'
      },
      'fhirVersion': '4.0.1',
      'format': [
        'json',
        'application/fhir+json'
      ],
      'patchFormat': [
        'application/json-patch+json'
      ],
      'rest': [
        {
          'mode': 'server',
          'documentation': 'Cerner implementation of FHIR on top of Millennium',
          'security': {
            'cors': true
          },
          'resource': [
            {
              'type': 'CapabilityStatement',
              'interaction': [
                {
                  'code': 'read'
                }
              ]
            },
            {
              'type': 'Account',
              'interaction': [
                {
                  'code': 'read'
                },
                {
                  'code': 'search-type'
                }
              ],
              'searchParam': [
                {
                  'name': '_id',
                  'definition': 'http://hl7.org/fhir/R4/SearchParameter/Resource-id',
                  'type': 'token',
                  'documentation': 'A single or comma separated list of Account ids. It is a required field if the '\
                                   '-guarantor or patient fields are not given.'
                },
                {
                  'name': 'patient',
                  'definition': 'http://hl7.org/fhir/R4/SearchParameter/Account-patient',
                  'type': 'reference',
                  'documentation': 'The entity that caused the expenses. It is a required field if the _id or '\
                                   '-guarantor fields are not given. Must be set with identifier.'
                },
                {
                  'name': '-guarantor',
                  'type': 'reference',
                  'documentation': 'The entity that responsible for payment. It is a required field if the _id '\
                                   'or patient fields are not given.'
                },
                {
                  'name': 'type',
                  'definition': 'http://hl7.org/fhir/R4/SearchParameter/Account-type',
                  'type': 'string',
                  'documentation': 'The identifier for the account. Required in every search request.'
                },
                {
                  'name': 'identifier',
                  'definition': 'http://hl7.org/fhir/R4/SearchParameter/Account-identifier',
                  'type': 'number',
                  'documentation': 'Statement Account number. Must be set with patients'
                },
                {
                  'name': '_count',
                  'definition': 'http://hl7.org/fhir/R4/SearchParameter/Resource-count',
                  'type': 'number',
                  'documentation': "The maximum number of results to return. Not honoured when '_id' is set."
                }
              ]
            },
            {
              'type': 'AllergyIntolerance',
              'supportedProfile': [
                'http://hl7.org/fhir/us/core/StructureDefinition/us-core-allergyintolerance'
              ],
              'interaction': [
                {
                  'code': 'read'
                },
                {
                  'code': 'search-type'
                }
              ],
              'searchParam': [
                {
                  'name': '_id',
                  'definition': 'http://hl7.org/fhir/R4/SearchParameter/Resource-id',
                  'type': 'token',
                  'documentation': 'A single or comma separated list of AllergyIntolerance ids. It is a required '\
                                   'field if the patient field is not given.'
                },
                {
                  'name': 'patient',
                  'definition': 'http://hl7.org/fhir/R4/SearchParameter/clinical-patient',
                  'type': 'reference',
                  'documentation': 'Who the sensitivity is for. It is a required field if the _id field is not given.'
                },
                {
                  'name': 'clinical-status',
                  'definition': 'http://hl7.org/fhir/R4/SearchParameter/AllergyIntolerance-clinical-status',
                  'type': 'token',
                  'documentation': 'Certainty of the allergy or intolerance.'
                }
              ]
            },
            {
              'type': 'Appointment',
              'interaction': [
                {
                  'code': 'read'
                },
                {
                  'code': 'search-type'
                }
              ],
              'searchParam': [
                {
                  'name': '_id',
                  'definition': 'http://hl7.org/fhir/R4/SearchParameter/Resource-id',
                  'type': 'token',
                  'documentation': "A single or comma separated list of Appointment ids. Either the '_id' parameter "\
                                   "or one of the 'patient', 'practitioner' or 'location' parameters must be set."
                },
                {
                  'name': '_count',
                  'definition': 'http://hl7.org/fhir/R4/SearchParameter/Resource-count',
                  'type': 'number',
                  'documentation': "The maximum number of results to return. Not honoured when '_id' is set."
                },
                {
                  'name': 'date',
                  'definition': 'http://hl7.org/fhir/R4/SearchParameter/Appointment-date',
                  'type': 'date',
                  'documentation': 'A date or date range from which to find appointments. This must be set when using '\
                                   "patient, practitioner or location. The 'date' parameter may be provided once "\
                                   'without a prefix or time component to imply a date range or once without a prefix '\
                                   'and with a time component to search for appointments at a specific time. '\
                                   "Alternately it may be provided twice with 'le' and 'gt' prefixes to search for "\
                                   'appointments within a specific range. The date prefix pair must create a closed '\
                                   'range.'
                },
                {
                  'name': 'patient',
                  'definition': 'http://hl7.org/fhir/R4/SearchParameter/Appointment-patient',
                  'type': 'reference',
                  'documentation': "One of the individuals of the appointment is this patient. Either the '_id' "\
                                   "parameter or one of the 'patient', 'practitioner' or 'location' parameters "\
                                   'must be set.'
                },
                {
                  'name': 'practitioner',
                  'definition': 'http://hl7.org/fhir/R4/SearchParameter/Appointment-practitioner',
                  'type': 'reference',
                  'documentation': 'One of the individuals of the appointment is this practitioner. Either the '\
                                   "'_id' parameter or one of the 'patient', 'practitioner' or 'location' parameters "\
                                   'must be set.'
                },
                {
                  'name': 'location',
                  'definition': 'http://hl7.org/fhir/R4/SearchParameter/Appointment-location',
                  'type': 'reference',
                  'documentation': 'This location is listed in the participants of the appointment. Either the '\
                                   "'_id' parameter or one of the 'patient', 'practitioner' or 'location' parameters "\
                                   'must be set.'
                },
                {
                  'name': 'status',
                  'definition': 'http://hl7.org/fhir/R4/SearchParameter/Appointment-status',
                  'type': 'token',
                  'documentation': 'The overall status of the appointment.'
                }
              ]
            },
            {
              "type": 'CarePlan',
              "supportedProfile": [
                'http://hl7.org/fhir/us/core/StructureDefinition/us-core-careplan'
              ],
              "interaction": [
                {
                  "code": 'read'
                },
                {
                  "code": 'search-type'
                }
              ],
              "searchRevInclude": [
                'Provenance:target'
              ],
              "searchParam": [
                {
                  "name": '_id',
                  "definition": 'http://hl7.org/fhir/R4/SearchParameter/Resource-id',
                  "type": 'token',
                  "documentation": 'A single or comma separated list of CarePlan ids.'
                },
                {
                  "name": 'date',
                  "definition": 'http://hl7.org/fhir/us/core/SearchParameter/us-core-careplan-date',
                  "type": 'date',
                  "documentation": "A date range with which to find CarePlans. If used, the ‘date’ parameter
                    must be provided twice. Once with a 'ge' prefix representing the earliest date, and once
                    with a 'le’ prefix representing the latest date. The date prefix pair must create a closed range."
                },
                {
                  "name": 'patient',
                  "definition": 'http://hl7.org/fhir/us/core/SearchParameter/us-core-careplan-patient',
                  "type": 'reference',
                  "documentation": 'Who the careplan is for. It is a required field if the _id field is not given.'
                },
                {
                  "name": 'category',
                  "definition": 'http://hl7.org/fhir/us/core/SearchParameter/us-core-careplan-category',
                  "type": 'token',
                  "documentation": 'The category of the careplan. Category assess-plan is supported as of now.'
                },
                {
                  "name": '_count',
                  "definition": 'http://hl7.org/fhir/R4/SearchParameter/Resource-count',
                  "type": 'number',
                  "documentation": "The maximum number of results to return. Not honored when '_id' is set."
                }
              ]
            },
            {
              "type": 'CareTeam',
              "supportedProfile": [
                'http://hl7.org/fhir/us/core/StructureDefinition/us-core-careteam'
              ],
              "interaction": [
                {
                  "code": 'read'
                },
                {
                  "code": 'search-type'
                }
              ],
              "searchRevInclude": [
                'Provenance:target'
              ],
              "searchParam": [
                {
                  "name": '_id',
                  "definition": 'http://hl7.org/fhir/R4/SearchParameter/Resource-id',
                  "type": 'token',
                  "documentation": 'CareTeam id supports only the single id. It is a required field if the
                  patient or encounter fields are not given.'
                },
                {
                  "name": 'category',
                  "definition": 'http://hl7.org/fhir/R4/SearchParameter/CareTeam-category',
                  "type": 'token',
                  "documentation": 'The category of the careteam. Category Longitudinal (patient level) or Encounter
                  is supported as of now.'
                },
                {
                  "name": 'encounter',
                  "definition": 'http://hl7.org/fhir/R4/SearchParameter/clinical-encounter',
                  "type": 'reference',
                  "documentation": 'The Encounter level CareTeam are displayed.'
                },
                {
                  "name": 'patient',
                  "definition": 'http://hl7.org/fhir/us/core/SearchParameter/us-core-careteam-patient',
                  "type": 'reference',
                  "documentation": 'Who the careteam is for. It is a required field if the _id field is not given.'
                },
                {
                  "name": 'status',
                  "definition": 'http://hl7.org/fhir/us/core/SearchParameter/us-core-careteam-status',
                  "type": 'token',
                  "documentation": 'The status of the CareTeam.'
                }
              ]
            },
            {
              'type': 'Condition',
              'supportedProfile': [
                'http://hl7.org/fhir/us/core/StructureDefinition/us-core-condition'
              ],
              'interaction': [
                {
                  'code': 'read'
                },
                {
                  'code': 'search-type'
                }
              ],
              'searchParam': [
                {
                  'name': '_id',
                  'definition': 'http://hl7.org/fhir/R4/SearchParameter/Resource-id',
                  'type': 'token',
                  'documentation': 'A single or comma separated list of Condition ids. It is a required field if the '\
                                   'patient or subject fields are not given.'
                },
                {
                  'name': 'patient',
                  'definition': 'http://hl7.org/fhir/R4/SearchParameter/clinical-patient',
                  'type': 'reference',
                  'documentation': 'Who has the condition. It is a required field if the subject or _id fields are '\
                                   'not given.'
                },
                {
                  'name': 'subject',
                  'definition': 'http://hl7.org/fhir/R4/SearchParameter/Condition-subject',
                  'type': 'reference',
                  'documentation': 'Who has the condition. It is a required field if the patient or _id fields are '\
                                   'not given.'
                },
                {
                  'name': 'clinical-status',
                  'definition': 'http://hl7.org/fhir/R4/SearchParameter/Condition-clinical-status',
                  'type': 'token',
                  'documentation': 'The clinical status of the condition.'
                },
                {
                  'name': 'category',
                  'definition': 'http://hl7.org/fhir/R4/SearchParameter/Condition-category',
                  'type': 'token',
                  'documentation': 'The category of the condition. Categories problem-list-item, '\
                                   'encounter-diagnosis and health-concern are supported as of now.'
                }
              ]
            },
            {
              'type': 'Coverage',
              'interaction': [
                {
                  'code': 'search-type'
                }
              ],
              'searchParam': [
                {
                  'name': 'patient',
                  'definition': 'http://hl7.org/fhir/R4/SearchParameter/Coverage-patient',
                  'type': 'reference',
                  'documentation': 'Retrieve coverages for a patient.'
                }
              ]
            },
            {
              'type': 'Device',
              'supportedProfile': [
                'http://hl7.org/fhir/us/core/StructureDefinition/us-core-implantable-device'
              ],
              'interaction': [
                {
                  'code': 'read'
                },
                {
                  'code': 'search-type'
                }
              ],
              'searchParam': [
                {
                  'name': '_id',
                  'definition': 'http://hl7.org/fhir/R4/SearchParameter/Resource-id',
                  'type': 'token',
                  'documentation': 'A single or comma separated list of Device ids. It is a required field if the '\
                                   'patient field is not given.'
                },
                {
                  'name': 'patient',
                  'definition': 'http://hl7.org/fhir/R4/SearchParameter/Device-patient',
                  'type': 'reference',
                  'documentation': 'The patient to whom Device is affixed. It is a required field if the _id '\
                                   'field is not given.'
                }
              ]
            },
            {
              "type": 'DocumentReference',
              "supportedProfile": [
                'http://hl7.org/fhir/us/core/StructureDefinition/us-core-documentreference'
              ],
              "interaction": [
                {
                  "code": 'read'
                },
                {
                  "code": 'search-type'
                },
                {
                  "code": 'create'
                },
                {
                  "code": 'update'
                }
              ],
              "updateCreate": false,
              "searchRevInclude": [
                'Provenance:target'
              ],
              "searchParam": [
                {
                  "name": '_id',
                  "definition": 'http://hl7.org/fhir/us/core/SearchParameter/us-core-documentreference-id',
                  "type": 'token',
                  "documentation": 'A single or comma separated list of DocumentReference ids.
                  It is a required field if the patient field is not given.'
                },
                {
                  "name": 'patient',
                  "definition": 'http://hl7.org/fhir/us/core/SearchParameter/us-core-documentreference-patient',
                  "type": 'reference',
                  "documentation": 'The patient the document is about.
                  It is a required field if the subject field is not given.'
                },
                {
                  "name": 'encounter',
                  "definition": 'http://hl7.org/fhir/R4/SearchParameter/clinical-encounter',
                  "type": 'reference',
                  "documentation": 'The Encounter in which the document was created.'
                },
                {
                  "name": 'period',
                  "definition": 'http://hl7.org/fhir/us/core/SearchParameter/us-core-documentreference-period',
                  "type": 'date',
                  "documentation": "A date range with which to find Documents. If used, the 'period' parameter
                  must be provided twice. Once with a 'ge' prefix representing the earliest date, and once with
                  a 'lt' prefix representing the latest date. The period prefix pair must create a closed range
                  and cannot be equal to each other."
                },
                {
                  "name": '_count',
                  "definition": 'http://hl7.org/fhir/R4/SearchParameter/Resource-count',
                  "type": 'number',
                  "documentation": 'The maximum number of results to return in a page.'
                },
                {
                  "name": 'type',
                  "definition": 'http://hl7.org/fhir/us/core/SearchParameter/us-core-documentreference-type',
                  "type": 'token',
                  "documentation": 'The kind of document (LOINC if possible).'
                },
                {
                  "name": 'category',
                  "definition": 'http://hl7.org/fhir/us/core/SearchParameter/us-core-documentreference-category',
                  "type": 'token',
                  "documentation": 'The categorization of document.'
                },
                {
                  "name": 'date',
                  "definition": 'http://hl7.org/fhir/us/core/SearchParameter/us-core-documentreference-date',
                  "type": 'date',
                  "documentation": "A date parameter may be provided once with a prefix and time component to
                  imply a date range. Alternately it may be provided twice with 'le', 'lt', 'ge', or 'gt'
                  prefixes and time component to search for procedures within a specific range. The date and
                  prefix pairs must create a closed range. Must be set with patient."
                }
              ],
              "operation": [
                {
                  "name": 'USCoreFetchDocumentReferences',
                  "definition": 'http://hl7.org/fhir/us/core/OperationDefinition/docref',
                  "documentation": 'US Core Fetch DocumentReferences'
                }
              ]
            },
            {
              'type': 'Encounter',
              'supportedProfile': [
                'http://hl7.org/fhir/us/core/StructureDefinition/us-core-encounter'
              ],
              'interaction': [
                {
                  'code': 'read'
                },
                {
                  'code': 'search-type'
                }
              ],
              'searchParam': [
                {
                  'name': '_id',
                  'definition': 'http://hl7.org/fhir/R4/SearchParameter/Resource-id',
                  'type': 'token',
                  'documentation': 'A single or comma separated list of Encounter ids. It is a required field if '\
                                   'the patient or subject fields are not given.'
                },
                {
                  'name': '_count',
                  'definition': 'http://hl7.org/fhir/R4/SearchParameter/Resource-count',
                  'type': 'number',
                  'documentation': "The maximum number of results to return. Not honored when '_id' is set."
                },
                {
                  'name': 'patient',
                  'definition': 'http://hl7.org/fhir/R4/SearchParameter/clinical-patient',
                  'type': 'reference',
                  'documentation': 'The patient present at the encounter. It is a required field if the _id or '\
                                   'subject fields are not given.'
                },
                {
                  'name': 'subject',
                  'definition': 'http://hl7.org/fhir/R4/SearchParameter/Encounter-subject',
                  'type': 'reference',
                  'documentation': 'The patient present at the encounter. It is a required field if the _id or '\
                                   'patient fields are not given.'
                }
              ]
            },
            {
              "type": 'Goal',
              "supportedProfile": [
                'http://hl7.org/fhir/us/core/StructureDefinition/us-core-goal'
              ],
              "interaction": [
                {
                  "code": 'read'
                },
                {
                  "code": 'search-type'
                }
              ],
              "searchRevInclude": [
                'Provenance:target'
              ],
              "searchParam": [
                {
                  "name": '_id',
                  "definition": 'http://hl7.org/fhir/R4/SearchParameter/Resource-id',
                  "type": 'token',
                  "documentation": 'Goal id supports only the single id. It is a required field if
                  the patient field is not given.'
                },
                {
                  "name": 'patient',
                  "definition": 'http://hl7.org/fhir/us/core/SearchParameter/us-core-goal-patient',
                  "type": 'reference',
                  "documentation": 'Who has the goal is for. It is a required field if the _id field is not given.'
                },
                {
                  "name": 'target-date',
                  "definition": 'http://hl7.org/fhir/us/core/SearchParameter/us-core-goal-target-date',
                  "type": 'date',
                  "documentation": 'A date or date range from which to find Goals.'
                }
              ]
            },
            {
              'type': 'Immunization',
              'supportedProfile': [
                'http://hl7.org/fhir/us/core/StructureDefinition/us-core-immunization'
              ],
              'interaction': [
                {
                  'code': 'read'
                },
                {
                  'code': 'search-type'
                }
              ],
              'searchParam': [
                {
                  'name': '_id',
                  'definition': 'http://hl7.org/fhir/R4/SearchParameter/Resource-id',
                  'type': 'token',
                  'documentation': 'A single or comma separated list of Immunization ids. It is a required field '\
                                   'if the patient field is not given.'
                },
                {
                  'name': 'patient',
                  'definition': 'http://hl7.org/fhir/R4/SearchParameter/clinical-patient',
                  'type': 'reference',
                  'documentation': 'The patient for the vaccination record. It is a required field if the _id field '\
                                   'is not given.'
                },
                {
                  'name': 'date',
                  'definition': 'http://hl7.org/fhir/R4/SearchParameter/clinical-date',
                  'type': 'date',
                  'documentation': 'Vaccination (non)-Administration Date.'
                }
              ]
            },
            {
              "type": 'Location',
              "supportedProfile": [
                'http://hl7.org/fhir/us/core/StructureDefinition/us-core-location'
              ],
              "interaction": [
                {
                  "code": 'read'
                },
                {
                  "code": 'search-type'
                }
              ],
              "searchParam": [
                {
                  "name": '_id',
                  "definition": 'http://hl7.org/fhir/R4/SearchParameter/Resource-id',
                  "type": 'token',
                  "documentation": 'A single or comma separated list of Location ids. It is a
                  required field if the -physicalType field is not given'
                },
                {
                  "name": '-physicalType',
                  "type": 'token',
                  "documentation": "The Location's physical type. It is a required field if the _id field is not given"
                },
                {
                  "name": 'identifier',
                  "definition": 'http://hl7.org/fhir/us/core/SearchParameter/us-core-location-identifier',
                  "type": 'token',
                  "documentation": "A location's identifier."
                },
                {
                  "name": 'address',
                  "type": 'string',
                  "documentation": 'A (part of the) address of the location'
                },
                {
                  "name": 'address-city',
                  "type": 'string',
                  "documentation": 'A city specified in an address. It is a required field if the
                  address-state or address-postalcode fields are not given'
                },
                {
                  "name": 'address-state',
                  "type": 'string',
                  "documentation": 'A state specified in an address'
                },
                {
                  "name": 'address-postalcode',
                  "type": 'string',
                  "documentation": 'A postal code specified in an address'
                },
                {
                  "name": 'name',
                  "type": 'string',
                  "documentation": "A portion of the location's name or alias"
                },
                {
                  "name": 'organization',
                  "type": 'reference',
                  "documentation": 'Searches for locations that are managed by the provided organization'
                }
              ]
            },
            {
              'type': 'OperationDefinition',
              'interaction': [
                {
                  'code': 'read'
                }
              ]
            },
            {
              'type': 'Patient',
              'supportedProfile': [
                'http://hl7.org/fhir/us/core/StructureDefinition/us-core-patient'
              ],
              'interaction': [
                {
                  'code': 'read'
                },
                {
                  'code': 'search-type'
                }
              ],
              'searchParam': [
                {
                  'name': '_id',
                  'definition': 'http://hl7.org/fhir/R4/SearchParameter/Resource-id',
                  'type': 'token',
                  'documentation': "A single or comma separated list of Patient ids. Either the '_id' parameter, "\
                                   "or a combination of 'identifier', 'birthdate', 'name', 'given', 'family', "\
                                   "'address-postalcode', 'phone', or 'email' parameters must be provided."
                },
                {
                  'name': 'identifier',
                  'definition': 'http://hl7.org/fhir/R4/SearchParameter/Patient-identifier',
                  'type': 'token',
                  'documentation': "A patient identifier. Either the '_id' parameter, or a combination of "\
                                   "'identifier', 'birthdate', 'name', 'given', 'family', 'address-postalcode', "\
                                   "'phone', or 'email' parameters must be provided."
                },
                {
                  'name': 'name',
                  'definition': 'http://hl7.org/fhir/R4/SearchParameter/Patient-name',
                  'type': 'string',
                  'documentation': "The beginning of any name of the patient. Either the '_id' parameter, or a "\
                                   "combination of 'identifier', 'birthdate', 'name', 'given', 'family', "\
                                   "'address-postalcode', 'phone', or 'email' parameters must be provided."
                },
                {
                  'name': 'given',
                  'definition': 'http://hl7.org/fhir/R4/SearchParameter/individual-given',
                  'type': 'string',
                  'documentation': "The beginning of the given name of the patient. Either the '_id' parameter, "\
                                   "or a combination of 'identifier', 'birthdate', 'name', 'given', 'family', "\
                                   "'address-postalcode', 'phone', or 'email' parameters must be provided."
                },
                {
                  'name': 'family',
                  'definition': 'http://hl7.org/fhir/R4/SearchParameter/individual-family',
                  'type': 'string',
                  'documentation': "The beginning of the family name of the patient. Either the '_id' parameter, "\
                                   "or a combination of 'identifier', 'birthdate', 'name', 'given', 'family', "\
                                   "'address-postalcode', 'phone', or 'email' parameters must be provided."
                },
                {
                  'name': 'address-postalcode',
                  'definition': 'http://hl7.org/fhir/R4/SearchParameter/individual-address-postalcode',
                  'type': 'string',
                  'documentation': "The postal code of the address of the patient. Either the '_id' parameter, or "\
                                   "a combination of 'identifier', 'birthdate', 'name', 'given', 'family', "\
                                   "'address-postalcode', 'phone', or 'email' parameters must be provided."
                },
                {
                  'name': 'birthdate',
                  'definition': 'http://hl7.org/fhir/R4/SearchParameter/individual-birthdate',
                  'type': 'date',
                  'documentation': "The date of birth of the patient. Either the '_id' parameter, or a combination "\
                                   "of 'identifier', 'birthdate', 'name', 'given', 'family', 'address-postalcode', "\
                                   "'phone', or 'email' parameters must be provided."
                },
                {
                  'name': 'phone',
                  'definition': 'http://hl7.org/fhir/R4/SearchParameter/individual-phone',
                  'type': 'token',
                  'documentation': "The value of the phone number of the patient. Either the '_id' parameter, or a "\
                                   "combination of 'identifier', 'birthdate', 'name', 'given', 'family', "\
                                   "'address-postalcode', 'phone', or 'email' parameters must be provided."
                },
                {
                  'name': 'email',
                  'definition': 'http://hl7.org/fhir/R4/SearchParameter/individual-email',
                  'type': 'token',
                  'documentation': "The value of the email address of the patient. Either the '_id' parameter, or a "\
                                   "combination of 'identifier', 'birthdate', 'name', 'given', 'family', "\
                                   "'address-postalcode', 'phone', or 'email' parameters must be provided."
                },
                {
                  'name': 'gender',
                  'definition': 'http://hl7.org/fhir/R4/SearchParameter/individual-gender',
                  'type': 'token',
                  'documentation': 'The administrative gender of the patient. Gender may only be provided if another '\
                                   "parameter other than '_id' is provided"
                },
                {
                  'name': '_count',
                  'definition': 'http://hl7.org/fhir/R4/SearchParameter/Resource-count',
                  'type': 'number',
                  'documentation': "The maximum number of results to return. Not honoured when '_id' or 'identifier' "\
                                   'are set.'
                }
              ],
              'operation': [
                {
                  'name': 'health-cards-issue',
                  'definition': 'https://spec.smarthealth.cards/artifacts/operation-patient-i-health-cards-issue.json',
                  'documentation': 'Issues verifiable health cards for the patient'
                }
              ]
            },
            {
              'type': 'Practitioner',
              'supportedProfile': [
                'http://hl7.org/fhir/us/core/StructureDefinition/us-core-practitioner'
              ],
              'interaction': [
                {
                  'code': 'read'
                },
                {
                  'code': 'search-type'
                }
              ],
              'searchParam': [
                {
                  'name': '_id',
                  'definition': 'http://hl7.org/fhir/R4/SearchParameter/Resource-id',
                  'type': 'token',
                  'documentation': 'A single or comma separated list of Practitioner ids.'
                }
              ]
            },
            {
              'type': 'RelatedPerson',
              'interaction': [
                {
                  'code': 'read'
                },
                {
                  'code': 'search-type'
                }
              ],
              'searchParam': [
                {
                  'name': '_id',
                  'definition': 'http://hl7.org/fhir/R4/SearchParameter/Resource-id',
                  'type': 'token',
                  'documentation': 'A single or comma separated list of RelatedPerson ids. It is a required field '\
                                   'if the identifier or patient fields are not given.'
                },
                {
                  'name': 'identifier',
                  'definition': 'http://hl7.org/fhir/R4/SearchParameter/Patient-identifier',
                  'type': 'token',
                  'documentation': 'An Identifier of the RelatedPerson. It is a required field if the id or patient '\
                                   'fields are not given'
                },
                {
                  'name': 'patient',
                  'definition': 'http://hl7.org/fhir/R4/SearchParameter/clinical-patient',
                  'type': 'reference',
                  'documentation': 'The patient this related person is related to. It is a required field if the id '\
                                   'or identifier fields are not given'
                }
              ]
            },
            {
              'type': 'StructureDefinition',
              'interaction': [
                {
                  'code': 'read'
                }
              ]
            }
          ]
        }
      ]
    }.freeze

    R4_AUTH_METADATA ||= {
      'resourceType': 'CapabilityStatement',
      'url': 'https://fhir-ehr-code.cerner.com/r4/ec2458f2-1e24-41c8-b71b-0e701af7583d/metadata',
      'name': 'CernerCapabilityStatement',
      'title': 'Cerner Capability Statement',
      'status': 'active',
      'publisher': 'Cerner',
      'date': '2019-10-22',
      'description': 'Cerner implementation of FHIR on top of Millennium',
      'kind': 'instance',
      'implementation': {
        'description': 'Cerner implementation of FHIR on top of Millennium',
        'url': 'https://fhir-ehr-code.cerner.com/r4/ec2458f2-1e24-41c8-b71b-0e701af7583d'
      },
      'fhirVersion': '4.0.1',
      'format': [
        'json',
        'application/fhir+json'
      ],
      'patchFormat': [
        'application/json-patch+json'
      ],
      'rest': [
        {
          'mode': 'server',
          'documentation': 'Cerner implementation of FHIR on top of Millennium',
          'security': {
            'extension': [
              {
                'url': 'http://fhir-registry.smarthealthit.org/StructureDefinition/oauth-uris',
                'extension': [
                  {
                    'url': 'token',
                    'valueUri': 'https://authorization.cerner.com/tenants/ec2458f2-1e24-41c8-b71b-0e701af7583d/'\
                                'protocols/oauth2/profiles/smart-v1/token'
                  },
                  {
                    'url': 'authorize',
                    'valueUri': 'https://authorization.cerner.com/tenants/ec2458f2-1e24-41c8-b71b-0e701af7583d/'\
                                'protocols/oauth2/profiles/smart-v1/personas/provider/authorize'
                  }
                ]
              }
            ],
            'cors': true,
            'service': [
              {
                'coding': [
                  {
                    'system': 'http://terminology.hl7.org/CodeSystem/restful-security-service',
                    'code': 'SMART-on-FHIR'
                  }
                ],
                'text': 'OAuth2 using SMART-on-FHIR profile (see http://docs.smarthealthit.org/).'
              }
            ],
            'description': 'OAuth2 plus SMART extensions'
          },
          'resource': [
            {
              'type': 'CapabilityStatement',
              'interaction': [
                {
                  'code': 'read'
                }
              ]
            },
            {
              'type': 'Account',
              'interaction': [
                {
                  'code': 'read'
                },
                {
                  'code': 'search-type'
                }
              ],
              'searchParam': [
                {
                  'name': '_id',
                  'definition': 'http://hl7.org/fhir/R4/SearchParameter/Resource-id',
                  'type': 'token',
                  'documentation': 'A single or comma separated list of Account ids. It is a required field if the '\
                                   '-guarantor or patient fields are not given.'
                },
                {
                  'name': 'patient',
                  'definition': 'http://hl7.org/fhir/R4/SearchParameter/Account-patient',
                  'type': 'reference',
                  'documentation': 'The entity that caused the expenses. It is a required field if the _id or '\
                                   '-guarantor fields are not given. Must be set with identifier.'
                },
                {
                  'name': '-guarantor',
                  'type': 'reference',
                  'documentation': 'The entity that responsible for payment. It is a required field if the _id or '\
                                   'patient fields are not given.'
                },
                {
                  'name': 'type',
                  'definition': 'http://hl7.org/fhir/R4/SearchParameter/Account-type',
                  'type': 'string',
                  'documentation': 'The identifier for the account. Required in every search request.'
                },
                {
                  'name': 'identifier',
                  'definition': 'http://hl7.org/fhir/R4/SearchParameter/Account-identifier',
                  'type': 'number',
                  'documentation': 'Statement Account number. Must be set with patients'
                },
                {
                  'name': '_count',
                  'definition': 'http://hl7.org/fhir/R4/SearchParameter/Resource-count',
                  'type': 'number',
                  'documentation': "The maximum number of results to return. Not honoured when '_id' is set."
                }
              ]
            },
            {
              'type': 'AllergyIntolerance',
              'supportedProfile': [
                'http://hl7.org/fhir/us/core/StructureDefinition/us-core-allergyintolerance'
              ],
              'interaction': [
                {
                  'code': 'read'
                },
                {
                  'code': 'search-type'
                }
              ],
              'searchParam': [
                {
                  'name': '_id',
                  'definition': 'http://hl7.org/fhir/R4/SearchParameter/Resource-id',
                  'type': 'token',
                  'documentation': 'A single or comma separated list of AllergyIntolerance ids. It is a required '\
                                   'field if the patient field is not given.'
                },
                {
                  'name': 'patient',
                  'definition': 'http://hl7.org/fhir/R4/SearchParameter/clinical-patient',
                  'type': 'reference',
                  'documentation': 'Who the sensitivity is for. It is a required field if the _id field is not given.'
                },
                {
                  'name': 'clinical-status',
                  'definition': 'http://hl7.org/fhir/R4/SearchParameter/AllergyIntolerance-clinical-status',
                  'type': 'token',
                  'documentation': 'Certainty of the allergy or intolerance.'
                }
              ]
            },
            {
              'type': 'Appointment',
              'interaction': [
                {
                  'code': 'read'
                },
                {
                  'code': 'search-type'
                },
                {
                  'code': 'create'
                },
                {
                  'code': 'patch'
                }
              ],
              'searchParam': [
                {
                  'name': '_id',
                  'definition': 'http://hl7.org/fhir/R4/SearchParameter/Resource-id',
                  'type': 'token',
                  'documentation': "A single or comma separated list of Appointment ids. Either the '_id' parameter "\
                                   "or one of the 'patient', 'practitioner' or 'location' parameters must be set."
                },
                {
                  'name': '_count',
                  'definition': 'http://hl7.org/fhir/R4/SearchParameter/Resource-count',
                  'type': 'number',
                  'documentation': "The maximum number of results to return. Not honoured when '_id' is set."
                },
                {
                  'name': 'date',
                  'definition': 'http://hl7.org/fhir/R4/SearchParameter/Appointment-date',
                  'type': 'date',
                  'documentation': 'A date or date range from which to find appointments. This must be set when '\
                                   "using patient, practitioner or location. The 'date' parameter may be provided "\
                                   'once without a prefix or time component to imply a date range or once without a '\
                                   'prefix and with a time component to search for appointments at a specific time. '\
                                   "Alternately it may be provided twice with 'le' and 'gt' prefixes to search for "\
                                   'appointments within a specific range. The date prefix pair must create a closed '\
                                   'range.'
                },
                {
                  'name': 'patient',
                  'definition': 'http://hl7.org/fhir/R4/SearchParameter/Appointment-patient',
                  'type': 'reference',
                  'documentation': "One of the individuals of the appointment is this patient. Either the '_id' "\
                                   "parameter or one of the 'patient', 'practitioner' or 'location' parameters must "\
                                   'be set.'
                },
                {
                  'name': 'practitioner',
                  'definition': 'http://hl7.org/fhir/R4/SearchParameter/Appointment-practitioner',
                  'type': 'reference',
                  'documentation': "One of the individuals of the appointment is this practitioner. Either the '_id' "\
                                   "parameter or one of the 'patient', 'practitioner' or 'location' parameters must "\
                                   'be set.'
                },
                {
                  'name': 'location',
                  'definition': 'http://hl7.org/fhir/R4/SearchParameter/Appointment-location',
                  'type': 'reference',
                  'documentation': "This location is listed in the participants of the appointment. Either the '_id' "\
                                   "parameter or one of the 'patient', 'practitioner' or 'location' parameters "\
                                   'must be set.'
                },
                {
                  'name': 'status',
                  'definition': 'http://hl7.org/fhir/R4/SearchParameter/Appointment-status',
                  'type': 'token',
                  'documentation': 'The overall status of the appointment.'
                }
              ]
            },
            {
              'type': 'Basic',
              'interaction': [
                {
                  'code': 'create'
                }
              ]
            },
            {
              "type": 'CarePlan',
              "supportedProfile": [
                'http://hl7.org/fhir/us/core/StructureDefinition/us-core-careplan'
              ],
              "interaction": [
                {
                  "code": 'read'
                },
                {
                  "code": 'search-type'
                }
              ],
              "searchRevInclude": [
                'Provenance:target'
              ],
              "searchParam": [
                {
                  "name": '_id',
                  "definition": 'http://hl7.org/fhir/R4/SearchParameter/Resource-id',
                  "type": 'token',
                  "documentation": 'A single or comma separated list of CarePlan ids.'
                },
                {
                  "name": 'date',
                  "definition": 'http://hl7.org/fhir/us/core/SearchParameter/us-core-careplan-date',
                  "type": 'date',
                  "documentation": "A date range with which to find CarePlans. If used, the ‘date’
                  parameter must be provided twice. Once with a 'ge' prefix representing the earliest date,
                  and once with a 'le’ prefix representing the latest date. The date prefix pair must create
                  a closed range."
                },
                {
                  "name": 'patient',
                  "definition": 'http://hl7.org/fhir/us/core/SearchParameter/us-core-careplan-patient',
                  "type": 'reference',
                  "documentation": 'Who the careplan is for. It is a required field if the _id field is not given.'
                },
                {
                  "name": 'category',
                  "definition": 'http://hl7.org/fhir/us/core/SearchParameter/us-core-careplan-category',
                  "type": 'token',
                  "documentation": 'The category of the careplan. Category assess-plan is supported as of now.'
                },
                {
                  "name": '_count',
                  "definition": 'http://hl7.org/fhir/R4/SearchParameter/Resource-count',
                  "type": 'number',
                  "documentation": "The maximum number of results to return. Not honored when '_id' is set."
                }
              ]
            },
            {
              "type": 'CareTeam',
              "supportedProfile": [
                'http://hl7.org/fhir/us/core/StructureDefinition/us-core-careteam'
              ],
              "interaction": [
                {
                  "code": 'read'
                },
                {
                  "code": 'search-type'
                }
              ],
              "searchRevInclude": [
                'Provenance:target'
              ],
              "searchParam": [
                {
                  "name": '_id',
                  "definition": 'http://hl7.org/fhir/R4/SearchParameter/Resource-id',
                  "type": 'token',
                  "documentation": 'CareTeam id supports only the single id. It is a required field if
                  the patient or encounter fields are not given.'
                },
                {
                  "name": 'category',
                  "definition": 'http://hl7.org/fhir/R4/SearchParameter/CareTeam-category',
                  "type": 'token',
                  "documentation": 'The category of the careteam. Category Longitudinal (patient level)
                  or Encounter is supported as of now.'
                },
                {
                  "name": 'encounter',
                  "definition": 'http://hl7.org/fhir/R4/SearchParameter/clinical-encounter',
                  "type": 'reference',
                  "documentation": 'The Encounter level CareTeam are displayed.'
                },
                {
                  "name": 'patient',
                  "definition": 'http://hl7.org/fhir/us/core/SearchParameter/us-core-careteam-patient',
                  "type": 'reference',
                  "documentation": 'Who the careteam is for. It is a required field if the _id field is not given.'
                },
                {
                  "name": 'status',
                  "definition": 'http://hl7.org/fhir/us/core/SearchParameter/us-core-careteam-status',
                  "type": 'token',
                  "documentation": 'The status of the CareTeam.'
                }
              ]
            },
            {
              'type': 'Condition',
              'supportedProfile': [
                'http://hl7.org/fhir/us/core/StructureDefinition/us-core-condition'
              ],
              'interaction': [
                {
                  'code': 'read'
                },
                {
                  'code': 'search-type'
                },
                {
                  'code': 'create'
                },
                {
                  'code': 'update'
                }
              ],
              'updateCreate': false,
              'searchParam': [
                {
                  'name': '_id',
                  'definition': 'http://hl7.org/fhir/R4/SearchParameter/Resource-id',
                  'type': 'token',
                  'documentation': 'A single or comma separated list of Condition ids. It is a required field if the'\
                                   ' patient or subject fields are not given.'
                },
                {
                  'name': 'patient',
                  'definition': 'http://hl7.org/fhir/R4/SearchParameter/clinical-patient',
                  'type': 'reference',
                  'documentation': 'Who has the condition. It is a required field if the subject or _id fields are '\
                                   'not given.'
                },
                {
                  'name': 'subject',
                  'definition': 'http://hl7.org/fhir/R4/SearchParameter/Condition-subject',
                  'type': 'reference',
                  'documentation': 'Who has the condition. It is a required field if the patient or _id fields are '\
                                   'not given.'
                },
                {
                  'name': 'clinical-status',
                  'definition': 'http://hl7.org/fhir/R4/SearchParameter/Condition-clinical-status',
                  'type': 'token',
                  'documentation': 'The clinical status of the condition.'
                },
                {
                  'name': 'category',
                  'definition': 'http://hl7.org/fhir/R4/SearchParameter/Condition-category',
                  'type': 'token',
                  'documentation': 'The category of the condition. Categories problem-list-item and '\
                                   'encounter-diagnosis are supported as of now.'
                }
              ]
            },
            {
              'type': 'Coverage',
              'interaction': [
                {
                  'code': 'search-type'
                },
                {
                  'code': 'create'
                }
              ],
              'searchParam': [
                {
                  'name': 'patient',
                  'definition': 'http://hl7.org/fhir/R4/SearchParameter/Coverage-patient',
                  'type': 'reference',
                  'documentation': 'Retrieve coverages for a patient.'
                }
              ]
            },
            {
              'type': 'Device',
              'supportedProfile': [
                'http://hl7.org/fhir/us/core/StructureDefinition/us-core-implantable-device'
              ],
              'interaction': [
                {
                  'code': 'read'
                },
                {
                  'code': 'search-type'
                }
              ],
              'searchParam': [
                {
                  'name': '_id',
                  'definition': 'http://hl7.org/fhir/R4/SearchParameter/Resource-id',
                  'type': 'token',
                  'documentation': 'A single or comma separated list of Device ids. It is a required field if '\
                                   'the patient field is not given.'
                },
                {
                  'name': 'patient',
                  'definition': 'http://hl7.org/fhir/R4/SearchParameter/Device-patient',
                  'type': 'reference',
                  'documentation': 'The patient to whom Device is affixed. It is a required field if the _id '\
                                   'field is not given.'
                }
              ]
            },
            {
              "type": 'DocumentReference',
              "supportedProfile": [
                'http://hl7.org/fhir/us/core/StructureDefinition/us-core-documentreference'
              ],
              "interaction": [
                {
                  "code": 'read'
                },
                {
                  "code": 'search-type'
                },
                {
                  "code": 'create'
                },
                {
                  "code": 'update'
                }
              ],
              "updateCreate": false,
              "searchRevInclude": [
                'Provenance:target'
              ],
              "searchParam": [
                {
                  "name": '_id',
                  "definition": 'http://hl7.org/fhir/us/core/SearchParameter/us-core-documentreference-id',
                  "type": 'token',
                  "documentation": 'A single or comma separated list of DocumentReference ids. It is a
                  required field if the patient field is not given.'
                },
                {
                  "name": 'patient',
                  "definition": 'http://hl7.org/fhir/us/core/SearchParameter/us-core-documentreference-patient',
                  "type": 'reference',
                  "documentation": 'The patient the document is about. It is a required field if the
                  subject field is not given.'
                },
                {
                  "name": 'encounter',
                  "definition": 'http://hl7.org/fhir/R4/SearchParameter/clinical-encounter',
                  "type": 'reference',
                  "documentation": 'The Encounter in which the document was created.'
                },
                {
                  "name": 'period',
                  "definition": 'http://hl7.org/fhir/us/core/SearchParameter/us-core-documentreference-period',
                  "type": 'date',
                  "documentation": "A date range with which to find Documents. If used, the 'period' parameter
                  must be provided twice. Once with a 'ge' prefix representing the earliest date, and once with
                  a 'lt' prefix representing the latest date. The period prefix pair must create a closed range
                  and cannot be equal to each other."
                },
                {
                  "name": '_count',
                  "definition": 'http://hl7.org/fhir/R4/SearchParameter/Resource-count',
                  "type": 'number',
                  "documentation": 'The maximum number of results to return in a page.'
                },
                {
                  "name": 'type',
                  "definition": 'http://hl7.org/fhir/us/core/SearchParameter/us-core-documentreference-type',
                  "type": 'token',
                  "documentation": 'The kind of document (LOINC if possible).'
                },
                {
                  "name": 'category',
                  "definition": 'http://hl7.org/fhir/us/core/SearchParameter/us-core-documentreference-category',
                  "type": 'token',
                  "documentation": 'The categorization of document.'
                },
                {
                  "name": 'date',
                  "definition": 'http://hl7.org/fhir/us/core/SearchParameter/us-core-documentreference-date',
                  "type": 'date',
                  "documentation": "A date parameter may be provided once with a prefix and time component to
                  imply a date range. Alternately it may be provided twice with 'le', 'lt', 'ge', or 'gt' prefixes and
                  time component to search for procedures within a specific range. The date and prefix pairs must create
                  a closed range. Must be set with patient."
                }
              ],
              "operation": [
                {
                  "name": 'USCoreFetchDocumentReferences',
                  "definition": 'http://hl7.org/fhir/us/core/OperationDefinition/docref',
                  "documentation": 'US Core Fetch DocumentReferences'
                }
              ]
            },
            {
              'type': 'Encounter',
              'supportedProfile': [
                'http://hl7.org/fhir/us/core/StructureDefinition/us-core-encounter'
              ],
              'interaction': [
                {
                  'code': 'read'
                },
                {
                  'code': 'search-type'
                },
                {
                  'code': 'create'
                },
                {
                  'code': 'patch'
                }
              ],
              'searchParam': [
                {
                  'name': '_id',
                  'definition': 'http://hl7.org/fhir/R4/SearchParameter/Resource-id',
                  'type': 'token',
                  'documentation': 'A single or comma separated list of Encounter ids. It is a required field if '\
                                   'the patient or subject fields are not given.'
                },
                {
                  'name': '_count',
                  'definition': 'http://hl7.org/fhir/R4/SearchParameter/Resource-count',
                  'type': 'number',
                  'documentation': "The maximum number of results to return. Not honored when '_id' is set."
                },
                {
                  'name': 'patient',
                  'definition': 'http://hl7.org/fhir/R4/SearchParameter/clinical-patient',
                  'type': 'reference',
                  'documentation': 'The patient present at the encounter. It is a required field if the _id or '\
                                   'subject fields are not given.'
                },
                {
                  'name': 'subject',
                  'definition': 'http://hl7.org/fhir/R4/SearchParameter/Encounter-subject',
                  'type': 'reference',
                  'documentation': 'The patient present at the encounter. It is a required field if the _id or '\
                                   'patient fields are not given.'
                }
              ]
            },
            {
              "type": 'Goal',
              "supportedProfile": [
                'http://hl7.org/fhir/us/core/StructureDefinition/us-core-goal'
              ],
              "interaction": [
                {
                  "code": 'read'
                },
                {
                  "code": 'search-type'
                }
              ],
              "searchRevInclude": [
                'Provenance:target'
              ],
              "searchParam": [
                {
                  "name": '_id',
                  "definition": 'http://hl7.org/fhir/R4/SearchParameter/Resource-id',
                  "type": 'token',
                  "documentation": 'Goal id supports only the single id. It is a required field if the patient
                  field is not given.'
                },
                {
                  "name": 'patient',
                  "definition": 'http://hl7.org/fhir/us/core/SearchParameter/us-core-goal-patient',
                  "type": 'reference',
                  "documentation": 'Who has the goal is for. It is a required field if the _id field is not given.'
                },
                {
                  "name": 'target-date',
                  "definition": 'http://hl7.org/fhir/us/core/SearchParameter/us-core-goal-target-date',
                  "type": 'date',
                  "documentation": 'A date or date range from which to find Goals.'
                }
              ]
            },
            {
              'type': 'Immunization',
              'supportedProfile': [
                'http://hl7.org/fhir/us/core/StructureDefinition/us-core-immunization'
              ],
              'interaction': [
                {
                  'code': 'read'
                },
                {
                  'code': 'search-type'
                }
              ],
              'searchParam': [
                {
                  'name': '_id',
                  'definition': 'http://hl7.org/fhir/R4/SearchParameter/Resource-id',
                  'type': 'token',
                  'documentation': 'A single or comma separated list of Immunization ids. It is a required field if '\
                                   'the patient field is not given.'
                },
                {
                  'name': 'patient',
                  'definition': 'http://hl7.org/fhir/R4/SearchParameter/clinical-patient',
                  'type': 'reference',
                  'documentation': 'The patient for the vaccination record. It is a required field if the _id field '\
                                   'is not given.'
                },
                {
                  'name': 'date',
                  'definition': 'http://hl7.org/fhir/R4/SearchParameter/clinical-date',
                  'type': 'date',
                  'documentation': 'Vaccination (non)-Administration Date.'
                }
              ]
            },
            {
              "type": 'Location',
              "supportedProfile": [
                'http://hl7.org/fhir/us/core/StructureDefinition/us-core-location'
              ],
              "interaction": [
                {
                  "code": 'read'
                },
                {
                  "code": 'search-type'
                }
              ],
              "searchParam": [
                {
                  "name": '_id',
                  "definition": 'http://hl7.org/fhir/R4/SearchParameter/Resource-id',
                  "type": 'token',
                  "documentation": 'A single or comma separated list of Location ids. It is a required
                  field if the -physicalType field is not given'
                },
                {
                  "name": '-physicalType',
                  "type": 'token',
                  "documentation": "The Location's physical type. It is a required field if the _id field is not given"
                },
                {
                  "name": 'identifier',
                  "definition": 'http://hl7.org/fhir/us/core/SearchParameter/us-core-location-identifier',
                  "type": 'token',
                  "documentation": "A location's identifier."
                },
                {
                  "name": 'address',
                  "type": 'string',
                  "documentation": 'A (part of the) address of the location'
                },
                {
                  "name": 'address-city',
                  "type": 'string',
                  "documentation": 'A city specified in an address. It is a required field if the address-state or
                  address-postalcode fields are not given'
                },
                {
                  "name": 'address-state',
                  "type": 'string',
                  "documentation": 'A state specified in an address'
                },
                {
                  "name": 'address-postalcode',
                  "type": 'string',
                  "documentation": 'A postal code specified in an address'
                },
                {
                  "name": 'name',
                  "type": 'string',
                  "documentation": "A portion of the location's name or alias"
                },
                {
                  "name": 'organization',
                  "type": 'reference',
                  "documentation": 'Searches for locations that are managed by the provided organization'
                }
              ]
            },
            {
              'type': 'OperationDefinition',
              'interaction': [
                {
                  'code': 'read'
                }
              ]
            },
            {
              'type': 'Patient',
              'supportedProfile': [
                'http://hl7.org/fhir/us/core/StructureDefinition/us-core-patient'
              ],
              'interaction': [
                {
                  'code': 'read'
                },
                {
                  'code': 'search-type'
                },
                {
                  'code': 'create'
                },
                {
                  'code': 'patch'
                }
              ],
              'searchParam': [
                {
                  'name': '_id',
                  'definition': 'http://hl7.org/fhir/R4/SearchParameter/Resource-id',
                  'type': 'token',
                  'documentation': "A single or comma separated list of Patient ids. Either the '_id' parameter, "\
                                   "or a combination of 'identifier', 'birthdate', 'name', 'given', 'family', "\
                                   "'address-postalcode', 'phone', or 'email' parameters must be provided."
                },
                {
                  'name': 'identifier',
                  'definition': 'http://hl7.org/fhir/R4/SearchParameter/Patient-identifier',
                  'type': 'token',
                  'documentation': "A patient identifier. Either the '_id' parameter, or a combination of "\
                                   "'identifier', 'birthdate', 'name', 'given', 'family', 'address-postalcode', "\
                                   "'phone', or 'email' parameters must be provided."
                },
                {
                  'name': 'name',
                  'definition': 'http://hl7.org/fhir/R4/SearchParameter/Patient-name',
                  'type': 'string',
                  'documentation': "The beginning of any name of the patient. Either the '_id' parameter, or a "\
                                   "combination of 'identifier', 'birthdate', 'name', 'given', 'family', "\
                                   "'address-postalcode', 'phone', or 'email' parameters must be provided."
                },
                {
                  'name': 'given',
                  'definition': 'http://hl7.org/fhir/R4/SearchParameter/individual-given',
                  'type': 'string',
                  'documentation': "The beginning of the given name of the patient. Either the '_id' parameter, or "\
                                   "a combination of 'identifier', 'birthdate', 'name', 'given', 'family', "\
                                   "'address-postalcode', 'phone', or 'email' parameters must be provided."
                },
                {
                  'name': 'family',
                  'definition': 'http://hl7.org/fhir/R4/SearchParameter/individual-family',
                  'type': 'string',
                  'documentation': "The beginning of the family name of the patient. Either the '_id' parameter, or "\
                                   "a combination of 'identifier', 'birthdate', 'name', 'given', 'family', "\
                                   "'address-postalcode', 'phone', or 'email' parameters must be provided."
                },
                {
                  'name': 'address-postalcode',
                  'definition': 'http://hl7.org/fhir/R4/SearchParameter/individual-address-postalcode',
                  'type': 'string',
                  'documentation': "The postal code of the address of the patient. Either the '_id' parameter, or "\
                                   "a combination of 'identifier', 'birthdate', 'name', 'given', 'family', "\
                                   "'address-postalcode', 'phone', or 'email' parameters must be provided."
                },
                {
                  'name': 'birthdate',
                  'definition': 'http://hl7.org/fhir/R4/SearchParameter/individual-birthdate',
                  'type': 'date',
                  'documentation': "The date of birth of the patient. Either the '_id' parameter, or a combination "\
                                   "of 'identifier', 'birthdate', 'name', 'given', 'family', 'address-postalcode', "\
                                   "'phone', or 'email' parameters must be provided."
                },
                {
                  'name': 'phone',
                  'definition': 'http://hl7.org/fhir/R4/SearchParameter/individual-phone',
                  'type': 'token',
                  'documentation': "The value of the phone number of the patient. Either the '_id' parameter, or "\
                                   "a combination of 'identifier', 'birthdate', 'name', 'given', 'family', "\
                                   "'address-postalcode', 'phone', or 'email' parameters must be provided."
                },
                {
                  'name': 'email',
                  'definition': 'http://hl7.org/fhir/R4/SearchParameter/individual-email',
                  'type': 'token',
                  'documentation': "The value of the email address of the patient. Either the '_id' parameter, or "\
                                   "a combination of 'identifier', 'birthdate', 'name', 'given', 'family', "\
                                   "'address-postalcode', 'phone', or 'email' parameters must be provided."
                },
                {
                  'name': 'gender',
                  'definition': 'http://hl7.org/fhir/R4/SearchParameter/individual-gender',
                  'type': 'token',
                  'documentation': 'The administrative gender of the patient. Gender may only be provided if another '\
                                   "parameter other than '_id' is provided"
                },
                {
                  'name': '_count',
                  'definition': 'http://hl7.org/fhir/R4/SearchParameter/Resource-count',
                  'type': 'number',
                  'documentation': "The maximum number of results to return. Not honoured when '_id' or 'identifier' "\
                                   'are set.'
                }
              ]
            },
            {
              'type': 'Practitioner',
              'supportedProfile': [
                'http://hl7.org/fhir/us/core/StructureDefinition/us-core-practitioner'
              ],
              'interaction': [
                {
                  'code': 'read'
                },
                {
                  'code': 'search-type'
                }
              ],
              'searchParam': [
                {
                  'name': '_id',
                  'definition': 'http://hl7.org/fhir/R4/SearchParameter/Resource-id',
                  'type': 'token',
                  'documentation': 'A single or comma separated list of Practitioner ids.'
                }
              ]
            },
            {
              'type': 'RelatedPerson',
              'interaction': [
                {
                  'code': 'read'
                },
                {
                  'code': 'search-type'
                }
              ],
              'searchParam': [
                {
                  'name': '_id',
                  'definition': 'http://hl7.org/fhir/R4/SearchParameter/Resource-id',
                  'type': 'token',
                  'documentation': 'A single or comma separated list of RelatedPerson ids. It is a required field '\
                                   'if the identifier or patient fields are not given.'
                },
                {
                  'name': 'identifier',
                  'definition': 'http://hl7.org/fhir/R4/SearchParameter/Patient-identifier',
                  'type': 'token',
                  'documentation': 'An Identifier of the RelatedPerson. It is a required field if '\
                                   'the id or patient fields are not given'
                },
                {
                  'name': 'patient',
                  'definition': 'http://hl7.org/fhir/R4/SearchParameter/clinical-patient',
                  'type': 'reference',
                  'documentation': 'The patient this related person is related to. It is a required field if '\
                                   'the id or identifier fields are not given'
                }
              ]
            },
            {
              'type': 'StructureDefinition',
              'interaction': [
                {
                  'code': 'read'
                }
              ]
            }
          ]
        }
      ]
    }.freeze

    R4_WELL_KNOWN ||= {
      'authorization_endpoint': 'https://authorization.cerner.com/tenants/ec2458f2-1e24-41c8-b71b-0e701af7583d/'\
                                'protocols/oauth2/profiles/smart-v1/personas/provider/authorize',
      'token_endpoint': 'https://authorization.cerner.com/tenants/ec2458f2-1e24-41c8-b71b-0e701af7583d/'\
                        'protocols/oauth2/profiles/smart-v1/token',
      'revocation_endpoint': 'https://authorization.devcerner.com/tenants/'\
                        '2c400054-42d8-4e74-87b7-80b5bd5fde9f/protocols/oauth2/profiles/smart-v1/token/revoke',
      'token_endpoint_auth_methods_supported': [
        'client_secret_basic',
        'private_key_jwt'
      ],
      'token_endpoint_auth_signing_alg_values_supported': [
        'RS384',
        'ES384'
      ],
      'scopes_supported': [
        'launch',
        'profile',
        'fhirUser',
        'openid',
        'online_access',
        'user/Account.read',
        'patient/Account.read',
        'system/Account.read',
        'user/AllergyIntolerance.read',
        'patient/AllergyIntolerance.read',
        'system/AllergyIntolerance.read',
        'user/AllergyIntolerance.write',
        'patient/AllergyIntolerance.write',
        'system/AllergyIntolerance.write',
        'user/Appointment.read',
        'patient/Appointment.read',
        'system/Appointment.read',
        'user/Appointment.write',
        'patient/Appointment.write',
        'system/Appointment.write',
        'user/Basic.write',
        'patient/Basic.write',
        'system/Basic.write',
        'user/Binary.read',
        'patient/Binary.read',
        'system/Binary.read',
        'user/CarePlan.read',
        'patient/CarePlan.read',
        'system/CarePlan.read',
        'user/CareTeam.read',
        'patient/CareTeam.read',
        'system/CareTeam.read',
        'user/Condition.read',
        'patient/Condition.read',
        'system/Condition.read',
        'user/Condition.write',
        'patient/Condition.write',
        'system/Condition.write',
        'user/Coverage.read',
        'patient/Coverage.read',
        'system/Coverage.read',
        'user/Coverage.write',
        'patient/Coverage.write',
        'system/Coverage.write',
        'user/Device.read',
        'patient/Device.read',
        'system/Device.read',
        'user/DocumentReference.read',
        'patient/DocumentReference.read',
        'system/DocumentReference.read',
        'user/DocumentReference.write',
        'patient/DocumentReference.write',
        'system/DocumentReference.write',
        'user/Encounter.read',
        'patient/Encounter.read',
        'system/Encounter.read',
        'user/Encounter.write',
        'patient/Encounter.write',
        'system/Encounter.write',
        'user/Immunization.read',
        'patient/Immunization.read',
        'system/Immunization.read',
        'user/Immunization.write',
        'patient/Immunization.write',
        'system/Immunization.write',
        'user/MedicationRequest.read',
        'patient/MedicationRequest.read',
        'system/MedicationRequest.read',
        'user/MedicationRequest.write',
        'patient/MedicationRequest.write',
        'system/MedicationRequest.write',
        'user/NutritionOrder.read',
        'patient/NutritionOrder.read',
        'system/NutritionOrder.read',
        'user/Observation.read',
        'patient/Observation.read',
        'system/Observation.read',
        'user/Observation.write',
        'patient/Observation.write',
        'system/Observation.write',
        'user/Organization.read',
        'system/Organization.read',
        'user/Organization.write',
        'system/Organization.write',
        'user/Patient.read',
        'patient/Patient.read',
        'system/Patient.read',
        'user/Patient.write',
        'patient/Patient.write',
        'system/Patient.write',
        'user/Person.read',
        'patient/Person.read',
        'system/Person.read',
        'user/Practitioner.read',
        'system/Practitioner.read',
        'user/Practitioner.write',
        'system/Practitioner.write',
        'user/Procedure.read',
        'patient/Procedure.read',
        'system/Procedure.read',
        'user/Procedure.write',
        'patient/Procedure.write',
        'system/Procedure.write',
        'user/Provenance.read',
        'patient/Provenance.read',
        'system/Provenance.read',
        'user/Provenance.write',
        'patient/Provenance.write',
        'system/Provenance.write',
        'user/RelatedPerson.read',
        'patient/RelatedPerson.read',
        'system/RelatedPerson.read',
        'user/Schedule.read',
        'patient/Schedule.read',
        'system/Schedule.read',
        'user/ServiceRequest.read',
        'patient/ServiceRequest.read',
        'system/ServiceRequest.read',
        'system/FinancialTransaction.write'
      ],
      'response_types_supported': [
        'code'
      ],
      'management_endpoint': 'https://authorization.devcerner.com/tenants/'\
                             '2c400054-42d8-4e74-87b7-80b5bd5fde9f/personas/provider/my-authorizations',
      'introspection_endpoint': 'https://authorization.cerner.com/tokeninfo',
      'capabilities': [
        'launch-ehr',
        'launch-standalone',
        'client-public',
        'client-confidential-symmetric',
        'sso-openid-connect',
        'context-banner',
        'context-style',
        'context-ehr-patient',
        'context-ehr-encounter',
        'permission-patient',
        'permission-user'
      ]
    }.freeze

  end
end
