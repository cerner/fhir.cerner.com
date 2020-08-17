# frozen_string_literal: true

module Cerner
  module Resources

    SOARIAN_IMMUNIZATION_BUNDLE ||= {
      'resourceType': 'Bundle',
      'id': 'debcb450-dcf0-492d-8768-eb8360c159e2',
      'meta': {
        'lastUpdated': '2017-02-28T11:15:03.930-05:00'
      },
      'extension': [
        {
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
                'valueString': 'papi009'
              },
              {
                'url': 'Message',
                'valueString': 'This is the most current, known Immunization list and may not reflect the state '\
                               'of immunizations known at a previous date.'
              }
            ]
          }
        }
      ],
      'type': 'searchset',
      'link': [
        {
          'relation': 'self',
          'url': 'base-url/123abc/Immunization?patientId=52930295-B52D-4685-B922-DC5F181CF786&_format=json'
        }
      ],
      'entry': [
        {
          'resource': {
            'resourceType': 'Immunization',
            'text': {
              'status': 'additional',
              'div': '&lt;li ccdRefId=\'ZImmunizations.Immunizations.10400115510\'>&lt;b>FLU VAC TV 2015(18 '\
                     'YR+)RCM/PF&lt;/b> (FLUBLOK 2015-2016, ABBVIE US LLC, Lot # 124578AQ); Administered 2/28/2017 '\
                     '11:16 AM; 135 MCG = 0.5 ML, Intramuscular&lt;/li>'
            },
            'status': 'completed',
            'vaccineCode': {
              'coding': [
                {
                  'system': 'http://hl7.org/fhir/sid/cvx',
                  'code': '155',
                  'display': 'FLU VAC TV 2015(18 YR+)RCM/PF'
                },
                {
                  'system': 'http://hl7.org/fhir/sid/ndc',
                  'code': '42874-0015-10',
                  'display': 'FLU VAC TV 2015(18 YR+)RCM/PF'
                }
              ],
              'text': 'FLU VAC TV 2015(18 YR+)RCM/PF'
            },
            'patient': {
              'reference': 'Patient/52930295-B52D-4685-B922-DC5F181CF786'
            },
            'wasNotGiven': false,
            'reported': true
          }
        },
        {
          'resource': {
            'resourceType': 'Immunization',
            'text': {
              'status': 'additional',
              'div': '&lt;li ccdRefId=\'ZImmunizations.Immunizations.1040014511\'>&lt;b>Hep B, NOS&lt;/b> (ABBVIE US '\
                     'LLC, Lot # 124578A); Administered 2/28/2017 12:00 AM; 0.5 ml, Intramuscular&lt;/li>'
            },
            'status': 'completed',
            'vaccineCode': {
              'coding': [
                {
                  'system': 'http://hl7.org/fhir/sid/cvx',
                  'code': '45',
                  'display': 'Hep B, NOS'
                }
              ],
              'text': 'Hep B, NOS'
            },
            'patient': {
              'reference': 'Patient/52930295-B52D-4685-B922-DC5F181CF786'
            },
            'wasNotGiven': false,
            'reported': true
          }
        },
        {
          'resource': {
            'resourceType': 'Immunization',
            'text': {
              'status': 'additional',
              'div': '&lt;li ccdRefId=\'ZImmunizations.Immunizations.10400110612\'>&lt;b>DTaP, 5 pertussis '\
                     'antigens&lt;/b> Administered 10/5/2015 12:00 AM&lt;/li>'
            },
            'status': 'completed',
            'vaccineCode': {
              'coding': [
                {
                  'system': 'http://hl7.org/fhir/sid/cvx',
                  'code': '106',
                  'display': 'DTaP, 5 pertussis antigens'
                }
              ],
              'text': 'DTaP, 5 pertussis antigens'
            },
            'patient': {
              'reference': 'Patient/52930295-B52D-4685-B922-DC5F181CF786'
            },
            'wasNotGiven': false,
            'reported': true
          }
        },
        {
          'resource': {
            'resourceType': 'Immunization',
            'text': {
              'status': 'additional',
              'div': '&lt;li ccdRefId=\'ZImmunizations.Immunizations.1040012013\'>&lt;b>DTaP&lt;/b> Not Administered '\
                     '10/8/2014 12:00 AM; Patient decision&lt;/li>'
            },
            'status': 'completed',
            'vaccineCode': {
              'coding': [
                {
                  'system': 'http://hl7.org/fhir/sid/cvx',
                  'code': '20',
                  'display': 'DTaP'
                }
              ],
              'text': 'DTaP'
            },
            'patient': {
              'reference': 'Patient/52930295-B52D-4685-B922-DC5F181CF786'
            },
            'wasNotGiven': true,
            'reported': true
          }
        },
        {
          'resource': {
            'resourceType': 'Immunization',
            'text': {
              'status': 'additional',
              'div': '&lt;li ccdRefId=\'ZImmunizations.Immunizations.10400116614\'>&lt;b>influenza, intradermal, '\
                     'quadrivalent, PF&lt;/b> Not Administered 10/1/2014 12:00 AM; Parental decision&lt;/li>'
            },
            'status': 'completed',
            'vaccineCode': {
              'coding': [
                {
                  'system': 'http://hl7.org/fhir/sid/cvx',
                  'code': '166',
                  'display': 'influenza, intradermal, quadrivalent, PF'
                }
              ],
              'text': 'influenza, intradermal, quadrivalent, PF'
            },
            'patient': {
              'reference': 'Patient/52930295-B52D-4685-B922-DC5F181CF786'
            },
            'wasNotGiven': true,
            'reported': true
          }
        },
        {
          'resource': {
            'resourceType': 'Immunization',
            'text': {
              'status': 'additional',
              'div': '&lt;li ccdRefId=\'ZImmunizations.Immunizations.1040018815\'>&lt;b>influenza, NOS&lt;/b> '\
                     'Administered 5/10/2014 12:00 AM&lt;/li>'
            },
            'status': 'completed',
            'vaccineCode': {
              'coding': [
                {
                  'system': 'http://hl7.org/fhir/sid/cvx',
                  'code': '88',
                  'display': 'influenza, NOS'
                }
              ],
              'text': 'influenza, NOS'
            },
            'patient': {
              'reference': 'Patient/52930295-B52D-4685-B922-DC5F181CF786'
            },
            'wasNotGiven': false,
            'reported': true
          }
        },
        {
          'resource': {
            'resourceType': 'Immunization',
            'text': {
              'status': 'additional',
              'div': '&lt;li ccdRefId=\'ZImmunizations.Immunizations.1040013516\'>&lt;b>tetanus toxoid&lt;/b> '\
                     'Administered 10/2/2013 12:00 AM&lt;/li>'
            },
            'status': 'completed',
            'vaccineCode': {
              'coding': [
                {
                  'system': 'http://hl7.org/fhir/sid/cvx',
                  'code': '35',
                  'display': 'tetanus toxoid'
                }
              ],
              'text': 'tetanus toxoid'
            },
            'patient': {
              'reference': 'Patient/52930295-B52D-4685-B922-DC5F181CF786'
            },
            'wasNotGiven': false,
            'reported': true
          }
        },
        {
          'resource': {
            'resourceType': 'Immunization',
            'text': {
              'status': 'additional',
              'div': '&lt;li ccdRefId=\'ZImmunizations.Immunizations.10400111217\'>&lt;b>tetanus toxoid, NOS&lt;/b> '\
                     'Administered 1/4/2012 12:00 AM&lt;/li>'
            },
            'status': 'completed',
            'vaccineCode': {
              'coding': [
                {
                  'system': 'http://hl7.org/fhir/sid/cvx',
                  'code': '112',
                  'display': 'tetanus toxoid, NOS'
                }
              ],
              'text': 'tetanus toxoid, NOS'
            },
            'patient': {
              'reference': 'Patient/52930295-B52D-4685-B922-DC5F181CF786'
            },
            'wasNotGiven': false,
            'reported': true
          }
        }
      ]
    }.freeze

  end
end
