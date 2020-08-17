# frozen_string_literal: true

module Cerner
  module Resources

    DSTU2_STRUCTURE_DEFINITION_BUNDLE ||= {
      'resourceType': 'StructureDefinition',
      'id': 'patient-friendly-display',
      'url': 'https://fhir-ehr.cerner.com/dstu2/StructureDefinition/patient-friendly-display',
      'name': 'Patient-Friendly Display',
      'status': 'draft',
      'publisher': 'Cerner',
      'date': '2016-12-13',
      'description': 'An expression of the original string in terminology that patients should be able to understand',
      'fhirVersion': '1.0.2',
      'kind': 'datatype',
      'constrainedType': 'Extension',
      'abstract': false,
      'contextType': 'datatype',
      'context': [
        'string'
      ],
      'base': 'http://hl7.org/fhir/StructureDefinition/Extension',
      'snapshot': {
        'element': [
          {
            'path': 'Extension',
            'short': 'String equivalent with patient-friendly terminology',
            'definition': 'An expression of the original string in terminology that patients should be able to '\
                          'understand',
            'min': 0,
            'max': '1',
            'base': {
              'path': 'Extension',
              'min': 0,
              'max': '*'
            },
            'type': [
              {
                'code': 'Extension'
              }
            ]
          },
          {
            'path': 'Extension.id',
            'representation': [
              'xmlAttr'
            ],
            'short': 'xml:id (or equivalent in JSON)',
            'definition': 'unique id for the element within a resource (for internal references).',
            'min': 0,
            'max': '1',
            'base': {
              'path': 'Extension.id',
              'min': 0,
              'max': '1'
            },
            'type': [
              {
                'code': 'id'
              }
            ]
          },
          {
            'path': 'Extension.extension',
            'name': 'extension',
            'short': 'Extension',
            'definition': 'An Extension',
            'min': 0,
            'max': '0',
            'base': {
              'path': 'Extension.extension',
              'min': 0,
              'max': '*'
            },
            'type': [
              {
                'code': 'Extension'
              }
            ]
          },
          {
            'path': 'Extension.url',
            'representation': [
              'xmlAttr'
            ],
            'short': 'identifies the meaning of the extension',
            'definition': 'Source of the definition for the extension code - a logical name or a URL.',
            'comments': 'The definition may point directly to a computable or human-readable definition of the '\
                        'extensibility codes, or it may be a logical URI as declared in some other specification. '\
                        'The definition should be version specific.  This will ideally be the URI for the Resource '\
                        'Profile defining the extension, with the code for the extension after a #.',
            'min': 1,
            'max': '1',
            'base': {
              'path': 'Extension.url',
              'min': 1,
              'max': '1'
            },
            'type': [
              {
                'code': 'uri'
              }
            ],
            'fixedUri': 'https://fhir-ehr.cerner.com/dstu2/StructureDefinition/patient-friendly-display'
          },
          {
            'path': 'Extension.valueString',
            'short': 'Value of extension',
            'definition': 'Value of extension - may be a resource or one of a constrained set of the data types '\
                          '(see Extensibility in the spec for list).',
            'min': 1,
            'max': '1',
            'base': {
              'path': 'Extension.value[x]',
              'min': 0,
              'max': '1'
            },
            'type': [
              {
                'code': 'string'
              }
            ]
          }
        ]
      },
      'differential': {
        'element': [
          {
            'path': 'Extension',
            'short': 'String equivalent with patient-friendly terminology',
            'definition': 'An expression of the original string in terminology that patients should be able to '\
                          'understand',
            'min': 0,
            'max': '1',
            'type': [
              {
                'code': 'Extension'
              }
            ]
          },
          {
            'path': 'Extension.extension',
            'name': 'extension',
            'max': '0'
          },
          {
            'path': 'Extension.url',
            'type': [
              {
                'code': 'uri'
              }
            ],
            'fixedUri': 'https://fhir-ehr.cerner.com/dstu2/StructureDefinition/patient-friendly-display'
          },
          {
            'path': 'Extension.value[x]',
            'min': 1,
            'type': [
              {
                'code': 'string'
              }
            ]
          }
        ]
      }
    }.freeze

  end
end
