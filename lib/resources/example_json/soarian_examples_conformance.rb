# frozen_string_literal: true

module Cerner
  module Resources

    SOARIAN_METADATA ||= {
      'resourceType': 'Conformance',
      'publisher': 'Cerner Corporation',
      'date': '2017-03-15T11:54:23-04:00',
      'copyright': 'Copyright © Cerner Health Services, Inc. All rights reserved. This document contains confidential '\
                 'and/or proprietary information belonging to Cerner Health Services, Inc. and/or its related '\
                 'affiliates (Cerner) which may not be reproduced or transmitted in any form or by any means without '\
                 'the express written consent of Cerner. The Applications may contain embedded third party software '\
                 "including free and open source software (FOSS). Soarian's FOSS manual provides details and "\
                 'limitations that apply.',
      'kind': 'capability',
      'software': {
        'name': 'Soarian Clinicals CCDS API',
        'version': '01.00.0000'
      },
      'fhirVersion': '1.0.2',
      'acceptUnknown': 'extensions',
      'format': [
        'application/xml+fhir',
        'application/json+fhir'
      ],
      'rest': [
        {
          'mode': 'server',
          'security': {
            'extension': [
              {
                'url': 'http://cerner.hs.fhir.com/StructureDefinition/oauth-uris',
                'extension': [
                  {
                    'url': 'token',
                    'valueUri': 'https://authorization.sandboxcerner.com/tenants/45343c0c-3f93-4721-874a-258fc4bae3a4'\
                                '/protocols/oauth2/profiles/smart-v1/token'
                  },
                  {
                    'url': 'authorize',
                    'valueUri': 'https://authorization.sandboxcerner.com/tenants/45343c0c-3f93-4721-874a-258fc4bae3a4'\
                                '/protocols/oauth2/profiles/smart-v1/personas/patient/authorize'
                  }
                ]
              },
              {
                'url': 'http://cerner.hs.fhir.com/StructureDefinition/SoarianIdLinking-uris',
                'extension': [
                  {
                    'url': 'token',
                    'valueUri': 'https://authorization.sandboxcerner.com/tenants/45343c0c-3f93-4721-874a-258fc4bae3a4'\
                                '/protocols/oauth2/profiles/soarian-identity-linking-v1/token'
                  },
                  {
                    'url': 'authorize',
                    'valueUri': 'https://authorization.sandboxcerner.com/tenants/45343c0c-3f93-4721-874a-258fc4bae3a4'\
                                '/protocols/oauth2/profiles/soarian-identity-linking-v1/personas/patient/authorize'
                  }
                ]
              }
            ],
            'description': 'OAuth2 with SMART extensions'
          },
          'resource': [
            {
              'type': 'AllergyIntolerance',
              'profile': {
                'reference': 'http://hl7.org/fhir/profiles/AllergyIntolerance'
              },
              'interaction': [
                {
                  'code': 'search-type'
                }
              ],
              'searchParam': [
                {
                  'name': 'patientId',
                  'type': 'string',
                  'documentation': 'http://fhir.cerner.com/soarian/dstu2'
                }
              ]
            },
            {
              'type': 'CarePlan',
              'profile': {
                'reference': 'http://hl7.org/fhir/profiles/CarePlan'
              },
              'interaction': [
                {
                  'code': 'search-type'
                }
              ],
              'searchParam': [
                {
                  'name': 'patientId',
                  'type': 'string',
                  'documentation': 'http://fhir.cerner.com/soarian/dstu2'
                },
                {
                  'name': 'date',
                  'type': 'date',
                  'documentation': 'http://fhir.cerner.com/soarian/dstu2'
                }
              ]
            },
            {
              'type': 'Condition',
              'profile': {
                'reference': 'http://hl7.org/fhir/profiles/Condition'
              },
              'interaction': [
                {
                  'code': 'search-type'
                }
              ],
              'searchParam': [
                {
                  'name': 'patientId',
                  'type': 'string',
                  'documentation': 'http://fhir.cerner.com/soarian/dstu2'
                }
              ]
            },
            {
              'type': 'Device',
              'profile': {
                'reference': 'http://hl7.org/fhir/profiles/Device'
              },
              'interaction': [
                {
                  'code': 'search-type'
                }
              ],
              'searchParam': [
                {
                  'name': 'patientId',
                  'type': 'string',
                  'documentation': 'http://fhir.cerner.com/soarian/dstu2'
                },
                {
                  'name': 'date',
                  'type': 'date',
                  'documentation': 'http://fhir.cerner.com/soarian/dstu2'
                }
              ]
            },
            {
              'type': 'DiagnosticReport',
              'profile': {
                'reference': 'http://hl7.org/fhir/profiles/DiagnosticReport'
              },
              'interaction': [
                {
                  'code': 'search-type'
                }
              ],
              'searchParam': [
                {
                  'name': 'patientId',
                  'type': 'string',
                  'documentation': 'http://fhir.cerner.com/soarian/dstu2'
                },
                {
                  'name': 'date',
                  'type': 'date',
                  'documentation': 'http://fhir.cerner.com/soarian/dstu2'
                }
              ]
            },
            {
              'type': 'DocumentReference',
              'profile': {
                'reference': 'http://hl7.org/fhir/profiles/DocumentReference'
              },
              'interaction': [
                {
                  'code': 'search-type'
                }
              ],
              'searchParam': [
                {
                  'name': 'attachment',
                  'type': 'string',
                  'documentation': 'http://fhir.cerner.com/soarian/dstu2'
                },
                {
                  'name': 'patientId',
                  'type': 'string',
                  'documentation': 'http://fhir.cerner.com/soarian/dstu2'
                },
                {
                  'name': 'patientId',
                  'type': 'string',
                  'documentation': 'http://fhir.cerner.com/soarian/dstu2'
                },
                {
                  'name': 'date',
                  'type': 'date',
                  'documentation': 'http://fhir.cerner.com/soarian/dstu2'
                }
              ]
            },
            {
              'type': 'Immunization',
              'profile': {
                'reference': 'http://hl7.org/fhir/profiles/Immunization'
              },
              'interaction': [
                {
                  'code': 'search-type'
                }
              ],
              'searchParam': [
                {
                  'name': 'patientId',
                  'type': 'string',
                  'documentation': 'http://fhir.cerner.com/soarian/dstu2'
                }
              ]
            },
            {
              'type': 'MedicationStatement',
              'profile': {
                'reference': 'http://hl7.org/fhir/profiles/MedicationStatement'
              },
              'interaction': [
                {
                  'code': 'search-type'
                }
              ],
              'searchParam': [
                {
                  'name': 'patientId',
                  'type': 'string',
                  'documentation': 'http://fhir.cerner.com/soarian/dstu2'
                }
              ]
            },
            {
              'type': 'Observation',
              'profile': {
                'reference': 'http://hl7.org/fhir/profiles/Observation'
              },
              'interaction': [
                {
                  'code': 'search-type'
                }
              ],
              'searchParam': [
                {
                  'name': 'patientId',
                  'type': 'string',
                  'documentation': 'http://fhir.cerner.com/soarian/dstu2'
                },
                {
                  'name': 'date',
                  'type': 'date',
                  'documentation': 'http://fhir.cerner.com/soarian/dstu2'
                }
              ]
            },
            {
              'type': 'OperationDefinition',
              'profile': {
                'reference': 'http://hl7.org/fhir/profiles/OperationDefinition'
              },
              'interaction': [
                {
                  'code': 'read'
                }
              ]
            },
            {
              'type': 'Patient',
              'profile': {
                'reference': 'http://hl7.org/fhir/profiles/Patient'
              },
              'interaction': [
                {
                  'code': 'search-type'
                }
              ],
              'searchParam': [
                {
                  'name': 'patientId',
                  'type': 'string',
                  'documentation': 'http://fhir.cerner.com/soarian/dstu2'
                }
              ]
            },
            {
              'type': 'Procedure',
              'profile': {
                'reference': 'http://hl7.org/fhir/profiles/Procedure'
              },
              'interaction': [
                {
                  'code': 'search-type'
                }
              ],
              'searchParam': [
                {
                  'name': 'patientId',
                  'type': 'string',
                  'documentation': 'http://fhir.cerner.com/soarian/dstu2'
                },
                {
                  'name': 'date',
                  'type': 'date',
                  'documentation': 'http://fhir.cerner.com/soarian/dstu2'
                }
              ]
            },
            {
              'type': 'StructureDefinition',
              'profile': {
                'reference': 'http://hl7.org/fhir/profiles/StructureDefinition'
              },
              'interaction': [
                {
                  'code': 'read'
                },
                {
                  'code': 'search-type'
                }
              ]
            }
          ]
        }
      ]
    }.freeze
  end
end
