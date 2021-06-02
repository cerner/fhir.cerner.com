# frozen_string_literal: true

module Cerner
  module Resources

    R4_OPERATION_DEFINITION_BUNDLE ||= {
      'resourceType': 'OperationDefinition',
      'id': 'binary-autogen-ccd-if',
      'url': 'https://fhir-ehr.cerner.com/r4/OperationDefinition/binary-autogen-ccd-if',
      'name': 'GenerateContinuityOfCareDocument',
      'title': 'Generate Continuity of Care Document (CCD)',
      'status': 'active',
      'kind': 'operation',
      'date': '2019-01-18',
      'publisher': 'Cerner',
      'description': "Generates a copy of a patient's Continuity of Care Document (CCD) as a Binary",
      'code': 'autogen-ccd-if',
      'resource': [
        'Binary'
      ],
      'system': false,
      'type': true,
      'instance': false,
      'parameter': [
        {
          'name': 'patient',
          'use': 'in',
          'min': 1,
          'max': '1',
          'documentation': 'The id of the patient that is the subject of the generated Continuity of Care '\
                           'Document (CCD).',
          'type': 'id'
        },
        {
          'name': 'start',
          'use': 'in',
          'min': 0,
          'max': '1',
          'documentation': 'The start of the date range for which the Continuity of Care Document (CCD) is to be '\
                           'generated. If no start date is provided, then the document will be generated with all '\
                           'records up to the end or current date.',
          'type': 'date'
        },
        {
          'name': 'end',
          'use': 'in',
          'min': 0,
          'max': '1',
          'documentation': 'The end of the date range for which the Continuity of Care Document (CCD) is to be '\
                           'generated. If no end date is provided, then the document will be generated with all '\
                           'records up to the current date.',
          'type': 'date'
        },
        {
          'name': 'result',
          'use': 'out',
          'min': 1,
          'max': '1',
          'documentation': 'Binary for the generated Continuity of Care Document (CCD)',
          'type': 'Binary'
        }
      ]
    }.freeze

  end
end
