# frozen_string_literal: true

module Cerner
  module Resources
    R4_QUESTIONNAIRE_RESPONSE_ENTRY ||= {
      'resourceType': 'QuestionnaireResponse',
      'id': 'SH-12508041'
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
      'id': 'SH-12508041'
    }.freeze
  end
end
