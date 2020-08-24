# frozen_string_literal: true

module Cerner
  module Resources
    SOARIAN_FHIR_LINK ||= {
      'type': 'searchset',
      'link': [
        {
          'relation': 'self',
          'url': 'http://fhir-myrecord.sandboxcerner.com/dstu2/Observation?patientId=2A39DA0B-61D8-4F95-BE00-9CA30EE01819&_format=json&page=2'
        },
        {
          'relation': 'next',
          'url': 'http://fhir-myrecord.sandboxcerner.com/dstu2/Observation?patientId=2A39DA0B-61D8-4F95-BE00-9CA30EE01819&_format=json&page=3'
        }
      ]
    }.freeze
  end
end
