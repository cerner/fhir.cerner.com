# frozen_string_literal: true

module Cerner
  module Resources
    R4_QUESTIONNAIRE_ENTRY ||= {
      'resourceType': 'Questionnaire',
      'id': 'SH-12508041',
      'name': 'Social_History',
      'title': 'Social History',
      'status': 'active',
      'subjectType': [
        'Patient'
      ],
      'item': [
        {
          'linkId': '93',
          'text': 'Tobacco',
          'type': 'group',
          'item': [
            {
              'linkId': '93-6930356',
              'text': 'Tobacco use per day:',
              'type': 'text',
              'required': false,
              'repeats': false,
              'maxLength': 255
            },
            {
              'linkId': '93-6930316',
              'text': 'Number of years:',
              'type': 'integer',
              'required': false,
              'repeats': false
            },
            {
              'linkId': '93-6930360',
              'text': 'Started at age:',
              'type': 'decimal',
              'required': false,
              'repeats': false
            },
            {
              'linkId': '93-6930364',
              'text': 'Stopped at age:',
              'type': 'decimal',
              'required': false,
              'repeats': false
            },
            {
              'linkId': '93-6930372',
              'text': 'Ready to change:',
              'type': 'choice',
              'required': false,
              'repeats': false,
              'answerOption': [
                {
                  'valueCoding': {
                    'system': 'https://fhir.cerner.com/a758f80e-aa74-4118-80aa-98cc75846c76/nomenclature',
                    'code': '960439',
                    'display': 'Yes'
                  }
                },
                {
                  'valueCoding': {
                    'system': 'https://fhir.cerner.com/a758f80e-aa74-4118-80aa-98cc75846c76/nomenclature',
                    'code': '960441',
                    'display': 'No'
                  }
                }
              ]
            },
            {
              'linkId': '93-6930376',
              'text': 'Concerns about tobacco use in household:',
              'type': 'open-choice',
              'required': false,
              'repeats': false,
              'maxLength': 255,
              'answerOption': [
                {
                  'valueCoding': {
                    'system': 'https://fhir.cerner.com/a758f80e-aa74-4118-80aa-98cc75846c76/nomenclature',
                    'code': '960439',
                    'display': 'Yes'
                  }
                },
                {
                  'valueCoding': {
                    'system': 'https://fhir.cerner.com/a758f80e-aa74-4118-80aa-98cc75846c76/nomenclature',
                    'code': '960441',
                    'display': 'No'
                  }
                }
              ]
            },
            {
              'linkId': '93-6930380',
              'text': 'Total pack years:',
              'type': 'decimal',
              'required': false,
              'repeats': false
            },
            {
              'extension': [
                {
                  'valueInteger': 2,
                  'url': 'http://hl7.org/fhir/StructureDefinition/maxDecimalPlaces'
                }
              ],
              'linkId': '93-4356884',
              'text': 'Weight',
              'type': 'decimal',
              'required': false,
              'repeats': false,
              'maxLength': 6
            },
            {
              'linkId': '93-comment',
              'text': 'Comment:',
              'type': 'text',
              'required': false,
              'repeats': false
            }
          ]
        }
      ]
    }.freeze

    R4_QUESTIONNAIRE_BUNDLE ||= {
      'resourceType': 'Bundle',
      'id': '902e1b49-b9c4-4786-b90b-c9612d478f2a',
      'type': 'searchset',
      'link': [
        {
          'relation': 'self',
          'url': 'https://fhir-open.cerner.com/r4/ec2458f2-1e24-41c8-b71b-0e701af7583d/Questionnaire?_id=SH-12508041'
        }
      ],
      'entry': [
        {
          'fullUrl': 'https://fhir-open.cerner.com/r4/ec2458f2-1e24-41c8-b71b-0e701af7583d/Questionnaire/SH-12508041',
          'resource': R4_QUESTIONNAIRE_ENTRY
        }
      ]
    }.freeze
  end
end
