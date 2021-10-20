# frozen_string_literal: true

module Cerner
  module Resources
    R4_QUESTIONNAIRE_RESPONSE_ENTRY ||= {
      'resourceType': 'QuestionnaireResponse',
      'id': 'SH-12508041',
      'questionnaire': 'https://fhir-open.cerner.com/r4/ec2458f2-1e24-41c8-b71b-0e701af7583d/Questionnaire/SH-12508041',
      'status': 'in-progress',
      'subject': {
        'reference': 'Patient/12508041'
      },
      'authored': '2019-10-25T14:57:43Z',
      'item': [
        {
          'id': '111',
          'linkId': '93',
          'text': 'Tobacco',
          'extension': [
            {
              'url': 'https://fhir-ehr.cerner.com/r4/StructureDefinition/note',
              'valueAnnotation': {
                'authorReference': {
                  'reference': 'Practitioner/109413936',
                  'display': 'Lombardi, Falco Shine'
                },
                'time': '2021-06-15T22:15:26.000Z',
                'text': 'category/group comment'
              }
            }
          ],
          'item': [
            {
              'linkId': '93-123',
              'text': 'Number of years:',
              'answer': [
                {
                  'valueQuantity': {
                    'value': '20',
                    'unit': 'year (iso1000)',
                    'system': 'http://unitsofmeasure.org',
                    'code': 'a'
                  }
                }
              ]
            },
            {
              'linkId': '93-456',
              'text': 'Tobacco use per day:',
              'answer': [
                {
                  'valueString': 'Answer text'
                }
              ]
            },
            {
              'linkId': '93-789',
              'text': 'Ready to change:',
              'extension': [
                {
                  'url': 'https://fhir-ehr.cerner.com/r4/StructureDefinition/choice-answer',
                  'valueBoolean': true
                }
              ],
              'answer': [
                {
                  'valueCoding': {
                    'system': 'https://fhir.cerner.com/ec2458f2-1e24-41c8-b71b-0e701af7583d/nomenclature',
                    'code': '960439',
                    'display': 'Yes'
                  }
                },
                {
                  'valueString': 'Other answer text'
                }
              ]
            }
          ]
        }
      ]
    }.freeze

    R4_QUESTIONNAIRE_RESPONSE_BUNDLE ||= {
      'resourceType': 'Bundle',
      'id': '902e1b49-b9c4-4786-b90b-c9612d478f2a',
      'type': 'searchset',
      'link': [
        {
          'relation': 'self',
          'url': 'https://fhir-open.cerner.com/r4/ec2458f2-1e24-41c8-b71b-0e701af7583d/QuestionnaireResponse?_id=SH-12508041'
        }
      ],
      'entry': [
        {
          'fullUrl': 'https://fhir-open.cerner.com/r4/ec2458f2-1e24-41c8-b71b-0e701af7583d/QuestionnaireResponse/SH-12508041',
          'resource': R4_QUESTIONNAIRE_RESPONSE_ENTRY
        }
      ]
    }.freeze

    R4_QUESTIONNAIRE_RESPONSE_UPDATE ||= {
      'resourceType': 'QuestionnaireResponse',
      'id': 'SH-12508041',
      'questionnaire': 'https://fhir-ehr-code.cerner.com/r4/ec2458f2-1e24-41c8-b71b-0e701af7583d/Questionnaire/SH-12508041',
      'status': 'in-progress',
      'subject': {
        'reference': 'Patient/12508041'
      },
      'item': [
        {
          'id': '111',
          'linkId': '93',
          'extension': [
            {
              'url': 'https://fhir-ehr.cerner.com/r4/StructureDefinition/note',
              'valueAnnotation': {
                'text': 'category/group comment'
              }
            }
          ],
          'item': [
            {
              'linkId': '93-123',
              'answer': [
                {
                  'valueQuantity': {
                    'value': '20',
                    'unit': 'year (iso1000)',
                    'system': 'http://unitsofmeasure.org',
                    'code': 'a'
                  }
                }
              ]
            },
            {
              'linkId': '93-456',
              'answer': [
                {
                  'valueString': 'Answer text'
                }
              ]
            },
            {
              'linkId': '93-789',
              'extension': [
                {
                  'url': 'https://fhir-ehr.cerner.com/r4/StructureDefinition/choice-answer',
                  'valueBoolean': true
                }
              ],
              'answer': [
                {
                  'valueCoding': {
                    'system': 'https://fhir.cerner.com/ec2458f2-1e24-41c8-b71b-0e701af7583d/nomenclature',
                    'code': '960439'
                  }
                },
                {
                  'valueString': 'Other answer text'
                }
              ]
            }
          ]
        }
      ]
    }.freeze
  end
end
