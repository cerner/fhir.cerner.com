# frozen_string_literal: true

module Cerner
  module Resources

    R4_STRUCTURE_DEFINITION_BUNDLE ||= {
      'resourceType': 'StructureDefinition',
      'id': 'account-balance',
      'url': 'https://fhir-ehr.cerner.com/r4/StructureDefinition/account-balance',
      'name': 'AccountBalance',
      'title': 'Account Balance',
      'status': 'active',
      'date': '2019-08-13',
      'publisher': 'Cerner',
      'description': 'Represents the sum of all credits and all debits associated with the account. '\
                     'May be positive, zero or negative.',
      'fhirVersion': '4.0.0',
      'kind': 'complex-type',
      'abstract': false,
      'type': 'Extension',
      'context': [
        {
          'type': 'element',
          'expression': 'Account'
        }
      ],
      'baseDefinition': 'http://hl7.org/fhir/StructureDefinition/Extension',
      'snapshot': {
        'element': [
          {
            'id': 'Extension',
            'path': 'Extension',
            'short': 'Represents the account balance',
            'definition': 'Represents the sum of all credits and all debits associated with the account. '\
                          'May be positive, zero or negative.',
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
            'id': 'Extension.id',
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
            'id': 'Extension.extension',
            'path': 'Extension.extension',
            'sliceName': 'extension',
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
            'id': 'Extension.url',
            'path': 'Extension.url',
            'representation': [
              'xmlAttr'
            ],
            'short': 'identifies the meaning of the extension',
            'definition': 'Source of the definition for the extension code - a logical name or a URL.',
            'comment': 'The definition may point directly to a computable or human-readable definition of the '\
                       'extensibility codes, or it may be a logical URI as declared in some other specification. The '\
                       'definition should be version specific.  This will ideally be the URI for the Resource Profile '\
                       'defining the extension, with the code for the extension after a #.',
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
            'fixedUri': 'https://fhir-ehr.cerner.com/r4/StructureDefinition/account-balance'
          },
          {
            'id': 'Extension.valueMoney',
            'path': 'Extension.valueMoney',
            'short': 'Value of extension',
            'definition': 'Value of extension - may be a resource or one of a constrained set of the data '\
                          'types (see Extensibility in the spec for list).',
            'min': 1,
            'max': '1',
            'base': {
              'path': 'Extension.value[x]',
              'min': 0,
              'max': '1'
            },
            'type': [
              {
                'code': 'Money'
              }
            ]
          }
        ]
      },
      'differential': {
        'element': [
          {
            'id': 'Extension',
            'path': 'Extension',
            'short': 'Represents the account balance',
            'definition': 'Represents the sum of all credits and all debits associated with the account. '\
                          'May be positive, zero or negative.',
            'min': 0,
            'max': '1',
            'type': [
              {
                'code': 'Extension'
              }
            ]
          },
          {
            'id': 'Extension.extension',
            'path': 'Extension.extension',
            'sliceName': 'extension',
            'max': '0'
          },
          {
            'id': 'Extension.url',
            'path': 'Extension.url',
            'type': [
              {
                'code': 'uri'
              }
            ],
            'fixedUri': 'https://fhir-ehr.cerner.com/r4/StructureDefinition/account-balance'
          },
          {
            'id': 'Extension.value[x]',
            'path': 'Extension.value[x]',
            'min': 1,
            'type': [
              {
                'code': 'Money'
              }
            ]
          }
        ]
      }
    }.freeze

  end
end
