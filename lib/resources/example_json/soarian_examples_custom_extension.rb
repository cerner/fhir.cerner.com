# frozen_string_literal: true

module Cerner
  module Resources
    SOARIAN_CUSTOM_EXTENSION ||= {
      'url': 'http://cerner.hs.fhir.com/StructureDefinition/bundle-result-messages',
      'valueExtension': {
        'url': 'http://cerner.hs.fhir.com/StructureDefinition/bundle-result-messages',
        'extension': [
          {
            'url': 'Severity',
            'valueString': 'info'
          },
          {
            'url': 'Code',
            'valueString': 'papi006'
          },
          {
            'url': 'Message',
            'valueString': 'No relevant problems exist.'
          }
        ]
      }
    }.freeze
  end
end
