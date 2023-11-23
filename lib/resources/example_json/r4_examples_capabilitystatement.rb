# frozen_string_literal: true

module Cerner
  module Resources

    R4_OPEN_METADATA ||= {
      'resourceType': 'CapabilityStatement',
      'url': 'https://fhir-open.cerner.com/r4/ec2458f2-1e24-41c8-b71b-0e701af7583d/metadata',
      'name': 'CernerCapabilityStatement',
      'title': 'Cerner Capability Statement',
      'status': 'active',
      'date': '2023-11-21',
      'publisher': 'Cerner',
      'description': 'Cerner implementation of FHIR on top of Millennium',
      'kind': 'instance',
      'instantiates': [
        'http://hl7.org/fhir/us/core/CapabilityStatement/us-core-server'
      ],
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
                  'name': '-encounter',
                  'type': 'reference',
                  'documentation': 'The encounter associated with the resource.'
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
                  'type': 'token',
                  'documentation': 'The identifier for the account. Required in every search request.'
                },
                {
                  'name': 'identifier',
                  'definition': 'http://hl7.org/fhir/R4/SearchParameter/Account-identifier',
                  'type': 'token',
                  'documentation': 'Statement Account number. Must be set with patients'
                },
                {
                  'name': '_count',
                  'definition': 'http://hl7.org/fhir/R4/SearchParameter/Resource-count',
                  'type': 'number',
                  'documentation': "The maximum number of results to return in a page. Not honored when '_id' is set."
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
              'searchRevInclude': [
                'Provenance:target'
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
                  'definition': 'http://hl7.org/fhir/us/core/SearchParameter/us-core-allergyintolerance-patient',
                  'type': 'reference',
                  'documentation': 'Who the sensitivity is for. It is a required field if the _id field is not given.'
                },
                {
                  'name': 'clinical-status',
                  'definition': 'http://hl7.org/fhir/us/core/SearchParameter/us-core-allergyintolerance-clinical-status',
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
                  'documentation': "The maximum number of results to return in a page. Not honored when '_id' is set."
                },
                {
                  'name': 'date',
                  'definition': 'http://hl7.org/fhir/R4/SearchParameter/Appointment-date',
                  'type': 'date',
                  'documentation': 'A date or date range from which to find appointments. This or the '\
                                   "'-date-or-req-period' parameter must be set when using patient, practitioner or "\
                                   "location. The 'date' parameter may be provided once without a prefix or time "\
                                   'component to imply a date range or once without a prefix and with a time '\
                                   'component to search for appointments at a specific time. Alternately it may be '\
                                   "provided twice with 'le' and 'gt' prefixes to search for appointments "\
                                   'within a specific range. The date prefix pair must create a closed range.'
                },
                {
                  'name': '-date-or-req-period',
                  'type': 'date',
                  'documentation': 'A start date or requested period from which to find appointments. This or the '\
                                   "'date' parameter must be set when using patient, practitioner or location. The "\
                                   "'-date-or-req-period' parameter may be provided once without a prefix or time "\
                                   'component to imply a date range or once without a prefix and with a time '\
                                   'component to search for appointments at a specific time. Alternately it may be '\
                                   "provided twice with 'le' and 'gt' prefixes to search for appointments within a "\
                                   'specific range. The date prefix pair must create a closed range.'
                },
            {
              'name': 'patient',
              'definition': 'http://hl7.org/fhir/R4/SearchParameter/Appointment-patient',
              'type': 'reference',
              'documentation': "One of the individuals of the appointment is this patient. Either the '_id' parameter "\
                               "or one of the 'patient', 'practitioner' or 'location' parameters must be set."
            },
            {
              'name': 'practitioner',
              'definition': 'http://hl7.org/fhir/R4/SearchParameter/Appointment-practitioner',
              'type': 'reference',
              'documentation': "One of the individuals of the appointment is this practitioner. Either the '_id' "\
                               "parameter or one of the 'patient', 'practitioner' or 'location' parameters must be set."
            },
            {
              'name': 'location',
              'definition': 'http://hl7.org/fhir/R4/SearchParameter/Appointment-location',
              'type': 'reference',
              'documentation': "This location is listed in the participants of the appointment. Either the '_id' "\
                               "parameter or one of the 'patient', 'practitioner' or 'location' parameters must be set."
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
          'type': 'Binary',
          'interaction': [
            {
              'code': 'read'
            }
          ],
          'operation': [
            {
              'name': 'autogen-ccd-if',
              'definition': 'https://fhir-ehr.cerner.com/r4/OperationDefinition/binary-autogen-ccd-if',
              'documentation': 'Generate Continuity of Care Document (CCD)'
            }
          ]
        },
        {
          'type': 'CarePlan',
          'supportedProfile': [
            'http://hl7.org/fhir/us/core/StructureDefinition/us-core-careplan'
          ],
          'interaction': [
            {
              'code': 'read'
            },
            {
              'code': 'search-type'
            }
          ],
          'searchRevInclude': [
            'Provenance:target'
          ],
          'searchParam': [
            {
              'name': '_id',
              'definition': 'http://hl7.org/fhir/R4/SearchParameter/Resource-id',
              'type': 'token',
              'documentation': 'A single or comma separated list of CarePlan ids.'
            },
            {
              'name': 'date',
              'definition': 'http://hl7.org/fhir/us/core/SearchParameter/us-core-careplan-date',
              'type': 'date',
              'documentation': "A date range with which to find CarePlans. If used, the ‘date’ parameter must be "\
                               "provided twice. Once with a 'ge' prefix representing the earliest date, and once "\
                               "with a 'le’ prefix representing the latest date. The date prefix pair must create "\
                               'a closed range.'
            },
            {
              'name': 'patient',
              'definition': 'http://hl7.org/fhir/us/core/SearchParameter/us-core-careplan-patient',
              'type': 'reference',
              'documentation': 'Who the careplan is for. It is a required field if the _id field is not given.'
            },
            {
              'name': 'category',
              'definition': 'http://hl7.org/fhir/us/core/SearchParameter/us-core-careplan-category',
              'type': 'token',
              'documentation': 'The category of the careplan. Category assess-plan is supported as of now.'
            },
            {
              'name': '_count',
              'definition': 'http://hl7.org/fhir/R4/SearchParameter/Resource-count',
              'type': 'number',
              'documentation': "The maximum number of results to return. Not honored when '_id' is set."
            }
          ]
        },
        {
          'type': 'CareTeam',
          'supportedProfile': [
            'http://hl7.org/fhir/us/core/StructureDefinition/us-core-careteam'
          ],
          'interaction': [
            {
              'code': 'read'
            },
            {
              'code': 'search-type'
            }
          ],
          'searchRevInclude': [
            'Provenance:target'
          ],
          'searchParam': [
            {
              'name': '_id',
              'definition': 'http://hl7.org/fhir/R4/SearchParameter/Resource-id',
              'type': 'token',
              'documentation': 'CareTeam id supports only the single id. It is a required field if the patient or '\
                               'encounter fields are not given.'
            },
            {
              'name': 'category',
              'definition': 'http://hl7.org/fhir/R4/SearchParameter/CareTeam-category',
              'type': 'token',
              'documentation': 'The category of the careteam. Category Longitudinal (patient level) or Encounter is '\
                               'supported as of now.'
            },
            {
              'name': 'encounter',
              'definition': 'http://hl7.org/fhir/R4/SearchParameter/clinical-encounter',
              'type': 'reference',
              'documentation': 'The Encounter level CareTeam are displayed.'
            },
            {
              'name': 'patient',
              'definition': 'http://hl7.org/fhir/us/core/SearchParameter/us-core-careteam-patient',
              'type': 'reference',
              'documentation': 'Who the careteam is for. It is a required field if the _id field is not given.'
            },
            {
              'name': 'status',
              'definition': 'http://hl7.org/fhir/us/core/SearchParameter/us-core-careteam-status',
              'type': 'token',
              'documentation': 'The status of the CareTeam.'
            }
          ]
        },
        {
          'type': 'ChargeItem',
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
              'documentation': 'ChargeItem id supports only the single id. It is a required field if the account or '\
                               'context fields are not given.'
            },
            {
              'name': 'context',
              'type': 'reference',
              'documentation': "Encounter associated with the ChargeItem. If provided, the '-status' parameter must "\
                               'also be provided. It is a required field if the _id or account fields are not given.'
            },
            {
              'name': 'account',
              'type': 'reference',
              'documentation': "Account associated with the ChargeItem. If provided, the '-status' parameter must "\
                               'also be provided. It is a required field if the _id or context fields are not given.'
            },
            {
              'name': '-status',
              'type': 'token',
              'documentation': "The status of the ChargeItem. Must be set to 'billable'. Must be provided with the "\
                               'context and account parameter.'
            },
            {
              'name': '_count',
              'definition': 'http://hl7.org/fhir/R4/SearchParameter/Resource-count',
              'type': 'number',
              'documentation': "The maximum number of results to return in a page. Not honored when '_id' is set."
            }
          ],
          'operation': [
            {
              'name': 'credit',
              'definition': 'https://fhir-ehr.cerner.com/r4/OperationDefinition/charge-item-credit',
              'documentation': 'Creates an offsetting ChargeItem for an existing debit ChargeItem.'
            },
            {
              'name': 'modify',
              'definition': 'https://fhir-ehr.cerner.com/r4/OperationDefinition/charge-item-modify',
              'documentation': 'Modifies an existing ChargeItem resulting in a newly created ChargeItem.'
            }
          ]
        },
        {
          'type': 'Communication',
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
              'documentation': 'A single or comma separated list of Communication ids. It is a required field if the '\
                               'category, -email-status, received and recipient fields are not given.'
            },
            {
              'name': 'category',
              'definition': 'http://hl7.org/fhir/R4/SearchParameter/Communication-category',
              'type': 'token',
              'documentation': 'The message category. It is a required field if the _id field is not given. Must be '\
                               'set with received, recipient and -email-status.'
            },
            {
              'name': 'received',
              'definition': 'http://hl7.org/fhir/R4/SearchParameter/Communication-received',
              'type': 'date',
              'documentation': 'When the message is received. It is a required field if the _id field is not given. '\
                               "Must be set with category, recipient and -email-status. If used, the ‘received’ "\
                               "parameter may be provided once or twice. Once with a 'ge' prefix representing the "\
                               "earliest received date, and/or once with a 'le’ prefix representing the latest "\
                               'received date.'
            },
            {
              'name': 'recipient',
              'definition': 'http://hl7.org/fhir/R4/SearchParameter/Communication-recipient',
              'type': 'reference',
              'documentation': 'The recipient of the message. It is a required field if the _id field is not given. '\
                               'Must be set with category, recipient and -email-status.'
            },
            {
              'name': '-email-status',
              'type': 'token',
              'documentation': 'The email status of the message. It is a required field if the _id field is not '\
                               'given. Must be set with category, received and recipient.'
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
          'searchRevInclude': [
            'Provenance:target'
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
              'definition': 'http://hl7.org/fhir/us/core/SearchParameter/us-core-condition-patient',
              'type': 'reference',
              'documentation': 'Who has the condition. It is a required field if the subject or _id fields are not '\
                               'given.'
            },
            {
              'name': 'encounter',
              'definition': 'http://hl7.org/fhir/R4/SearchParameter/Condition-encounter',
              'type': 'reference',
              'documentation': 'The encounter of the patient. Only encounter-diagnosis are returned.'
            },
            {
              'name': 'subject',
              'definition': 'http://hl7.org/fhir/R4/SearchParameter/Condition-subject',
              'type': 'reference',
              'documentation': 'Who has the condition. It is a required field if the patient or _id fields are not '\
                               'given.'
            },
            {
              'name': 'clinical-status',
              'definition': 'http://hl7.org/fhir/us/core/SearchParameter/us-core-condition-clinical-status',
              'type': 'token',
              'documentation': 'The clinical status of the condition.'
            },
            {
              'name': 'category',
              'definition': 'http://hl7.org/fhir/us/core/SearchParameter/us-core-condition-category',
              'type': 'token',
              'documentation': 'The category of the condition. Categories problem-list-item, encounter-diagnosis and '\
                               'health-concern are supported as of now.'
            }
          ]
        },
        {
          'type': 'Consent',
          'interaction': [
            {
              'code': 'read'
            },
            {
              'code': 'search-type'
            }
          ],
          'searchInclude': [
            'Consent:actor',
            'Consent:patient'
          ],
          'searchParam': [
            {
              'name': '_id',
              'definition': 'http://hl7.org/fhir/R4/SearchParameter/Resource-id',
              'type': 'token',
              'documentation': 'A single or comma separated list of Consent ids.'
            },
            {
              'name': 'patient',
              'definition': 'http://hl7.org/fhir/R4/SearchParameter/clinical-patient',
              'type': 'reference',
              'documentation': 'Who the consent applies to. It is a required field if the _id field is not given.'
            },
            {
              'name': 'actor',
              'definition': 'http://hl7.org/fhir/R4/SearchParameter/Consent-actor',
              'type': 'reference',
              'documentation': 'Resource for the actor (or group, by role). It is a required field if the _id field '\
                               'is not given.'
            },
            {
              'name': 'patient.identifier',
              'definition': 'http://hl7.org/fhir/R4/SearchParameter/Consent-patient.identifier',
              'type': 'token',
              'documentation': 'The patient.identifier allows to search by patient aliases. Federated Person '\
                               'Principle, SSN, MRN etc... are supported as of now. It is a required field if the _id '\
                               'field is not given.'
            },
            {
              'name': 'actor.identifier',
              'definition': 'http://hl7.org/fhir/R4/SearchParameter/Consent-actor.identifier',
              'type': 'token',
              'documentation': 'The actor.identifier allows to search by related person aliases. Federated Person '\
                               'Principle is the only supported alias as of now. It is a required field if the _id '\
                               'field is not given.'
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
              'code': 'delete'
            }
          ],
          'searchParam': [
            {
              'name': 'patient',
              'definition': 'http://hl7.org/fhir/R4/SearchParameter/Coverage-patient',
              'type': 'reference',
              'documentation': 'Retrieve coverages for a patient.'
            },
            {
              'name': '-encounter',
              'type': 'reference',
              'documentation': 'Retrieve coverages for an encounter.'
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
          'searchRevInclude': [
            'Provenance:target'
          ],
          'searchParam': [
            {
              'name': '_id',
              'definition': 'http://hl7.org/fhir/R4/SearchParameter/Resource-id',
              'type': 'token',
              'documentation': 'A single or comma separated list of Device ids. It is a required field if the patient '\
                               'field is not given.'
            },
            {
              'name': 'patient',
              'definition': 'http://hl7.org/fhir/us/core/SearchParameter/us-core-device-patient',
              'type': 'reference',
              'documentation': 'The patient to whom Device is affixed. It is a required field if the _id field is not '\
                               'given.'
            }
          ]
        },
        {
          'type': 'DiagnosticReport',
          'supportedProfile': [
            'http://hl7.org/fhir/us/core/StructureDefinition/us-core-diagnosticreport-note',
            'http://hl7.org/fhir/us/core/StructureDefinition/us-core-diagnosticreport-lab'
          ],
          'interaction': [
            {
              'code': 'read'
            },
            {
              'code': 'search-type'
            }
          ],
          'searchRevInclude': [
            'Provenance:target'
          ],
          'searchParam': [
            {
              'name': '_id',
              'definition': 'http://hl7.org/fhir/R4/SearchParameter/Resource-id',
              'type': 'token',
              'documentation': 'A single or comma separated list of DiagnosticReport ids. It is a required field if '\
                               'the patient field is not given.'
            },
            {
              'name': 'category',
              'definition': 'http://hl7.org/fhir/us/core/SearchParameter/us-core-diagnosticreport-category',
              'type': 'token',
              'documentation': 'Which diagnostic discipline/department created the report.'
            },
            {
              'name': 'code',
              'definition': 'http://hl7.org/fhir/us/core/SearchParameter/us-core-diagnosticreport-code',
              'type': 'token',
              'documentation': 'The code for the report.'
            },
            {
              'name': 'encounter',
              'definition': 'http://hl7.org/fhir/R4/SearchParameter/clinical-encounter',
              'type': 'reference',
              'documentation': 'The Encounter when the report was made.'
            },
            {
              'name': 'patient',
              'definition': 'http://hl7.org/fhir/us/core/SearchParameter/us-core-diagnosticreport-patient',
              'type': 'reference',
              'documentation': 'The subject of the report. It is a required field.'
            },
            {
              'name': 'date',
              'definition': 'http://hl7.org/fhir/us/core/SearchParameter/us-core-diagnosticreport-date',
              'type': 'date',
              'documentation': 'A date range with which to find Documents. A date parameter may be provided once with '\
                               'or without prefix and time component to imply a date range. Alternately it may be '\
                               "provided twice with 'le', 'lt', 'ge', or 'gt'  prefixes and time component to search "\
                               'for procedures within a specific range. The date and prefix pairs must create a '\
                               'closed range. Must be set with patient or subject.'
            },
            {
              'name': '_count',
              'definition': 'http://hl7.org/fhir/R4/SearchParameter/Resource-count',
              'type': 'number',
              'documentation': 'The maximum number of results to return in a page.'
            }
          ]
        },
        {
          'type': 'DocumentReference',
          'supportedProfile': [
            'http://hl7.org/fhir/us/core/StructureDefinition/us-core-documentreference'
          ],
          'interaction': [
            {
              'code': 'read'
            },
            {
              'code': 'search-type'
            }
          ],
          'searchRevInclude': [
            'Provenance:target'
          ],
          'searchParam': [
            {
              'name': '_id',
              'definition': 'http://hl7.org/fhir/us/core/SearchParameter/us-core-documentreference-id',
              'type': 'token',
              'documentation': 'A single or comma separated list of DocumentReference ids. It is a required field if '\
                               'the patient field is not given.'
            },
            {
              'name': 'patient',
              'definition': 'http://hl7.org/fhir/us/core/SearchParameter/us-core-documentreference-patient',
              'type': 'reference',
              'documentation': 'The patient the document is about. It is a required field if the subject field is not '\
                               'given.'
            },
            {
              'name': 'encounter',
              'definition': 'http://hl7.org/fhir/R4/SearchParameter/clinical-encounter',
              'type': 'reference',
              'documentation': 'The Encounter in which the document was created.'
            },
            {
              'name': 'period',
              'definition': 'http://hl7.org/fhir/us/core/SearchParameter/us-core-documentreference-period',
              'type': 'date',
              'documentation': "A date range with which to find Documents. If used, the 'period' parameter must be "\
                               "provided twice. Once with a 'ge' prefix representing the earliest date, and once with "\
                               "a 'lt' prefix representing the latest date. The period prefix pair must create a "\
                               'closed range and cannot be equal to each other.'
            },
            {
              'name': '_count',
              'definition': 'http://hl7.org/fhir/R4/SearchParameter/Resource-count',
              'type': 'number',
              'documentation': 'The maximum number of results to return in a page.'
            },
            {
              'name': 'type',
              'definition': 'http://hl7.org/fhir/us/core/SearchParameter/us-core-documentreference-type',
              'type': 'token',
              'documentation': 'The kind of document (LOINC if possible).'
            },
            {
              'name': 'category',
              'definition': 'http://hl7.org/fhir/us/core/SearchParameter/us-core-documentreference-category',
              'type': 'token',
              'documentation': 'The categorization of document.'
            },
            {
              'name': 'date',
              'definition': 'http://hl7.org/fhir/us/core/SearchParameter/us-core-documentreference-date',
              'type': 'date',
              'documentation': 'It must be provided  once with a prefix to imply a date  range or without a prefix to '\
                               'search for document(s) at a specific date. Alternately it may be provided twice with '\
                               "`le`, `lt`, `ge`, or `gt` prefixes to search for document(s) within specific range. "\
                               "The date and prefix pairs must create a closed range. For a single 'date' occurrence, "\
                               "`time` component is optional but for two `date` occurrences, must include `time` "\
                               'component.'
            }
          ],
          'operation': [
            {
              'name': 'USCoreFetchDocumentReferences',
              'definition': 'http://hl7.org/fhir/us/core/OperationDefinition/docref',
              'documentation': 'US Core Fetch DocumentReferences'
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
          'searchRevInclude': [
            'Provenance:target'
          ],
          'searchParam': [
            {
              'name': '_id',
              'definition': 'http://hl7.org/fhir/us/core/SearchParameter/us-core-encounter-id',
              'type': 'token',
              'documentation': 'A single or comma separated list of Encounter ids. It is a required field if the '\
                               'account or identifier or -pageContext or patient or subject fields are not given.'
            },
            {
              'name': '_count',
              'definition': 'http://hl7.org/fhir/R4/SearchParameter/Resource-count',
              'type': 'number',
              'documentation': "The maximum number of results to return in a page. Not honored when '_id' is set."
            },
            {
              'name': 'patient',
              'definition': 'http://hl7.org/fhir/us/core/SearchParameter/us-core-encounter-patient',
              'type': 'reference',
              'documentation': 'The patient present at the encounter. It is a required field if the account or _id or '\
                               'identifier or -pageContext or subject fields are not given.'
            },
            {
              'name': 'subject',
              'definition': 'http://hl7.org/fhir/R4/SearchParameter/Encounter-subject',
              'type': 'reference',
              'documentation': 'The patient present at the encounter. It is a required field if the account or _id or '\
                               'identifier or -pageContext or patient fields are not given.'
            },
            {
              'name': 'status',
              'definition': 'http://hl7.org/fhir/us/core/SearchParameter/us-core-encounter-status',
              'type': 'token',
              'documentation': 'The status of the encounter. Must be set with patient.'
            },
            {
              'name': 'date',
              'definition': 'http://hl7.org/fhir/us/core/SearchParameter/us-core-encounter-date',
              'type': 'date',
              'documentation': 'A date parameter may be provided once with a prefix and time component to imply a '\
                               "date range. Alternately it may be provided twice with 'le', 'lt', 'ge', or 'gt' "\
                               'prefixes and time component to search for encounters within a specific range. The '\
                               'date and prefix pairs must create a closed range. Must be set with patient or subject.'
            },
            {
              'name': 'identifier',
              'definition': 'http://hl7.org/fhir/us/core/SearchParameter/us-core-encounter-identifier',
              'type': 'token',
              'documentation': "An encounter's identifier. It is a required field if the account or _id or "\
                               '-pageContext or patient or subject fields are not given.'
                }
              ]
            },
            {
              'type': 'FamilyMemberHistory',
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
                  'documentation': 'A single or comma separated list of FamilyMemberHistory ids. It is a required '\
                                   'field if the patient field is not given.'
                },
                {
                  'name': 'patient',
                  'definition': 'http://hl7.org/fhir/R4/SearchParameter/clinical-patient',
                  'type': 'reference',
                  'documentation': 'Who the family member history is for. It is a required field if the _id field '\
                                   'is not given. It is a required field if the status parameter is provided.'
                },
                {
                  'name': 'status',
                  'definition': 'http://hl7.org/fhir/R4/SearchParameter/status',
                  'type': 'token',
                  'documentation': 'The status of the FamilyMemberHistory.'
                }
              ]
            },
            {
              'type': 'Goal',
              'supportedProfile': [
                'http://hl7.org/fhir/us/core/StructureDefinition/us-core-goal'
              ],
              'interaction': [
                {
                  'code': 'read'
                },
                {
                  'code': 'search-type'
                }
              ],
              'searchRevInclude': [
                'Provenance:target'
              ],
              'searchParam': [
                {
                  'name': '_id',
                  'definition': 'http://hl7.org/fhir/R4/SearchParameter/Resource-id',
                  'type': 'token',
                  'documentation': 'Goal id supports only the single id. It is a required field if the patient field '\
                                   'is not given.'
                },
                {
                  'name': 'patient',
                  'definition': 'http://hl7.org/fhir/us/core/SearchParameter/us-core-goal-patient',
                  'type': 'reference',
                  'documentation': 'Who has the goal is for. It is a required field if the _id field is not given.'
                },
                {
                  'name': 'target-date',
                  'definition': 'http://hl7.org/fhir/us/core/SearchParameter/us-core-goal-target-date',
                  'type': 'date',
                  'documentation': 'A date or date range from which to find Goals.'
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
              'searchRevInclude': [
                'Provenance:target'
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
                  'definition': 'http://hl7.org/fhir/us/core/SearchParameter/us-core-immunization-patient',
                  'type': 'reference',
                  'documentation': 'The patient for the vaccination record. It is a required field if the _id field '\
                                   'is not given.'
                },
                {
                  'name': 'date',
                  'definition': 'http://hl7.org/fhir/us/core/SearchParameter/us-core-immunization-date',
                  'type': 'date',
                  'documentation': 'Vaccination (non)-Administration Date.'
                },
                {
                  'name': 'target-disease',
                  'definition': 'http://hl7.org/fhir/us/core/SearchParameter/us-core-immunization-target-disease',
                  'type': 'token',
                  'documentation': 'A single or comma separated list of target diseases the dose is being '\
                                   'administered against.'
                }
              ]
            },
            {
              'type': 'InsurancePlan',
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
                  'documentation': 'A single or comma separated list of InsurancePlan ids.'
                },
                {
                  'name': 'owned-by',
                  'definition': 'http://hl7.org/fhir/R4/SearchParameter/InsurancePlan-owned-by',
                  'type': 'reference',
                  'documentation': 'The organization that is providing the health insurance product.'
                }
              ]
            },
            {
              'type': 'Location',
              'supportedProfile': [
                'http://hl7.org/fhir/us/core/StructureDefinition/us-core-location'
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
                  'documentation': 'A single or comma separated list of Location ids. It is a required field if the '\
                                   '-physicalType field is not given'
                },
                {
                  'name': '-physicalType',
                  'type': 'token',
                  'documentation': "The Location's physical type. It is a required field if the _id field is not given"
            },
            {
              'name': 'identifier',
              'definition': 'http://hl7.org/fhir/us/core/SearchParameter/us-core-location-identifier',
              'type': 'token',
              'documentation': "A location's identifier."
                },
                {
                  'name': 'address',
                  'type': 'string',
                  'documentation': 'A (part of the) address of the location'
                },
                {
                  'name': 'address-city',
                  'type': 'string',
                  'documentation': 'A city specified in an address. It is a required field if the address-state or '\
                                   'address-postalcode fields are not given'
                },
                {
                  'name': 'address-state',
                  'type': 'string',
                  'documentation': 'A state specified in an address'
                },
                {
                  'name': 'address-postalcode',
                  'type': 'string',
                  'documentation': 'A postal code specified in an address'
                },
                {
                  'name': 'name',
                  'type': 'string',
                  'documentation': "A portion of the location's name or alias"
            },
            {
              'name': 'organization',
              'type': 'reference',
              'documentation': 'Searches for locations that are managed by the provided organization'
            }
          ]
        },
        {
          'type': 'MedicationAdministration',
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
              'documentation': 'A single or comma separated list of MedicationAdministration ids.'
            },
            {
              'name': 'patient',
              'definition': 'http://hl7.org/fhir/R4/SearchParameter/medicationadministration-patient',
              'type': 'reference',
              'documentation': 'The identity of a patient to list administrations for. It is a required field if the '\
                               '_id field is not given.'
            },
            {
              'name': 'status',
              'definition': 'http://hl7.org/fhir/R4/SearchParameter/medicationadministration-status',
              'type': 'token',
              'documentation': 'MedicationAdministration event status.'
            },
            {
              'name': 'performer',
              'definition': 'http://hl7.org/fhir/R4/SearchParameter/medicationadministration-performer',
              'type': 'reference',
              'documentation': 'The identity of the individual who administered the medication.'
            },
            {
              'name': 'effective-time',
              'definition': 'http://hl7.org/fhir/R4/SearchParameter/medicationadministration-effective-time',
              'type': 'date',
              'documentation': "A effective-time parameter may be provided once with 'le' or 'lt' or 'ge' or 'gt' "\
                               'prefix and time component to imply a date range. Alternately it may be provided twice '\
                               "with 'le', 'lt', 'ge', or 'gt' prefixes and time component to search for medications "\
                               'administered within a specific range. The date and prefix pairs must create a closed '\
                               'range.'
            }
          ]
        },
        {
          'type': 'MedicationRequest',
          'supportedProfile': [
            'http://hl7.org/fhir/us/core/StructureDefinition/us-core-medicationrequest'
          ],
          'interaction': [
            {
              'code': 'read'
            },
            {
              'code': 'search-type'
            }
          ],
          'searchRevInclude': [
            'Provenance:target'
          ],
          'searchParam': [
            {
              'name': '_id',
              'definition': 'http://hl7.org/fhir/R4/SearchParameter/Resource-id',
              'type': 'token',
              'documentation': 'A single or comma separated list of MedicationRequest ids.'
            },
            {
              'name': 'patient',
              'definition': 'http://hl7.org/fhir/us/core/SearchParameter/us-core-medicationrequest-patient',
              'type': 'reference',
              'documentation': 'The patient to return MedicationRequests for. It is a required field if the _id field '\
                               'is not given.'
            },
            {
              'name': 'intent',
              'definition': 'http://hl7.org/fhir/us/core/SearchParameter/us-core-medicationrequest-intent',
              'type': 'token',
              'documentation': 'The intent of the MedicationRequest.'
            },
            {
              'name': 'status',
              'definition': 'http://hl7.org/fhir/us/core/SearchParameter/us-core-medicationrequest-status',
              'type': 'token',
              'documentation': 'The status of the MedicationRequest.'
            },
            {
              'name': '_lastUpdated',
              'definition': 'http://hl7.org/fhir/R4/SearchParameter/Resource-lastUpdated',
              'type': 'date',
              'documentation': 'When the resource version last changed.'
            },
            {
              'name': '-timing-boundsPeriod',
              'definition': 'http://hl7.org/fhir/R4/SearchParameter/Resource-dosageInstruction-timing-repeat-boundsPeriod',
              'type': 'date',
              'documentation': 'The date-time within the period the medication should be given to the patient. '\
                               "Must be prefixed by 'ge'."
            },
            {
              'name': '_count',
              'definition': 'http://hl7.org/fhir/R4/SearchParameter/Resource-count',
              'type': 'number',
              'documentation': "The maximum number of results to return in a page. Not honored when '_id' is set."
            }
          ]
        },
        {
          'type': 'NutritionOrder',
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
              'documentation': 'A single or comma separated list of NutritionOrder ids.'
            },
            {
              'name': 'patient',
              'definition': 'http://hl7.org/fhir/R4/SearchParameter/clinical-patient',
              'type': 'reference',
              'documentation': 'The patient to return NutritionOrders for. It is a required field if the _id '\
                               'field is not given.'
            },
            {
              'name': 'status',
              'definition': 'http://hl7.org/fhir/R4/SearchParameter/NutritionOrder-status',
              'type': 'token',
              'documentation': 'The status of the NutritionOrder.'
            },
            {
              'name': '_lastUpdated',
              'definition': 'http://hl7.org/fhir/R4/SearchParameter/Resource-lastUpdated',
              'type': 'date',
              'documentation': 'When the resource version last changed.'
            },
            {
              'name': '_count',
              'definition': 'http://hl7.org/fhir/R4/SearchParameter/Resource-count',
              'type': 'number',
              'documentation': "The maximum number of results to return in a page. Not honored when '_id' is set."
            }
          ]
        },
        {
          'type': 'Observation',
          'supportedProfile': [
            'http://hl7.org/fhir/us/core/StructureDefinition/us-core-observation-lab',
            'http://hl7.org/fhir/us/core/StructureDefinition/us-core-bmi',
            'http://hl7.org/fhir/us/core/StructureDefinition/pediatric-weight-for-height',
            'http://hl7.org/fhir/us/core/StructureDefinition/us-core-pulse-oximetry',
            'http://hl7.org/fhir/us/core/StructureDefinition/us-core-smokingstatus',
            'http://hl7.org/fhir/us/core/StructureDefinition/us-core-blood-pressure',
            'http://hl7.org/fhir/us/core/StructureDefinition/us-core-body-height',
            'http://hl7.org/fhir/us/core/StructureDefinition/us-core-body-weight',
            'http://hl7.org/fhir/us/core/StructureDefinition/us-core-heart-rate',
            'http://hl7.org/fhir/us/core/StructureDefinition/us-core-respiratory-rate',
            'http://hl7.org/fhir/us/core/StructureDefinition/us-core-body-temperature',
            'http://hl7.org/fhir/us/core/StructureDefinition/us-core-head-circumference',
            'http://hl7.org/fhir/us/core/StructureDefinition/us-core-vital-signs',
            'http://hl7.org/fhir/us/core/StructureDefinition/pediatric-bmi-for-age',
            'http://hl7.org/fhir/us/core/StructureDefinition/head-occipital-frontal-circumference-percentile'
          ],
          'interaction': [
            {
              'code': 'read'
            },
            {
              'code': 'search-type'
            }
          ],
          'searchRevInclude': [
            'Provenance:target'
          ],
          'searchParam': [
            {
              'name': '_id',
              'definition': 'http://hl7.org/fhir/R4/SearchParameter/Resource-id',
              'type': 'token',
              'documentation': 'A single or comma separated list of Observation ids. It is a required field if the '\
                               'patient field is not given.'
            },
            {
              'name': 'patient',
              'definition': 'http://hl7.org/fhir/us/core/SearchParameter/us-core-observation-patient',
              'type': 'reference',
              'documentation': 'The patient the observation is about. It is a required field if the subject field '\
                               'is not given.'
            },
            {
              'name': 'subject',
              'definition': 'http://hl7.org/fhir/R4/SearchParameter/Observation-subject',
              'type': 'reference',
              'documentation': 'The patient subject the observation is about. It is a required field if the patient '\
                               'field is not given.'
            },
            {
              'name': 'category',
              'definition': 'http://hl7.org/fhir/us/core/SearchParameter/us-core-observation-category',
              'type': 'token',
              'documentation': 'A single or comma separated list of classifications of the type of observation.'
            },
            {
              'name': 'code',
              'definition': 'http://hl7.org/fhir/us/core/SearchParameter/us-core-observation-code',
              'type': 'token',
              'documentation': 'A single or comma separated list of observation types.'
            },
            {
              'name': 'date',
              'definition': 'http://hl7.org/fhir/us/core/SearchParameter/us-core-observation-date',
              'type': 'date',
              'documentation': "A date or date range from which to find observations. The 'date' parameter may be "\
                               'provided once without a prefix or time component to imply a date range or once '\
                               'without a prefix and with a time component to search for observations at a specific '\
                               "time. Alternately it may be provided twice with 'le', 'lt', 'ge', or 'gt' prefixes to "\
                               'search for observations within a specific range. The date and prefix pairs must '\
                               'create a closed range.'
            },
            {
              'name': '_lastUpdated',
              'definition': 'http://hl7.org/fhir/R4/SearchParameter/Resource-lastUpdated',
              'type': 'date',
              'documentation': 'A date or date range used to search for observations which were last updated in that '\
                               "period. The '_lastUpdated' parameter may be provided once without a prefix or time "\
                               'component to imply a date range or once without a prefix and with a time component to '\
                               'search for observations at a specific time. Alternately it may be provided twice with '\
                               "'le', 'lt', 'ge', or 'gt' prefixes to search for observations within a specific "\
                               'range. The date and prefix pairs must create a closed range.'
            },
            {
              'name': '_count',
              'definition': 'http://hl7.org/fhir/R4/SearchParameter/Resource-count',
              'type': 'number',
              'documentation': 'The maximum number of results to return in a page.'
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
          'type': 'Organization',
          'supportedProfile': [
            'http://hl7.org/fhir/us/core/StructureDefinition/us-core-organization'
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
              'documentation': 'A single or comma separated list of Organization ids.'
            },
            {
              'name': 'identifier',
              'definition': 'http://hl7.org/fhir/R4/SearchParameter/Organization-identifier',
              'type': 'token',
              'documentation': "The Organization's Identifier."
                },
                {
                  'name': 'type',
                  'definition': 'http://hl7.org/fhir/R4/SearchParameter/Organization-type',
                  'type': 'token',
                  'documentation': "The Organization's type."
            },
            {
              'name': '_count',
              'definition': 'http://hl7.org/fhir/R4/SearchParameter/Organization-count',
              'type': 'number',
              'documentation': 'The maximum number of results to return in a page.'
            },
            {
              'name': 'name',
              'definition': 'http://hl7.org/fhir/R4/SearchParameter/Organization-name',
              'type': 'string',
              'documentation': "The Organization's name."
                },
                {
                  'name': 'address',
                  'definition': 'http://hl7.org/fhir/R4/SearchParameter/Organization-address',
                  'type': 'string',
                  'documentation': "The Organization's address."
            }
          ],
          'operation': [
            {
              'name': 'get-cg-for-mrcu',
              'definition': 'https://fhir-ehr.cerner.com/r4/OperationDefinition/organization-get-cg-for-mrcu',
              'documentation': 'Retrieves details for a caregiver organization given a care unit organization id.'
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
          'searchRevInclude': [
            'Provenance:target'
          ],
          'searchParam': [
            {
              'name': '_id',
              'definition': 'http://hl7.org/fhir/us/core/SearchParameter/us-core-patient-id',
              'type': 'token',
              'documentation': "A single or comma separated list of Patient ids. Either the '_id' parameter, or a "\
                               "combination of 'identifier', 'birthdate', 'name', 'given', 'family', "\
                               "'address-postalcode', 'phone', or 'email' parameters must be provided."
            },
            {
              'name': 'identifier',
              'definition': 'http://hl7.org/fhir/us/core/SearchParameter/us-core-patient-identifier',
              'type': 'token',
              'documentation': "A patient identifier. Either the '_id' parameter, or a combination of 'identifier', "\
                               "'birthdate', 'name', 'given', 'family', 'address-postalcode', 'phone', or 'email' "\
                               'parameters must be provided.'
            },
            {
              'name': 'name',
              'definition': 'http://hl7.org/fhir/us/core/SearchParameter/us-core-patient-name',
              'type': 'string',
              'documentation': "The beginning of any name of the patient. Either the '_id' parameter, or a "\
                               "combination of 'identifier', 'birthdate', 'name', 'given', 'family', "\
                               "'address-postalcode', 'phone', or 'email' parameters must be provided."
            },
            {
              'name': 'given',
              'definition': 'http://hl7.org/fhir/us/core/SearchParameter/us-core-patient-given',
              'type': 'string',
              'documentation': "The beginning of the given name of the patient. Either the '_id' parameter, or a "\
                               "combination of 'identifier', 'birthdate', 'name', 'given', 'family', "\
                               "'address-postalcode', 'phone', or 'email' parameters must be provided."
            },
            {
              'name': 'family',
              'definition': 'http://hl7.org/fhir/us/core/SearchParameter/us-core-patient-family',
              'type': 'string',
              'documentation': "The beginning of the family name of the patient. Either the '_id' parameter, or a "\
                               "combination of 'identifier', 'birthdate', 'name', 'given', 'family', "\
                               "'address-postalcode', 'phone', or 'email' parameters must be provided."
            },
            {
              'name': 'address-postalcode',
              'definition': 'http://hl7.org/fhir/R4/SearchParameter/individual-address-postalcode',
              'type': 'string',
              'documentation': "The postal code of the address of the patient. Either the '_id' parameter, or a "\
                               "combination of 'identifier', 'birthdate', 'name', 'given', 'family', "\
                               "'address-postalcode', 'phone', or 'email' parameters must be provided."
            },
            {
              'name': 'birthdate',
              'definition': 'http://hl7.org/fhir/us/core/SearchParameter/us-core-patient-birthdate',
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
              'definition': 'http://hl7.org/fhir/us/core/SearchParameter/us-core-patient-gender',
              'type': 'token',
              'documentation': 'The administrative gender of the patient. Gender may only be provided if another '\
                               "parameter other than '_id' is provided"
            },
            {
              'name': '_count',
              'definition': 'http://hl7.org/fhir/R4/SearchParameter/Resource-count',
              'type': 'number',
              'documentation': "The maximum number of results to return in a page. Not honored when '_id' or "\
                               "'identifier' are set."
            }
          ],
          'operation': [
            {
              'name': 'health-cards-issue',
              'definition': 'https://spec.smarthealth.cards/artifacts/operation-patient-i-health-cards-issue.json',
              'documentation': 'Issues verifiable health cards for the patient.'
            }
          ]
        },
        {
          'type': 'Person',
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
              'documentation': 'A single or comma separated list of Person ids. It is a required field if the '\
                               'identifier field is not given'
            },
            {
              'name': 'identifier',
              'definition': 'http://hl7.org/fhir/R4/SearchParameter/Person-identifier',
              'type': 'token',
              'documentation': "A person's Identifier. It is a required field if the _id field is not given"
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
                  'documentation': "A single or comma separated list of Practitioner ids. Either the '_id', "\
                                   "'identifier', 'name', 'active' or 'family' parameter, or a combination of 'given' "\
                                   "and 'family' parameters must be provided."
                },
                {
                  'name': 'identifier',
                  'definition': 'http://hl7.org/fhir/us/core/SearchParameter/us-core-practitioner-identifier',
                  'type': 'token',
                  'documentation': "A practitioner's Identifier. Either the '_id', 'identifier', 'name', 'active' or "\
                                   "'family' parameter, or a combination of 'given' and 'family' parameters must be "\
                                   'provided.'
                },
                {
                  'name': 'given',
                  'definition': 'http://hl7.org/fhir/R4/SearchParameter/individual-given',
                  'type': 'string',
                  'documentation': "The beginning of the given name of the practitioner. Either the '_id', "\
                                   "'identifier', 'name', 'active' or 'family' parameter, or a combination of 'given' "\
                                   "and 'family' parameters must be provided."
                },
                {
                  'name': 'family',
                  'definition': 'http://hl7.org/fhir/R4/SearchParameter/individual-family',
                  'type': 'string',
                  'documentation': "The beginning of the family name of the practitioner. Either the '_id', "\
                                   "'identifier', 'name', 'active' or 'family' parameter, or a combination of 'given' "\
                                   "and 'family' parameters must be provided."
                },
                {
                  'name': 'name',
                  'definition': 'http://hl7.org/fhir/R4/SearchParameter/individual-name',
                  'type': 'string',
                  'documentation': 'The beginning of the first, last or middle name of the practitioner. Either the '\
                                   "'_id', 'identifier', 'name', 'active' or 'family' parameter, or a combination of "\
                                   "'given' and 'family' parameters must be provided."
                },
                {
                  'name': 'active',
                  'definition': 'http://hl7.org/fhir/R4/SearchParameter/Resource-active',
                  'type': 'token',
                  'documentation': "Whether the practitioner record is active. Either the '_id', 'identifier', "\
                                   "'name', 'active' or 'family' parameter, or a combination of 'given' and 'family' "\
                                   'parameters must be provided.'
                },
                {
                  'name': '_count',
                  'definition': 'http://hl7.org/fhir/R4/SearchParameter/Resource-count',
                  'type': 'number',
                  'documentation': "The maximum number of results to return in a page. Not honored when '_id' is set. "\
                                   "Either the '_id', 'identifier', 'name', 'active' or 'family' parameter, or a "\
                                   "combination of 'given' and 'family' parameters must be provided."
                }
              ]
            },
            {
              'type': 'Procedure',
              'supportedProfile': [
                'http://hl7.org/fhir/us/core/StructureDefinition/us-core-procedure'
              ],
              'interaction': [
                {
                  'code': 'read'
                },
                {
                  'code': 'search-type'
                }
              ],
              'searchRevInclude': [
                'Provenance:target'
              ],
              'searchParam': [
                {
                  'name': '_id',
                  'definition': 'http://hl7.org/fhir/R4/SearchParameter/Resource-id',
                  'type': 'token',
                  'documentation': 'A single or comma separated list of Procedure ids. It is a required field if the '\
                                   'patient or subject fields are not given'
                },
                {
                  'name': 'patient',
                  'definition': 'http://hl7.org/fhir/us/core/SearchParameter/us-core-procedure-patient',
                  'type': 'reference',
                  'documentation': 'Search by subject - a patient. It is a required field if the _id or subject '\
                                   'fields are not given'
                },
                {
                  'name': 'subject',
                  'definition': 'http://hl7.org/fhir/R4/SearchParameter/clinical-patient',
                  'type': 'reference',
                  'documentation': 'Search by subject. It is a required field if the _id or patient fields are '\
                                   'not given'
                },
                {
                  'name': 'date',
                  'definition': 'http://hl7.org/fhir/us/core/SearchParameter/us-core-procedure-date',
                  'type': 'date',
                  'documentation': 'A date parameter may be provided once without a prefix or time component to imply '\
                                   'a date range or once without a prefix and with a time component. Alternately it '\
                                   "may be provided twice with 'le', 'lt', 'ge', or 'gt' prefixes to search for "\
                                   'procedures within a specific range. The date and prefix pairs must create a '\
                                   'closed range. Must be set with patient or subject.'
                }
              ]
            },
            {
              'type': 'Provenance',
              'supportedProfile': [
                'http://hl7.org/fhir/us/core/StructureDefinition/us-core-provenance'
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
                  'documentation': 'A single or comma separated list of Provenance ids. It is a required field if the '\
                                   'target field is not given'
                },
                {
                  'name': 'target',
                  'definition': 'http://hl7.org/fhir/R4/SearchParameter/Provenance-target',
                  'type': 'reference',
                  'documentation': 'The resource(s) the Provenance is associated with. It is a required field if the '\
                                   '_id field is not given'
                }
              ]
            },
            {
              'type': 'Questionnaire',
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
                  'documentation': 'A single or comma separated list of Questionnaire ids.'
                }
              ]
            },
            {
              'type': 'QuestionnaireResponse',
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
                  'documentation': 'A single or comma separated list of QuestionnaireResponse ids. It is a required '\
                                   'field if the patient field is not given.'
                },
                {
                  'name': 'patient',
                  'definition': 'http://hl7.org/fhir/R4/SearchParameter/QuestionnaireResponse-patient',
                  'type': 'reference',
                  'documentation': 'The patient that is the subject of the questionnaire response. It is a required '\
                                   'field if the _id field is not given'
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
                  'documentation': 'A single or comma separated list of RelatedPerson ids. It is a required field if '\
                                   'the identifier or patient or -encounter fields are not given.'
                },
                {
                  'name': 'identifier',
                  'definition': 'http://hl7.org/fhir/R4/SearchParameter/Patient-identifier',
                  'type': 'token',
                  'documentation': 'An Identifier of the RelatedPerson. It is a required field if the id or patient '\
                                   'or -encounter fields are not given'
                },
                {
                  'name': 'patient',
                  'definition': 'http://hl7.org/fhir/R4/SearchParameter/clinical-patient',
                  'type': 'reference',
                  'documentation': 'The patient this related person is related to. It is a required field if the id '\
                                   'or identifier or -encounter fields are not given'
                },
                {
                  'name': '-encounter',
                  'type': 'reference',
                  'documentation': 'The encounter this related person is related to. It is a required field if the id '\
                                   'or identifier or patient fields are not given'
                },
                {
                  'name': '-relationship-level',
                  'type': 'token',
                  'documentation': "The resource's relationship to either the patient or encounter level. Must be "\
                                   'provided with Patient and Identifier searches.'
                }
              ]
            },
            {
              'type': 'Schedule',
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
                  'documentation': "A single or comma separated list of Schedule ids. The '_id' parameter must be set."
                }
              ]
            },
            {
              'type': 'ServiceRequest',
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
                  'documentation': 'A single or comma separated list of ServiceRequest ids.'
                },
                {
                  'name': 'patient',
                  'definition': 'http://hl7.org/fhir/R4/SearchParameter/clinical-patient',
                  'type': 'reference',
                  'documentation': 'The patient to return ServiceRequests for. It is a required field if the subject '\
                                   'or _id fields are not given.'
                },
                {
                  'name': 'subject',
                  'definition': 'http://hl7.org/fhir/R4/SearchParameter/ServiceRequest-subject',
                  'type': 'reference',
                  'documentation': 'Individual or Entity the service is ordered for. It is a required field if the '\
                                   'patient or _id fields are not given.'
                },
                {
                  'name': 'code',
                  'definition': 'http://hl7.org/fhir/R4/SearchParameter/clinical-code',
                  'type': 'token',
                  'documentation': 'What is being requested/ordered.'
                },
                {
                  'name': '_lastUpdated',
                  'definition': 'http://hl7.org/fhir/R4/SearchParameter/Resource-lastUpdated',
                  'type': 'date',
                  'documentation': 'When the resource version last changed.'
                },
                {
                  'name': '_count',
                  'definition': 'http://hl7.org/fhir/R4/SearchParameter/Resource-count',
                  'type': 'number',
                  'documentation': "The maximum number of results to return in a page. Not honored when '_id' is set."
                }
              ]
            },
            {
              'type': 'Slot',
              'interaction': [
                {
                  'code': 'read'
                },
                {
                  'code': 'search-type'
                }
              ],
              'searchInclude': [
                'Slot:schedule',
                'Schedule:actor:Practitioner'
              ],
              'searchParam': [
                {
                  'name': '_id',
                  'definition': 'http://hl7.org/fhir/R4/SearchParameter/Resource-id',
                  'type': 'token',
                  'documentation': "A single or comma separated list of Slot ids. Either the '_id' parameter or "\
                                   "'service-type' must be set."
                },
                {
                  'name': 'start',
                  'definition': 'http://hl7.org/fhir/R4/SearchParameter/Slot-date',
                  'type': 'date',
                  'documentation': "A date or date range from which the slots are to be retrieved. The 'start' "\
                                   'parameter is required when service-type, schedule.actor, -location is provided. '\
                                   "When provided, must use both 'lt' and 'ge' prefixes to search for slots within a "\
                                   'specific range. Time component should be provided for both the instances. The '\
                                   'date and prefix pairs must create a closed range.'
                },
                {
                  'name': 'service-type',
                  'definition': 'http://hl7.org/fhir/R4/SearchParameter/Service-type',
                  'type': 'token',
                  'documentation': 'A single or comma separated list of appointment types that can be booked into the '\
                                   "slot. Either the '_id' parameter or 'service-type' must be set."
                },
                {
                  'name': 'schedule.actor',
                  'definition': 'http://hl7.org/fhir/R4/SearchParameter/Slot-schedule.actor',
                  'type': 'reference',
                  'documentation': 'A single or comma separated list of schedule actors. Must be Practitioner actors.'
                },
                {
                  'name': '-location',
                  'definition': 'http://hl7.org/fhir/R4/SearchParameter/Slot-location',
                  'type': 'reference',
                  'documentation': 'A single or comma separated list of Location references.'
                },
                {
                  'name': '_count',
                  'definition': 'http://hl7.org/fhir/R4/SearchParameter/Resource-count',
                  'type': 'number',
                  'documentation': 'The maximum number of results to return in a page. This value should be in the '\
                                   'range [5,200]. If no value is provided, a default page size of 50 will be used.'
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
      'url': 'https://fhir-ehr.cerner.com/r4/ec2458f2-1e24-41c8-b71b-0e701af7583d/metadata',
      'name': 'CernerCapabilityStatement',
      'title': 'Cerner Capability Statement',
      'status': 'active',
      'date': '2023-11-21',
      'publisher': 'Cerner',
      'description': 'Cerner implementation of FHIR on top of Millennium',
      'kind': 'instance',
      'instantiates': [
        'http://hl7.org/fhir/us/core/CapabilityStatement/us-core-server',
        'http://hl7.org/fhir/uv/bulkdata/CapabilityStatement/bulk-data'
      ],
      'implementation': {
        'description': 'Cerner implementation of FHIR on top of Millennium',
        'url': 'https://fhir-ehr.cerner.com/r4/ec2458f2-1e24-41c8-b71b-0e701af7583d'
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
                'extension': [
                  {
                    'valueUri': 'https://authorization.cerner.com/tenants/ec2458f2-1e24-41c8-b71b-0e701af7583d/'\
                                'protocols/oauth2/profiles/smart-v1/token',
                    'url': 'token'
                  },
                  {
                    'valueUri': 'https://authorization.cerner.com/tenants/ec2458f2-1e24-41c8-b71b-0e701af7583d/'\
                                'protocols/oauth2/profiles/smart-v1/token/revoke',
                    'url': "revoke"
                  },
                  {
                    'valueUri': 'https://authorization.cerner.com/tenants/ec2458f2-1e24-41c8-b71b-0e701af7583d/'\
                                'protocols/oauth2/profiles/smart-v1/personas/provider/authorize',
                    'url': 'authorize'
                  },
                  {
                    'valueUri': 'https://authorization.cerner.com/tenants/ec2458f2-1e24-41c8-b71b-0e701af7583d/'\
                                'personas/provider/my-authorizations',
                    'url': 'manage'
                  },
                  {
                    'valueUri': 'https://authorization.cerner.com/tokeninfo',
                    'url': 'introspect'
                  }
                ],
                'url': 'http://fhir-registry.smarthealthit.org/StructureDefinition/oauth-uris'
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
                  'name': '-encounter',
                  'type': 'reference',
                  'documentation': 'The encounter associated with the resource.'
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
                  'type': 'token',
                  'documentation': 'The identifier for the account. Required in every search request.'
                },
                {
                  'name': 'identifier',
                  'definition': 'http://hl7.org/fhir/R4/SearchParameter/Account-identifier',
                  'type': 'token',
                  'documentation': 'Statement Account number. Must be set with patients'
                },
                {
                  'name': '_count',
                  'definition': 'http://hl7.org/fhir/R4/SearchParameter/Resource-count',
                  'type': 'number',
                  'documentation': "The maximum number of results to return in a page. Not honored when '_id' is set."
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
                },
                {
                  'code': 'create'
                },
                {
                  'code': 'update'
                }
              ],
              'updateCreate': false,
              'searchRevInclude': [
                'Provenance:target'
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
                  'definition': 'http://hl7.org/fhir/us/core/SearchParameter/us-core-allergyintolerance-patient',
                  'type': 'reference',
                  'documentation': 'Who the sensitivity is for. It is a required field if the _id field is not given.'
                },
                {
                  'name': 'clinical-status',
                  'definition': 'http://hl7.org/fhir/us/core/SearchParameter/us-core-allergyintolerance-clinical-status',
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
                  'documentation': "The maximum number of results to return in a page. Not honored when '_id' is set."
                },
                {
                  'name': 'date',
                  'definition': 'http://hl7.org/fhir/R4/SearchParameter/Appointment-date',
                  'type': 'date',
                  'documentation': 'A date or date range from which to find appointments. This or the '\
                                   "'-date-or-req-period' parameter must be set when using patient, practitioner or "\
                                   "location. The 'date' parameter may be provided once without a prefix or time "\
                                   'component to imply a date range or once without a prefix and with a time '\
                                   'component to search for appointments at a specific time. Alternately it may be '\
                                   "provided twice with 'le' and 'gt' prefixes to search for appointments within a "\
                                   'specific range. The date prefix pair must create a closed range.'
                },
                {
                  'name': '-date-or-req-period',
                  'type': 'date',
                  'documentation': 'A start date or requested period from which to find appointments. This or the '\
                                   "date' parameter must be set when using patient, practitioner or location. The "\
                                   "'-date-or-req-period' parameter may be provided once without a prefix or time "\
                                   'component to imply a date range or once without a prefix and with a time '\
                                   'component to search for appointments at a specific time. Alternately it may be '\
                                   "provided twice with 'le' and 'gt' prefixes to search for appointments within a "\
                                   'specific range. The date prefix pair must create a closed range.'
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
                                   "parameter or one of the 'patient', 'practitioner' or 'location' parameters must "\
                                   'be set.'
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
              'type': 'Binary',
              'interaction': [
                {
                  'code': 'read'
                }
              ],
              'operation': [
                {
                  'name': 'autogen-ccd-if',
                  'definition': 'https://fhir-ehr.cerner.com/r4/OperationDefinition/binary-autogen-ccd-if',
                  'documentation': 'Generate Continuity of Care Document (CCD)'
                }
              ]
            },
            {
              'type': 'CarePlan',
              'supportedProfile': [
                'http://hl7.org/fhir/us/core/StructureDefinition/us-core-careplan'
              ],
              'interaction': [
                {
                  'code': 'read'
                },
                {
                  'code': 'search-type'
                }
              ],
              'searchRevInclude': [
                'Provenance:target'
              ],
              'searchParam': [
                {
                  'name': '_id',
                  'definition': 'http://hl7.org/fhir/R4/SearchParameter/Resource-id',
                  'type': 'token',
                  'documentation': 'A single or comma separated list of CarePlan ids.'
                },
                {
                  'name': 'date',
                  'definition': 'http://hl7.org/fhir/us/core/SearchParameter/us-core-careplan-date',
                  'type': 'date',
                  'documentation': "A date range with which to find CarePlans. If used, the ‘date’ parameter must be "\
                                   "provided twice. Once with a 'ge' prefix representing the earliest date, and once "\
                                   "with a 'le’ prefix representing the latest date. The date prefix pair must create "\
                                   'a closed range.'
                },
                {
                  'name': 'patient',
                  'definition': 'http://hl7.org/fhir/us/core/SearchParameter/us-core-careplan-patient',
                  'type': 'reference',
                  'documentation': 'Who the careplan is for. It is a required field if the _id field is not given.'
                },
                {
                  'name': 'category',
                  'definition': 'http://hl7.org/fhir/us/core/SearchParameter/us-core-careplan-category',
                  'type': 'token',
                  'documentation': 'The category of the careplan. Category assess-plan is supported as of now.'
                },
                {
                  'name': '_count',
                  'definition': 'http://hl7.org/fhir/R4/SearchParameter/Resource-count',
                  'type': 'number',
                  'documentation': "The maximum number of results to return. Not honored when '_id' is set."
                }
              ]
            },
            {
              'type': 'CareTeam',
              'supportedProfile': [
                'http://hl7.org/fhir/us/core/StructureDefinition/us-core-careteam'
              ],
              'interaction': [
                {
                  'code': 'read'
                },
                {
                  'code': 'search-type'
                }
              ],
              'searchRevInclude': [
                'Provenance:target'
              ],
              'searchParam': [
                {
                  'name': '_id',
                  'definition': 'http://hl7.org/fhir/R4/SearchParameter/Resource-id',
                  'type': 'token',
                  'documentation': 'CareTeam id supports only the single id. It is a required field if the patient or '\
                                   'encounter fields are not given.'
                },
                {
                  'name': 'category',
                  'definition': 'http://hl7.org/fhir/R4/SearchParameter/CareTeam-category',
                  'type': 'token',
                  'documentation': 'The category of the careteam. Category Longitudinal (patient level) or Encounter '\
                                   'is supported as of now.'
                },
                {
                  'name': 'encounter',
                  'definition': 'http://hl7.org/fhir/R4/SearchParameter/clinical-encounter',
                  'type': 'reference',
                  'documentation': 'The Encounter level CareTeam are displayed.'
                },
                {
                  'name': 'patient',
                  'definition': 'http://hl7.org/fhir/us/core/SearchParameter/us-core-careteam-patient',
                  'type': 'reference',
                  'documentation': 'Who the careteam is for. It is a required field if the _id field is not given.'
                },
                {
                  'name': 'status',
                  'definition': 'http://hl7.org/fhir/us/core/SearchParameter/us-core-careteam-status',
                  'type': 'token',
                  'documentation': 'The status of the CareTeam.'
                }
              ]
            },
            {
              'type': 'ChargeItem',
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
                  'documentation': 'ChargeItem id supports only the single id. It is a required field if the account '\
                                   'or context fields are not given.'
                },
                {
                  'name': 'context',
                  'type': 'reference',
                  'documentation': "Encounter associated with the ChargeItem. If provided, the '-status' parameter "\
                                   'must also be provided. It is a required field if the _id or account fields are '\
                                   'not given.'
                },
                {
                  'name': 'account',
                  'type': 'reference',
                  'documentation': "Account associated with the ChargeItem. If provided, the '-status' parameter must "\
                                   'also be provided. It is a required field if the _id or context fields are not '\
                                   'given.'
                },
                {
                  'name': '-status',
                  'type': 'token',
                  'documentation': "The status of the ChargeItem. Must be set to 'billable'. Must be provided with "\
                                   'the context and account parameter.'
                },
                {
                  'name': '_count',
                  'definition': 'http://hl7.org/fhir/R4/SearchParameter/Resource-count',
                  'type': 'number',
                  'documentation': "The maximum number of results to return in a page. Not honored when '_id' is set."
                }
              ],
              'operation': [
                {
                  'name': 'credit',
                  'definition': 'https://fhir-ehr.cerner.com/r4/OperationDefinition/charge-item-credit',
                  'documentation': 'Creates an offsetting ChargeItem for an existing debit ChargeItem.'
                },
                {
                  'name': 'modify',
                  'definition': 'https://fhir-ehr.cerner.com/r4/OperationDefinition/charge-item-modify',
                  'documentation': 'Modifies an existing ChargeItem resulting in a newly created ChargeItem.'
                },
                {
                  'name': 'create',
                  'definition': 'https://fhir-ehr.cerner.com/r4/OperationDefinition/charge-item-create',
                  'documentation': 'Creates a charge event which can result in the creation of one or more ChargeItems.'
                }
              ]
            },
            {
              'type': 'Communication',
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
                  'documentation': 'A single or comma separated list of Communication ids. It is a required field if '\
                                   'the category, -email-status, received and recipient fields are not given.'
                },
                {
                  'name': 'category',
                  'definition': 'http://hl7.org/fhir/R4/SearchParameter/Communication-category',
                  'type': 'token',
                  'documentation': 'The message category. It is a required field if the _id field is not given. Must '\
                                   'be set with received, recipient and -email-status.'
                },
                {
                  'name': 'received',
                  'definition': 'http://hl7.org/fhir/R4/SearchParameter/Communication-received',
                  'type': 'date',
                  'documentation': 'When the message is received. It is a required field if the _id field is not '\
                                   'given. Must be set with category, recipient and -email-status. If used, the '\
                                   "‘received’ parameter may be provided once or twice. Once with a 'ge' prefix "\
                                   "representing the earliest received date, and/or once with a 'le’ prefix "\
                                   'representing the latest received date.'
                },
                {
                  'name': 'recipient',
                  'definition': 'http://hl7.org/fhir/R4/SearchParameter/Communication-recipient',
                  'type': 'reference',
                  'documentation': 'The recipient of the message. It is a required field if the _id field is not '\
                                   'given. Must be set with category, recipient and -email-status.'
                },
                {
                  'name': '-email-status',
                  'type': 'token',
                  'documentation': 'The email status of the message. It is a required field if the _id field is not '\
                                   'given. Must be set with category, received and recipient.'
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
              'searchRevInclude': [
                'Provenance:target'
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
                  'definition': 'http://hl7.org/fhir/us/core/SearchParameter/us-core-condition-patient',
                  'type': 'reference',
                  'documentation': 'Who has the condition. It is a required field if the subject or _id fields are '\
                                   'not given.'
                },
                {
                  'name': 'encounter',
                  'definition': 'http://hl7.org/fhir/R4/SearchParameter/Condition-encounter',
                  'type': 'reference',
                  'documentation': 'The encounter of the patient. Only encounter-diagnosis are returned.'
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
                  'definition': 'http://hl7.org/fhir/us/core/SearchParameter/us-core-condition-clinical-status',
                  'type': 'token',
                  'documentation': 'The clinical status of the condition.'
                },
                {
                  'name': 'category',
                  'definition': 'http://hl7.org/fhir/us/core/SearchParameter/us-core-condition-category',
                  'type': 'token',
                  'documentation': 'The category of the condition. Categories problem-list-item, encounter-diagnosis '\
                                   'and health-concern are supported as of now.'
                }
              ]
            },
            {
              'type': 'Consent',
              'interaction': [
                {
                  'code': 'read'
                },
                {
                  'code': 'search-type'
                }
              ],
              'searchInclude': [
                'Consent:actor',
                'Consent:patient'
              ],
              'searchParam': [
                {
                  'name': '_id',
                  'definition': 'http://hl7.org/fhir/R4/SearchParameter/Resource-id',
                  'type': 'token',
                  'documentation': 'A single or comma separated list of Consent ids.'
                },
                {
                  'name': 'patient',
                  'definition': 'http://hl7.org/fhir/R4/SearchParameter/clinical-patient',
                  'type': 'reference',
                  'documentation': 'Who the consent applies to. It is a required field if the _id field is not given.'
                },
                {
                  'name': 'actor',
                  'definition': 'http://hl7.org/fhir/R4/SearchParameter/Consent-actor',
                  'type': 'reference',
                  'documentation': 'Resource for the actor (or group, by role). It is a required field if the _id '\
                                   'field is not given.'
                },
                {
                  'name': 'patient.identifier',
                  'definition': 'http://hl7.org/fhir/R4/SearchParameter/Consent-patient.identifier',
                  'type': 'token',
                  'documentation': 'The patient.identifier allows to search by patient aliases. Federated Person '\
                                   'Principle, SSN, MRN etc... are supported as of now. It is a required field if the '\
                                   '_id field is not given.'
                },
                {
                  'name': 'actor.identifier',
                  'definition': 'http://hl7.org/fhir/R4/SearchParameter/Consent-actor.identifier',
                  'type': 'token',
                  'documentation': 'The actor.identifier allows to search by related person aliases. Federated Person '\
                                   'Principle is the only supported alias as of now. It is a required field if the '\
                                   '_id field is not given.'
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
                },
                {
                  'code': 'patch'
                },
                {
                  'code': 'delete'
                }
              ],
              'searchParam': [
                {
                  'name': 'patient',
                  'definition': 'http://hl7.org/fhir/R4/SearchParameter/Coverage-patient',
                  'type': 'reference',
                  'documentation': 'Retrieve coverages for a patient.'
                },
                {
                  'name': '-encounter',
                  'type': 'reference',
                  'documentation': 'Retrieve coverages for an encounter.'
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
              'searchRevInclude': [
                'Provenance:target'
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
                  'definition': 'http://hl7.org/fhir/us/core/SearchParameter/us-core-device-patient',
                  'type': 'reference',
                  'documentation': 'The patient to whom Device is affixed. It is a required field if the _id field is '\
                                   'not given.'
                }
              ]
            },
            {
              'type': 'DiagnosticReport',
              'supportedProfile': [
                'http://hl7.org/fhir/us/core/StructureDefinition/us-core-diagnosticreport-note',
                'http://hl7.org/fhir/us/core/StructureDefinition/us-core-diagnosticreport-lab'
              ],
              'interaction': [
                {
                  'code': 'read'
                },
                {
                  'code': 'search-type'
                }
              ],
              'searchRevInclude': [
                'Provenance:target'
              ],
              'searchParam': [
                {
                  'name': '_id',
                  'definition': 'http://hl7.org/fhir/R4/SearchParameter/Resource-id',
                  'type': 'token',
                  'documentation': 'A single or comma separated list of DiagnosticReport ids. It is a required field '\
                                   'if the patient field is not given.'
                },
                {
                  'name': 'category',
                  'definition': 'http://hl7.org/fhir/us/core/SearchParameter/us-core-diagnosticreport-category',
                  'type': 'token',
                  'documentation': 'Which diagnostic discipline/department created the report.'
                },
                {
                  'name': 'code',
                  'definition': 'http://hl7.org/fhir/us/core/SearchParameter/us-core-diagnosticreport-code',
                  'type': 'token',
                  'documentation': 'The code for the report.'
                },
                {
                  'name': 'encounter',
                  'definition': 'http://hl7.org/fhir/R4/SearchParameter/clinical-encounter',
                  'type': 'reference',
                  'documentation': 'The Encounter when the report was made.'
                },
                {
                  'name': 'patient',
                  'definition': 'http://hl7.org/fhir/us/core/SearchParameter/us-core-diagnosticreport-patient',
                  'type': 'reference',
                  'documentation': 'The subject of the report. It is a required field.'
                },
                {
                  'name': 'date',
                  'definition': 'http://hl7.org/fhir/us/core/SearchParameter/us-core-diagnosticreport-date',
                  'type': 'date',
                  'documentation': 'A date range with which to find Documents. A date parameter may be provided once '\
                                   'with or without prefix and time component to imply a date range. Alternately it '\
                                   "may be provided twice with 'le', 'lt', 'ge', or 'gt'  prefixes and time component "\
                                   'to search for procedures within a specific range. The date and prefix pairs must '\
                                   'create a closed range. Must be set with patient or subject.'
                },
                {
                  'name': '_count',
                  'definition': 'http://hl7.org/fhir/R4/SearchParameter/Resource-count',
                  'type': 'number',
                  'documentation': 'The maximum number of results to return in a page.'
                }
              ]
            },
            {
              'type': 'DocumentReference',
              'supportedProfile': [
                'http://hl7.org/fhir/us/core/StructureDefinition/us-core-documentreference'
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
              'searchRevInclude': [
                'Provenance:target'
              ],
              'searchParam': [
                {
                  'name': '_id',
                  'definition': 'http://hl7.org/fhir/us/core/SearchParameter/us-core-documentreference-id',
                  'type': 'token',
                  'documentation': 'A single or comma separated list of DocumentReference ids. It is a required field '\
                                   'if the patient field is not given.'
                },
                {
                  'name': 'patient',
                  'definition': 'http://hl7.org/fhir/us/core/SearchParameter/us-core-documentreference-patient',
                  'type': 'reference',
                  'documentation': 'The patient the document is about. It is a required field if the subject field is '\
                                   'not given.'
                },
                {
                  'name': 'encounter',
                  'definition': 'http://hl7.org/fhir/R4/SearchParameter/clinical-encounter',
                  'type': 'reference',
                  'documentation': 'The Encounter in which the document was created.'
                },
                {
                  'name': 'period',
                  'definition': 'http://hl7.org/fhir/us/core/SearchParameter/us-core-documentreference-period',
                  'type': 'date',
                  'documentation': "A date range with which to find Documents. If used, the 'period' parameter must "\
                                   "be provided twice. Once with a 'ge' prefix representing the earliest date, and "\
                                   "once with a 'lt' prefix representing the latest date. The period prefix pair must "\
                                   'create a closed range and cannot be equal to each other.'
                },
                {
                  'name': '_count',
                  'definition': 'http://hl7.org/fhir/R4/SearchParameter/Resource-count',
                  'type': 'number',
                  'documentation': 'The maximum number of results to return in a page.'
                },
                {
                  'name': 'type',
                  'definition': 'http://hl7.org/fhir/us/core/SearchParameter/us-core-documentreference-type',
                  'type': 'token',
                  'documentation': 'The kind of document (LOINC if possible).'
                },
                {
                  'name': 'category',
                  'definition': 'http://hl7.org/fhir/us/core/SearchParameter/us-core-documentreference-category',
                  'type': 'token',
                  'documentation': 'The categorization of document.'
                },
                {
                  'name': 'date',
                  'definition': 'http://hl7.org/fhir/us/core/SearchParameter/us-core-documentreference-date',
                  'type': 'date',
                  'documentation': 'It must be provided  once with a prefix to imply a date  range or without a '\
                                   'prefix to search for document(s) at a specific date. Alternately it may be '\
                                   "provided twice with `le`, `lt`, `ge`, or `gt` prefixes to search for document(s) "\
                                   'within specific range. The date and prefix pairs must create a closed range. For '\
                                   "a single 'date' occurrence, `time` component is optional but for two `date` "\
                                   "occurrences, must include `time` component."
                }
              ],
              'operation': [
                {
                  'name': 'USCoreFetchDocumentReferences',
                  'definition': 'http://hl7.org/fhir/us/core/OperationDefinition/docref',
                  'documentation': 'US Core Fetch DocumentReferences'
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
              'searchRevInclude': [
                'Provenance:target'
              ],
              'searchParam': [
                {
                  'name': '_id',
                  'definition': 'http://hl7.org/fhir/us/core/SearchParameter/us-core-encounter-id',
                  'type': 'token',
                  'documentation': 'A single or comma separated list of Encounter ids. It is a required field if the '\
                                   'account or identifier or -pageContext or patient or subject fields are not given.'
                },
                {
                  'name': '_count',
                  'definition': 'http://hl7.org/fhir/R4/SearchParameter/Resource-count',
                  'type': 'number',
                  'documentation': "The maximum number of results to return in a page. Not honored when '_id' is set."
                },
                {
                  'name': 'patient',
                  'definition': 'http://hl7.org/fhir/us/core/SearchParameter/us-core-encounter-patient',
                  'type': 'reference',
                  'documentation': 'The patient present at the encounter. It is a required field if the account or '\
                                   '_id or identifier or -pageContext or subject fields are not given.'
                },
                {
                  'name': 'subject',
                  'definition': 'http://hl7.org/fhir/R4/SearchParameter/Encounter-subject',
                  'type': 'reference',
                  'documentation': 'The patient present at the encounter. It is a required field if the account or '\
                                   '_id or identifier or -pageContext or patient fields are not given.'
                },
                {
                  'name': 'status',
                  'definition': 'http://hl7.org/fhir/us/core/SearchParameter/us-core-encounter-status',
                  'type': 'token',
                  'documentation': 'The status of the encounter. Must be set with patient.'
                },
                {
                  'name': 'date',
                  'definition': 'http://hl7.org/fhir/us/core/SearchParameter/us-core-encounter-date',
                  'type': 'date',
                  'documentation': 'A date parameter may be provided once with a prefix and time component to imply a '\
                                   "date range. Alternately it may be provided twice with 'le', 'lt', 'ge', or 'gt' "\
                                   'prefixes and time component to search for encounters within a specific range. The '\
                                   'date and prefix pairs must create a closed range. Must be set with patient or '\
                                   'subject.'
                },
                {
                  'name': 'identifier',
                  'definition': 'http://hl7.org/fhir/us/core/SearchParameter/us-core-encounter-identifier',
                  'type': 'token',
                  'documentation': "An encounter's identifier. It is a required field if the account or _id or "\
                                   '-pageContext or patient or subject fields are not given.'
                }
              ]
            },
            {
              'type': 'FamilyMemberHistory',
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
                  'documentation': 'A single or comma separated list of FamilyMemberHistory ids. It is a required '\
                                   'field if the patient field is not given.'
                },
                {
                  'name': 'patient',
                  'definition': 'http://hl7.org/fhir/R4/SearchParameter/clinical-patient',
                  'type': 'reference',
                  'documentation': 'Who the family member history is for. It is a required field if the _id field is '\
                                   'not given. It is a required field if the status parameter is provided.'
                },
                {
                  'name': 'status',
                  'definition': 'http://hl7.org/fhir/R4/SearchParameter/status',
                  'type': 'token',
                  'documentation': 'The status of the FamilyMemberHistory.'
                }
              ]
            },
            {
              'type': 'Goal',
              'supportedProfile': [
                'http://hl7.org/fhir/us/core/StructureDefinition/us-core-goal'
              ],
              'interaction': [
                {
                  'code': 'read'
                },
                {
                  'code': 'search-type'
                }
              ],
              'searchRevInclude': [
                'Provenance:target'
              ],
              'searchParam': [
                {
                  'name': '_id',
                  'definition': 'http://hl7.org/fhir/R4/SearchParameter/Resource-id',
                  'type': 'token',
                  'documentation': 'Goal id supports only the single id. It is a required field if the patient field '\
                                   'is not given.'
                },
                {
                  'name': 'patient',
                  'definition': 'http://hl7.org/fhir/us/core/SearchParameter/us-core-goal-patient',
                  'type': 'reference',
                  'documentation': 'Who has the goal is for. It is a required field if the _id field is not given.'
                },
                {
                  'name': 'target-date',
                  'definition': 'http://hl7.org/fhir/us/core/SearchParameter/us-core-goal-target-date',
                  'type': 'date',
                  'documentation': 'A date or date range from which to find Goals.'
                }
              ]
            },
            {
              'type': 'Group',
              'operation': [
                {
                  'name': 'export',
                  'definition': 'https://fhir-ehr.cerner.com/r4/OperationDefinition/group-export',
                  'documentation': 'Operation to obtain a detailed set of FHIR resources of diverse resource types '\
                                   'pertaining to all members of the specified Group'
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
                },
                {
                  'code': 'create'
                },
                {
                  'code': 'update'
                }
              ],
              'updateCreate': false,
              'searchRevInclude': [
                'Provenance:target'
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
                  'definition': 'http://hl7.org/fhir/us/core/SearchParameter/us-core-immunization-patient',
                  'type': 'reference',
                  'documentation': 'The patient for the vaccination record. It is a required field if the _id field '\
                                   'is not given.'
                },
                {
                  'name': 'date',
                  'definition': 'http://hl7.org/fhir/us/core/SearchParameter/us-core-immunization-date',
                  'type': 'date',
                  'documentation': 'Vaccination (non)-Administration Date.'
                },
                {
                  'name': 'target-disease',
                  'definition': 'http://hl7.org/fhir/us/core/SearchParameter/us-core-immunization-target-disease',
                  'type': 'token',
                  'documentation': 'A single or comma separated list of target diseases the dose is being '\
                                   'administered against.'
                }
              ]
            },
            {
              'type': 'InsurancePlan',
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
                  'documentation': 'A single or comma separated list of InsurancePlan ids.'
                },
                {
                  'name': 'owned-by',
                  'definition': 'http://hl7.org/fhir/R4/SearchParameter/InsurancePlan-owned-by',
                  'type': 'reference',
                  'documentation': 'The organization that is providing the health insurance product.'
                }
              ]
            },
            {
              'type': 'Location',
              'supportedProfile': [
                'http://hl7.org/fhir/us/core/StructureDefinition/us-core-location'
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
                  'documentation': 'A single or comma separated list of Location ids. It is a required field if the '\
                                   '-physicalType field is not given'
                },
                {
                  'name': '-physicalType',
                  'type': 'token',
                  'documentation': "The Location's physical type. It is a required field if the _id field is not given"
                },
                {
                  'name': 'identifier',
                  'definition': 'http://hl7.org/fhir/us/core/SearchParameter/us-core-location-identifier',
                  'type': 'token',
                  'documentation': "A location's identifier."
                },
                {
                  'name': 'address',
                  'type': 'string',
                  'documentation': 'A (part of the) address of the location'
                },
                {
                  'name': 'address-city',
                  'type': 'string',
                  'documentation': 'A city specified in an address. It is a required field if the address-state or '\
                                   'address-postalcode fields are not given'
                },
                {
                  'name': 'address-state',
                  'type': 'string',
                  'documentation': 'A state specified in an address'
                },
                {
                  'name': 'address-postalcode',
                  'type': 'string',
                  'documentation': 'A postal code specified in an address'
                },
                {
                  'name': 'name',
                  'type': 'string',
                  'documentation': "A portion of the location's name or alias"
                },
                {
                  'name': 'organization',
                  'type': 'reference',
                  'documentation': 'Searches for locations that are managed by the provided organization'
                }
              ]
            },
            {
              'type': 'MedicationAdministration',
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
                  'documentation': 'A single or comma separated list of MedicationAdministration ids.'
                },
                {
                  'name': 'patient',
                  'definition': 'http://hl7.org/fhir/R4/SearchParameter/medicationadministration-patient',
                  'type': 'reference',
                  'documentation': 'The identity of a patient to list administrations for. It is a required field if '\
                                   'the _id field is not given.'
                },
                {
                  'name': 'status',
                  'definition': 'http://hl7.org/fhir/R4/SearchParameter/medicationadministration-status',
                  'type': 'token',
                  'documentation': 'MedicationAdministration event status.'
                },
                {
                  'name': 'performer',
                  'definition': 'http://hl7.org/fhir/R4/SearchParameter/medicationadministration-performer',
                  'type': 'reference',
                  'documentation': 'The identity of the individual who administered the medication.'
                },
                {
                  'name': 'effective-time',
                  'definition': 'http://hl7.org/fhir/R4/SearchParameter/medicationadministration-effective-time',
                  'type': 'date',
                  'documentation': "A effective-time parameter may be provided once with 'le' or 'lt' or 'ge' or 'gt' "\
                                   'prefix and time component to imply a date range. Alternately it may be provided '\
                                   "twice with 'le', 'lt', 'ge', or 'gt' prefixes and time component to search for "\
                                   'medications administered within a specific range. The date and prefix pairs must '\
                                   'create a closed range.'
                }
              ]
            },
            {
              'type': 'MedicationRequest',
              'supportedProfile': [
                'http://hl7.org/fhir/us/core/StructureDefinition/us-core-medicationrequest'
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
              'searchRevInclude': [
                'Provenance:target'
              ],
              'searchParam': [
                {
                  'name': '_id',
                  'definition': 'http://hl7.org/fhir/R4/SearchParameter/Resource-id',
                  'type': 'token',
                  'documentation': 'A single or comma separated list of MedicationRequest ids.'
                },
                {
                  'name': 'patient',
                  'definition': 'http://hl7.org/fhir/us/core/SearchParameter/us-core-medicationrequest-patient',
                  'type': 'reference',
                  'documentation': 'The patient to return MedicationRequests for. It is a required field if the _id '\
                                   'field is not given.'
                },
                {
                  'name': 'intent',
                  'definition': 'http://hl7.org/fhir/us/core/SearchParameter/us-core-medicationrequest-intent',
                  'type': 'token',
                  'documentation': 'The intent of the MedicationRequest.'
                },
                {
                  'name': 'status',
                  'definition': 'http://hl7.org/fhir/us/core/SearchParameter/us-core-medicationrequest-status',
                  'type': 'token',
                  'documentation': 'The status of the MedicationRequest.'
                },
                {
                  'name': '_lastUpdated',
                  'definition': 'http://hl7.org/fhir/R4/SearchParameter/Resource-lastUpdated',
                  'type': 'date',
                  'documentation': 'When the resource version last changed.'
                },
                {
                  'name': '-timing-boundsPeriod',
                  'definition': 'http://hl7.org/fhir/R4/SearchParameter/Resource-dosageInstruction-timing-repeat-boundsPeriod',
                  'type': 'date',
                  'documentation': 'The date-time within the period the medication should be given to the patient. '\
                                   "Must be prefixed by 'ge'."
                },
                {
                  'name': '_count',
                  'definition': 'http://hl7.org/fhir/R4/SearchParameter/Resource-count',
                  'type': 'number',
                  'documentation': "The maximum number of results to return in a page. Not honored when '_id' is set."
                }
              ]
            },
            {
              'type': 'NutritionOrder',
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
                  'documentation': 'A single or comma separated list of NutritionOrder ids.'
                },
                {
                  'name': 'patient',
                  'definition': 'http://hl7.org/fhir/R4/SearchParameter/clinical-patient',
                  'type': 'reference',
                  'documentation': 'The patient to return NutritionOrders for. It is a required field if the _id '\
                                   'field is not given.'
                },
                {
                  'name': 'status',
                  'definition': 'http://hl7.org/fhir/R4/SearchParameter/NutritionOrder-status',
                  'type': 'token',
                  'documentation': 'The status of the NutritionOrder.'
                },
                {
                  'name': '_lastUpdated',
                  'definition': 'http://hl7.org/fhir/R4/SearchParameter/Resource-lastUpdated',
                  'type': 'date',
                  'documentation': 'When the resource version last changed.'
                },
                {
                  'name': '_count',
                  'definition': 'http://hl7.org/fhir/R4/SearchParameter/Resource-count',
                  'type': 'number',
                  'documentation': "The maximum number of results to return in a page. Not honored when '_id' is set."
                }
              ]
            },
            {
              'type': 'Observation',
              'supportedProfile': [
                'http://hl7.org/fhir/us/core/StructureDefinition/us-core-observation-lab',
                'http://hl7.org/fhir/us/core/StructureDefinition/us-core-bmi',
                'http://hl7.org/fhir/us/core/StructureDefinition/pediatric-weight-for-height',
                'http://hl7.org/fhir/us/core/StructureDefinition/us-core-pulse-oximetry',
                'http://hl7.org/fhir/us/core/StructureDefinition/us-core-smokingstatus',
                'http://hl7.org/fhir/us/core/StructureDefinition/us-core-blood-pressure',
                'http://hl7.org/fhir/us/core/StructureDefinition/us-core-body-height',
                'http://hl7.org/fhir/us/core/StructureDefinition/us-core-body-weight',
                'http://hl7.org/fhir/us/core/StructureDefinition/us-core-heart-rate',
                'http://hl7.org/fhir/us/core/StructureDefinition/us-core-respiratory-rate',
                'http://hl7.org/fhir/us/core/StructureDefinition/us-core-body-temperature',
                'http://hl7.org/fhir/us/core/StructureDefinition/us-core-head-circumference',
                'http://hl7.org/fhir/us/core/StructureDefinition/us-core-vital-signs',
                'http://hl7.org/fhir/us/core/StructureDefinition/pediatric-bmi-for-age',
                'http://hl7.org/fhir/us/core/StructureDefinition/head-occipital-frontal-circumference-percentile'
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
              'searchRevInclude': [
                'Provenance:target'
              ],
              'searchParam': [
                {
                  'name': '_id',
                  'definition': 'http://hl7.org/fhir/R4/SearchParameter/Resource-id',
                  'type': 'token',
                  'documentation': 'A single or comma separated list of Observation ids. It is a required field if '\
                                   'the patient field is not given.'
                },
                {
                  'name': 'patient',
                  'definition': 'http://hl7.org/fhir/us/core/SearchParameter/us-core-observation-patient',
                  'type': 'reference',
                  'documentation': 'The patient the observation is about. It is a required field if the subject field '\
                                   'is not given.'
                },
                {
                  'name': 'subject',
                  'definition': 'http://hl7.org/fhir/R4/SearchParameter/Observation-subject',
                  'type': 'reference',
                  'documentation': 'The patient subject the observation is about. It is a required field if the '\
                                   'patient field is not given.'
                },
                {
                  'name': 'category',
                  'definition': 'http://hl7.org/fhir/us/core/SearchParameter/us-core-observation-category',
                  'type': 'token',
                  'documentation': 'A single or comma separated list of classifications of the type of observation.'
                },
                {
                  'name': 'code',
                  'definition': 'http://hl7.org/fhir/us/core/SearchParameter/us-core-observation-code',
                  'type': 'token',
                  'documentation': 'A single or comma separated list of observation types.'
                },
                {
                  'name': 'date',
                  'definition': 'http://hl7.org/fhir/us/core/SearchParameter/us-core-observation-date',
                  'type': 'date',
                  'documentation': "A date or date range from which to find observations. The 'date' parameter may be "\
                                   'provided once without a prefix or time component to imply a date range or once '\
                                   'without a prefix and with a time component to search for observations at a '\
                                   "specific time. Alternately it may be provided twice with 'le', 'lt', 'ge', or "\
                                   "'gt' prefixes to search for observations within a specific range. The date and "\
                                   'prefix pairs must create a closed range.'
                },
                {
                  'name': '_lastUpdated',
                  'definition': 'http://hl7.org/fhir/R4/SearchParameter/Resource-lastUpdated',
                  'type': 'date',
                  'documentation': 'A date or date range used to search for observations which were last updated in '\
                                   "that period. The '_lastUpdated' parameter may be provided once without a prefix "\
                                   'or time component to imply a date range or once without a prefix and with a time '\
                                   'component to search for observations at a specific time. Alternately it may be '\
                                   "provided twice with 'le', 'lt', 'ge', or 'gt' prefixes to search for observations "\
                                   'within a specific range. The date and prefix pairs must create a closed range.'
                },
                {
                  'name': '_count',
                  'definition': 'http://hl7.org/fhir/R4/SearchParameter/Resource-count',
                  'type': 'number',
                  'documentation': 'The maximum number of results to return in a page.'
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
              'type': 'Organization',
              'supportedProfile': [
                'http://hl7.org/fhir/us/core/StructureDefinition/us-core-organization'
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
                }
              ],
              'searchParam': [
                {
                  'name': '_id',
                  'definition': 'http://hl7.org/fhir/R4/SearchParameter/Resource-id',
                  'type': 'token',
                  'documentation': 'A single or comma separated list of Organization ids.'
                },
                {
                  'name': 'identifier',
                  'definition': 'http://hl7.org/fhir/R4/SearchParameter/Organization-identifier',
                  'type': 'token',
                  'documentation': "The Organization's Identifier."
                },
                {
                  'name': 'type',
                  'definition': 'http://hl7.org/fhir/R4/SearchParameter/Organization-type',
                  'type': 'token',
                  'documentation': "The Organization's type."
                },
                {
                  'name': '_count',
                  'definition': 'http://hl7.org/fhir/R4/SearchParameter/Organization-count',
                  'type': 'number',
                  'documentation': 'The maximum number of results to return in a page.'
                },
                {
                  'name': 'name',
                  'definition': 'http://hl7.org/fhir/R4/SearchParameter/Organization-name',
                  'type': 'string',
                  'documentation': "The Organization's name."
                },
                {
                  'name': 'address',
                  'definition': 'http://hl7.org/fhir/R4/SearchParameter/Organization-address',
                  'type': 'string',
                  'documentation': "The Organization's address."
                }
              ],
              'operation': [
                {
                  'name': 'get-cg-for-mrcu',
                  'definition': 'https://fhir-ehr.cerner.com/r4/OperationDefinition/organization-get-cg-for-mrcu',
                  'documentation': 'Retrieves details for a caregiver organization given a care unit organization id.'
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
              'searchRevInclude': [
                'Provenance:target'
              ],
              'searchParam': [
                {
                  'name': '_id',
                  'definition': 'http://hl7.org/fhir/us/core/SearchParameter/us-core-patient-id',
                  'type': 'token',
                  'documentation': "A single or comma separated list of Patient ids. Either the '_id' parameter, or a "\
                                   "combination of 'identifier', 'birthdate', 'name', 'given', 'family', "\
                                   "'address-postalcode', 'phone', or 'email' parameters must be provided."
                },
                {
                  'name': 'identifier',
                  'definition': 'http://hl7.org/fhir/us/core/SearchParameter/us-core-patient-identifier',
                  'type': 'token',
                  'documentation': "A patient identifier. Either the '_id' parameter, or a combination of "\
                                   "'identifier', 'birthdate', 'name', 'given', 'family', 'address-postalcode', "\
                                   "'phone', or 'email' parameters must be provided."
                },
                {
                  'name': 'name',
                  'definition': 'http://hl7.org/fhir/us/core/SearchParameter/us-core-patient-name',
                  'type': 'string',
                  'documentation': "The beginning of any name of the patient. Either the '_id' parameter, or a "\
                                   "combination of 'identifier', 'birthdate', 'name', 'given', 'family', "\
                                   "'address-postalcode', 'phone', or 'email' parameters must be provided."
                },
                {
                  'name': 'given',
                  'definition': 'http://hl7.org/fhir/us/core/SearchParameter/us-core-patient-given',
                  'type': 'string',
                  'documentation': "The beginning of the given name of the patient. Either the '_id' parameter, or a "\
                                   "combination of 'identifier', 'birthdate', 'name', 'given', 'family', "\
                                   "'address-postalcode', 'phone', or 'email' parameters must be provided."
                },
                {
                  'name': 'family',
                  'definition': 'http://hl7.org/fhir/us/core/SearchParameter/us-core-patient-family',
                  'type': 'string',
                  'documentation': "The beginning of the family name of the patient. Either the '_id' parameter, or a "\
                                   "combination of 'identifier', 'birthdate', 'name', 'given', 'family', "\
                                   "'address-postalcode', 'phone', or 'email' parameters must be provided."
                },
                {
                  'name': 'address-postalcode',
                  'definition': 'http://hl7.org/fhir/R4/SearchParameter/individual-address-postalcode',
                  'type': 'string',
                  'documentation': "The postal code of the address of the patient. Either the '_id' parameter, or a "\
                                   "combination of 'identifier', 'birthdate', 'name', 'given', 'family', "\
                                   "'address-postalcode', 'phone', or 'email' parameters must be provided."
                },
                {
                  'name': 'birthdate',
                  'definition': 'http://hl7.org/fhir/us/core/SearchParameter/us-core-patient-birthdate',
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
                  'definition': 'http://hl7.org/fhir/us/core/SearchParameter/us-core-patient-gender',
                  'type': 'token',
                  'documentation': 'The administrative gender of the patient. Gender may only be provided if another '\
                                   "parameter other than '_id' is provided"
                },
                {
                  'name': '_count',
                  'definition': 'http://hl7.org/fhir/R4/SearchParameter/Resource-count',
                  'type': 'number',
                  'documentation': "The maximum number of results to return in a page. Not honored when '_id' or "\
                                   "'identifier' are set."
                }
              ],
              'operation': [
                {
                  'name': 'health-cards-issue',
                  'definition': 'https://spec.smarthealth.cards/artifacts/operation-patient-i-health-cards-issue.json',
                  'documentation': 'Issues verifiable health cards for the patient.'
                }
              ]
            },
            {
              'type': 'Person',
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
                  'documentation': 'A single or comma separated list of Person ids. It is a required field if the '\
                                   'identifier field is not given'
                },
                {
                  'name': 'identifier',
                  'definition': 'http://hl7.org/fhir/R4/SearchParameter/Person-identifier',
                  'type': 'token',
                  'documentation': "A person's Identifier. It is a required field if the _id field is not given"
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
                },
                {
                  'code': 'create'
                }
              ],
              'searchParam': [
                {
                  'name': '_id',
                  'definition': 'http://hl7.org/fhir/R4/SearchParameter/Resource-id',
                  'type': 'token',
                  'documentation': "A single or comma separated list of Practitioner ids. Either the '_id', "\
                                   "'identifier', 'name', 'active' or 'family' parameter, or a combination of 'given' "\
                                   "and 'family' parameters must be provided."
                },
                {
                  'name': 'identifier',
                  'definition': 'http://hl7.org/fhir/us/core/SearchParameter/us-core-practitioner-identifier',
                  'type': 'token',
                  'documentation': "A practitioner's Identifier. Either the '_id', 'identifier', 'name', 'active' or "\
                                   "'family' parameter, or a combination of 'given' and 'family' parameters must be "\
                                   'provided.'
                },
                {
                  'name': 'given',
                  'definition': 'http://hl7.org/fhir/R4/SearchParameter/individual-given',
                  'type': 'string',
                  'documentation': "The beginning of the given name of the practitioner. Either the '_id', "\
                                   "'identifier', 'name', 'active' or 'family' parameter, or a combination of 'given' "\
                                   "and 'family' parameters must be provided."
                },
                {
                  'name': 'family',
                  'definition': 'http://hl7.org/fhir/R4/SearchParameter/individual-family',
                  'type': 'string',
                  'documentation': "The beginning of the family name of the practitioner. Either the '_id', "\
                                   "'identifier', 'name', 'active' or 'family' parameter, or a combination of 'given' "\
                                   "and 'family' parameters must be provided."
                },
                {
                  'name': 'name',
                  'definition': 'http://hl7.org/fhir/R4/SearchParameter/individual-name',
                  'type': 'string',
                  'documentation': "The beginning of the first, last or middle name of the practitioner. Either the "\
                                   "'_id', 'identifier', 'name', 'active' or 'family' parameter, or a combination of "\
                                   "'given' and 'family' parameters must be provided."
                },
                {
                  'name': 'active',
                  'definition': 'http://hl7.org/fhir/R4/SearchParameter/Resource-active',
                  'type': 'token',
                  'documentation': "Whether the practitioner record is active. Either the '_id', 'identifier', "\
                                   "'name', 'active' or 'family' parameter, or a combination of 'given' and 'family' "\
                                   'parameters must be provided.'
                },
                {
                  'name': '_count',
                  'definition': 'http://hl7.org/fhir/R4/SearchParameter/Resource-count',
                  'type': 'number',
                  'documentation': "The maximum number of results to return in a page. Not honored when '_id' is set. "\
                                   "Either the '_id', 'identifier', 'name', 'active' or 'family' parameter, or a "\
                                   "combination of 'given' and 'family' parameters must be provided."
                }
              ]
            },
            {
              'type': 'Procedure',
              'supportedProfile': [
                'http://hl7.org/fhir/us/core/StructureDefinition/us-core-procedure'
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
                }
              ],
              'searchRevInclude': [
                'Provenance:target'
              ],
              'searchParam': [
                {
                  'name': '_id',
                  'definition': 'http://hl7.org/fhir/R4/SearchParameter/Resource-id',
                  'type': 'token',
                  'documentation': 'A single or comma separated list of Procedure ids. It is a required field if the '\
                                   'patient or subject fields are not given'
                },
                {
                  'name': 'patient',
                  'definition': 'http://hl7.org/fhir/us/core/SearchParameter/us-core-procedure-patient',
                  'type': 'reference',
                  'documentation': 'Search by subject - a patient. It is a required field if the _id or subject '\
                                   'fields are not given'
                },
                {
                  'name': 'subject',
                  'definition': 'http://hl7.org/fhir/R4/SearchParameter/clinical-patient',
                  'type': 'reference',
                  'documentation': 'Search by subject. It is a required field if the _id or patient fields are '\
                                   'not given'
                },
                {
                  'name': 'date',
                  'definition': 'http://hl7.org/fhir/us/core/SearchParameter/us-core-procedure-date',
                  'type': 'date',
                  'documentation': 'A date parameter may be provided once without a prefix or time component to imply '\
                                   'a date range or once without a prefix and with a time component. Alternately it '\
                                   "may be provided twice with 'le', 'lt', 'ge', or 'gt' prefixes to search for "\
                                   'procedures within a specific range. The date and prefix pairs must create a '\
                                   'closed range. Must be set with patient or subject.'
                }
              ]
            },
            {
              'type': 'Provenance',
              'supportedProfile': [
                'http://hl7.org/fhir/us/core/StructureDefinition/us-core-provenance'
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
                }
              ],
              'searchParam': [
                {
                  'name': '_id',
                  'definition': 'http://hl7.org/fhir/R4/SearchParameter/Resource-id',
                  'type': 'token',
                  'documentation': 'A single or comma separated list of Provenance ids. It is a required field if the '\
                                   'target field is not given'
                },
                {
                  'name': 'target',
                  'definition': 'http://hl7.org/fhir/R4/SearchParameter/Provenance-target',
                  'type': 'reference',
                  'documentation': 'The resource(s) the Provenance is associated with. It is a required field if the '\
                                   '_id field is not given'
                }
              ]
            },
            {
              'type': 'Questionnaire',
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
                  'documentation': 'A single or comma separated list of Questionnaire ids.'
                }
              ]
            },
            {
              'type': 'QuestionnaireResponse',
              'interaction': [
                {
                  'code': 'read'
                },
                {
                  'code': 'search-type'
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
                  'documentation': 'A single or comma separated list of QuestionnaireResponse ids. It is a required '\
                                   'field if the patient field is not given.'
                },
                {
                  'name': 'patient',
                  'definition': 'http://hl7.org/fhir/R4/SearchParameter/QuestionnaireResponse-patient',
                  'type': 'reference',
                  'documentation': 'The patient that is the subject of the questionnaire response. It is a required '\
                                   'field if the _id field is not given'
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
                  'documentation': 'A single or comma separated list of RelatedPerson ids. It is a required field if '\
                                   'the identifier or patient or -encounter fields are not given.'
                },
                {
                  'name': 'identifier',
                  'definition': 'http://hl7.org/fhir/R4/SearchParameter/Patient-identifier',
                  'type': 'token',
                  'documentation': 'An Identifier of the RelatedPerson. It is a required field if the id or patient '\
                                   'or -encounter fields are not given'
                },
                {
                  'name': 'patient',
                  'definition': 'http://hl7.org/fhir/R4/SearchParameter/clinical-patient',
                  'type': 'reference',
                  'documentation': 'The patient this related person is related to. It is a required field if the id '\
                                   'or identifier or -encounter fields are not given'
                },
                {
                  'name': '-encounter',
                  'type': 'reference',
                  'documentation': 'The encounter this related person is related to. It is a required field if the id '\
                                   'or identifier or patient fields are not given'
                },
                {
                  'name': '-relationship-level',
                  'type': 'token',
                  'documentation': "The resource's relationship to either the patient or encounter level. Must be "\
                                   'provided with Patient and Identifier searches.'
                }
              ]
            },
            {
              'type': 'Schedule',
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
                  'documentation': "A single or comma separated list of Schedule ids. The '_id' parameter must be set."
                }
              ]
            },
            {
              'type': 'ServiceRequest',
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
                  'documentation': 'A single or comma separated list of ServiceRequest ids.'
                },
                {
                  'name': 'patient',
                  'definition': 'http://hl7.org/fhir/R4/SearchParameter/clinical-patient',
                  'type': 'reference',
                  'documentation': 'The patient to return ServiceRequests for. It is a required field if the subject '\
                                   'or _id fields are not given.'
                },
                {
                  'name': 'subject',
                  'definition': 'http://hl7.org/fhir/R4/SearchParameter/ServiceRequest-subject',
                  'type': 'reference',
                  'documentation': 'Individual or Entity the service is ordered for. It is a required field if the '\
                                   'patient or _id fields are not given.'
                },
                {
                  'name': 'code',
                  'definition': 'http://hl7.org/fhir/R4/SearchParameter/clinical-code',
                  'type': 'token',
                  'documentation': 'What is being requested/ordered.'
                },
                {
                  'name': '_lastUpdated',
                  'definition': 'http://hl7.org/fhir/R4/SearchParameter/Resource-lastUpdated',
                  'type': 'date',
                  'documentation': 'When the resource version last changed.'
                },
                {
                  'name': '_count',
                  'definition': 'http://hl7.org/fhir/R4/SearchParameter/Resource-count',
                  'type': 'number',
                  'documentation': "The maximum number of results to return in a page. Not honored when '_id' is set."
                }
              ]
            },
            {
              'type': 'Slot',
              'interaction': [
                {
                  'code': 'read'
                },
                {
                  'code': 'search-type'
                },
                {
                  'code': 'patch'
                }
              ],
              'searchInclude': [
                'Slot:schedule',
                'Schedule:actor:Practitioner'
              ],
              'searchParam': [
                {
                  'name': '_id',
                  'definition': 'http://hl7.org/fhir/R4/SearchParameter/Resource-id',
                  'type': 'token',
                  'documentation': "A single or comma separated list of Slot ids. Either the '_id' parameter or "\
                                   "'service-type' must be set."
                },
                {
                  'name': 'start',
                  'definition': 'http://hl7.org/fhir/R4/SearchParameter/Slot-date',
                  'type': 'date',
                  'documentation': "A date or date range from which the slots are to be retrieved. The 'start' "\
                                   'parameter is required when service-type, schedule.actor, -location is provided. '\
                                   "When provided, must use both 'lt' and 'ge' prefixes to search for slots within a "\
                                   'specific range. Time component should be provided for both the instances. The '\
                                   'date and prefix pairs must create a closed range.'
                },
                {
                  'name': 'service-type',
                  'definition': 'http://hl7.org/fhir/R4/SearchParameter/Service-type',
                  'type': 'token',
                  'documentation': 'A single or comma separated list of appointment types that can be booked into the '\
                                   "slot. Either the '_id' parameter or 'service-type' must be set."
                },
                {
                  'name': 'schedule.actor',
                  'definition': 'http://hl7.org/fhir/R4/SearchParameter/Slot-schedule.actor',
                  'type': 'reference',
                  'documentation': 'A single or comma separated list of schedule actors. Must be Practitioner actors.'
                },
                {
                  'name': '-location',
                  'definition': 'http://hl7.org/fhir/R4/SearchParameter/Slot-location',
                  'type': 'reference',
                  'documentation': 'A single or comma separated list of Location references.'
                },
                {
                  'name': '_count',
                  'definition': 'http://hl7.org/fhir/R4/SearchParameter/Resource-count',
                  'type': 'number',
                  'documentation': 'The maximum number of results to return in a page. This value should be in the '\
                                   'range [5,200]. If no value is provided, a default page size of 50 will be used.'
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
      'revocation_endpoint': 'https://authorization.cerner.com/tenants/ec2458f2-1e24-41c8-b71b-0e701af7583d/'\
                        'protocols/oauth2/profiles/smart-v1/token/revoke',
      'token_endpoint_auth_methods_supported': [
        'client_secret_basic',
        'private_key_jwt'
      ],
      'token_endpoint_auth_signing_alg_values_supported': [
        'RS384',
        'ES384'
      ],
      'jwks_uri': 'https://authorization.cerner.com/jwk',
      'grant_types_supported': [
        'authorization_code',
        'client_credentials'
      ],
      'scopes_supported': [
        'launch',
        'profile',
        'fhirUser',
        'openid',
        'online_access',
        'offline_access',
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
        'user/ChargeItem.read',
        'patient/ChargeItem.read',
        'system/ChargeItem.read',
        'user/ChargeItem.write',
        'patient/ChargeItem.write',
        'system/ChargeItem.write',
        'user/Communication.read',
        'patient/Communication.read',
        'system/Communication.read',
        'user/Communication.write',
        'patient/Communication.write',
        'system/Communication.write',
        'user/Condition.read',
        'patient/Condition.read',
        'system/Condition.read',
        'user/Condition.write',
        'patient/Condition.write',
        'system/Condition.write',
        'user/Consent.read',
        'patient/Consent.read',
        'system/Consent.read',
        'user/Coverage.read',
        'patient/Coverage.read',
        'system/Coverage.read',
        'user/Coverage.write',
        'patient/Coverage.write',
        'system/Coverage.write',
        'user/Device.read',
        'patient/Device.read',
        'system/Device.read',
        'user/DiagnosticReport.read',
        'patient/DiagnosticReport.read',
        'system/DiagnosticReport.read',
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
        'user/FamilyMemberHistory.read',
        'patient/FamilyMemberHistory.read',
        'system/FamilyMemberHistory.read',
        'user/FamilyMemberHistory.write',
        'patient/FamilyMemberHistory.write',
        'system/FamilyMemberHistory.write',
        'user/Goal.read',
        'patient/Goal.read',
        'system/Goal.read',
        'user/Immunization.read',
        'patient/Immunization.read',
        'system/Immunization.read',
        'user/Immunization.write',
        'patient/Immunization.write',
        'system/Immunization.write',
        'user/InsurancePlan.read',
        'patient/InsurancePlan.read',
        'system/InsurancePlan.read',
        'user/Location.read',
        'system/Location.read',
        'user/MedicationAdministration.read',
        'patient/MedicationAdministration.read',
        'system/MedicationAdministration.read',
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
        'user/Questionnaire.read',
        'patient/Questionnaire.read',
        'system/Questionnaire.read',
        'user/QuestionnaireResponse.read',
        'patient/QuestionnaireResponse.read',
        'system/QuestionnaireResponse.read',
        'user/QuestionnaireResponse.write',
        'patient/QuestionnaireResponse.write',
        'system/QuestionnaireResponse.write',
        'user/RelatedPerson.read',
        'patient/RelatedPerson.read',
        'system/RelatedPerson.read',
        'user/RelatedPerson.write',
        'patient/RelatedPerson.write',
        'system/RelatedPerson.write',
        'user/Schedule.read',
        'patient/Schedule.read',
        'system/Schedule.read',
        'user/ServiceRequest.read',
        'patient/ServiceRequest.read',
        'system/ServiceRequest.read',
        'user/Slot.read',
        'patient/Slot.read',
        'system/Slot.read',
        'user/Slot.write',
        'patient/Slot.write',
        'system/Slot.write',
        'system/FinancialTransaction.write'
      ],
      'response_types_supported': [
        'code'
      ],
      'management_endpoint': 'https://authorization.cerner.com/tenants/'\
                             'ec2458f2-1e24-41c8-b71b-0e701af7583d/personas/provider/my-authorizations',
      'introspection_endpoint': 'https://authorization.cerner.com/tokeninfo',
      'capabilities': [
        'authorize-post',
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
        'permission-user',
        'permission-offline',
        'permission-online',
        'permission-v1',
        'health-cards'
      ]
    }.freeze

  end
end
