# frozen_string_literal: true

module Cerner
  module Resources

    SOARIAN_CARE_PLAN_ENTRY ||= {
      'resourceType': 'Bundle',
      'id': '09c9910c-2592-46f8-bf1c-bf3bbbee629a',
      'meta': {
        'lastUpdated': '2018-04-10T09:42:54.355-04:00'
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
                'valueString': 'papi026'
              },
              {
                'url': 'Message',
                'valueString': 'The information provided is the latest configured data available at the time of '\
                               'charting and may not be reflective of the current clinical state of the care plan. '\
                               'It is the responsibility of the patient or patient representative to confirm care '\
                               'plan status with appropriate care providers.'
              }
            ]
          }
        }
      ],
      'type': 'searchset',
      'link': [
        {
          'relation': 'self',
          'url': 'https://fhir-myrecord.sandboxcerner.com/dstu2/0e885770-571b-4c0c-b30f-21df9a058d0d/CarePlan'\
                 '?patientId=D4292B7B-AEDF-4CEF-B783-BD3AA1B0DD27&_format=json&page=2'
        },
        {
          'relation': 'next',
          'url': 'https://fhir-myrecord.sandboxcerner.com/dstu2/0e885770-571b-4c0c-b30f-21df9a058d0d/CarePlan'\
                 '?patientId=D4292B7B-AEDF-4CEF-B783-BD3AA1B0DD27&_format=json&page=3'
        }
      ],
      'entry': [
        {
          'resource': {
            'resourceType': 'CarePlan',
            'text': {
              'status': 'additional',
              'div': '&lt;ul ccdRefId="Zcombined_NRS03.Assessment.63413.35241">&lt;li>Assessment : &lt;HTML>&lt;HEAD>'\
                     '&lt;style type="text/css">BODY,TD,TH,BUTTON,INPUT,SELECT,TEXTAREA{FONT-SIZE: 10pt; FONT-FAMILY: '\
                     'Arial,Helvetica; COLOR: black;} P,DIV,UL,OL,BLOCKQUOTE{MARGIN-BOTTOM: 0px; MARGIN-TOP: 0px;} '\
                     'BODY{MARGIN: 5px;} &lt;/style>&lt;/HEAD>&lt;BODY> &lt;p style="MARGIN-BOTTOM: 0px; margin-top: '\
                     '0px" align="left">&nbsp;&lt;/p>&lt;font style="FONT-SIZE: 11pt"> &lt;p style="MARGIN-BOTTOM: '\
                     '0px; MARGIN-TOP: 0px">i. The patient was found to have Anemia and Dr Seven and his staff '\
                     'diagnosed the condition and treated Ms Rebecca for Anemia during the 2 day stay at Community '\
                     'Health Hospitals. Ms Rebecca recovered from Anemia during the stay and is being discharged in a '\
                     'stable condition. If there is fever greater than 101.5 F or onset of chest pain/breathlessness '\
                     'the patient is advised to contact emergency. &lt;/p>&lt;/font>&lt;/BODY>&lt;/HTML>&lt;/li>&lt;'\
                     '/ul>'
            },
            'identifier': [
              {
                'use': 'official',
                'value': 'Zcombined_NRS03.Assessment.63413.35241'
              }
            ],
            'subject': {
              'reference': 'Patient/7568F2F3-FC76-4185-A540-1DB56331A387'
            },
            'status': 'active'
          }
        },
        {
          'resource': {
            'resourceType': 'CarePlan',
            'text': {
              'status': 'additional',
              'div': '&lt;ul ccdRefId="Zcombined_NRS03.Goals.63413.35261.value.0">&lt;li>Goal : Need to gain more '\
                     'energy to do regular activities&lt;/li>&lt;/ul>'
            },
            'identifier': [
              {
                'use': 'official',
                'value': 'Zcombined_NRS03.Goals.63413.35261.value.0'
              }
            ],
            'subject': {
              'reference': 'Patient/7568F2F3-FC76-4185-A540-1DB56331A387'
            },
            'status': 'active'
          }
        },
        {
          'resource': {
            'resourceType': 'CarePlan',
            'text': {
              'status': 'additional',
              'div': '&lt;ul ccdRefId="Zcombined_NRS03.Goals.63413.35262.value.0">&lt;li>Goal : Negotiated Goal '\
                     'to keep Body Temperature at 98-99 degrees Fahrenheit with regular monitoring&lt;/li>&lt;/ul>'
            },
            'identifier': [
              {
                'use': 'official',
                'value': 'Zcombined_NRS03.Goals.63413.35262.value.0'
              }
            ],
            'subject': {
              'reference': 'Patient/7568F2F3-FC76-4185-A540-1DB56331A387'
            },
            'status': 'active'
          }
        },
        {
          'resource': {
            'resourceType': 'CarePlan',
            'text': {
              'status': 'additional',
              'div': '&lt;ul ccdRefId="Zcombined_NRS03.Health_Concerns.63413.35243">&lt;li>Health Concerns : &lt;HTML>'\
                     '&lt;HEAD>&lt;style type="text/css">BODY,TD,TH,BUTTON,INPUT,SELECT,TEXTAREA{FONT-SIZE: 10pt; '\
                     'FONT-FAMILY: Arial,Helvetica; COLOR: black;} P,DIV,UL,OL,BLOCKQUOTE{MARGIN-BOTTOM: 0px; '\
                     'MARGIN-TOP: 0px;} BODY{MARGIN: 5px;} &lt;/style>&lt;/HEAD>&lt;BODY> &lt;p '\
                     'style="MARGIN-BOTTOM: 0px; margin-top: 0px" align="left">&nbsp;&lt;/p>&lt;font '\
                     'style="FONT-SIZE: 11pt"> &lt;p style="MARGIN-BOTTOM: 0px; MARGIN-TOP: 0px">a. Chronic Sickness '\
                     'exhibited by patient &lt;/p> &lt;p style="MARGIN-BOTTOM: 0px; MARGIN-TOP: 0px">b. HealthCare '\
                     'Concerns refer to underlying clinical facts &lt;/p> &lt;p style="MARGIN-BOTTOM: 0px; '\
                     'MARGIN-TOP: 0px">i. Documented HyperTension problem &lt;/p> &lt;p style="MARGIN-BOTTOM: '\
                     '0px; MARGIN-TOP: 0px">ii. Documented HypoThyroidism problem &lt;/p> &lt;p style="MARGIN-BOTTOM: '\
                     '0px; MARGIN-TOP: 0px">iii. Watch Weight of patient &lt;/p> &lt;p style="MARGIN-BOTTOM: 0px; '\
                     'MARGIN-TOP: 0px">iv. Documented Anemia problem &lt;/p>&lt;/font>&lt;/BODY>&lt;/HTML>&lt;/li>'\
                     '&lt;/ul>'
            },
            'identifier': [
              {
                'use': 'official',
                'value': 'Zcombined_NRS03.Health_Concerns.63413.35243'
              }
            ],
            'subject': {
              'reference': 'Patient/7568F2F3-FC76-4185-A540-1DB56331A387'
            },
            'status': 'active'
          }
        },
        {
          'resource': {
            'resourceType': 'CarePlan',
            'text': {
              'status': 'additional',
              'div': '&lt;ul ccdRefId="Zcombined_NRS03.Plan_of_Treatment.63413.35268">&lt;li>Treatment Plan : '\
              '&lt;HTML>&lt;HEAD>&lt;style type="text/css">BODY,TD,TH,BUTTON,INPUT,SELECT,TEXTAREA{FONT-SIZE: 10pt; '\
              'FONT-FAMILY: Arial,Helvetica; COLOR: black;} P,DIV,UL,OL,BLOCKQUOTE{MARGIN-BOTTOM: 0px; MARGIN-TOP: '\
              '0px;} BODY{MARGIN: 5px;} &lt;/style>&lt;/HEAD>&lt;BODY> &lt;p style="MARGIN-BOTTOM: 0px; MARGIN-TOP: '\
              '0px">Laboratory Test: Urinalysis macro (dipstick) panel Test Code 24357-6 (LOINC) Date: 6/29/2015&lt;'\
              '/p> &lt;p style="MARGIN-BOTTOM: 0px; MARGIN-TOP: 0px">i. Schedule an appointment with Dr Seven after 1 '\
              'week for Follow up with Outpatient facility for Immunosuppressive therapy. &lt;/p>&lt;/BODY>&lt;/HTML>'\
              '&lt;/li>&lt;/ul>'
            },
            'identifier': [
              {
                'use': 'official',
                'value': 'Zcombined_NRS03.Plan_of_Treatment.63413.35268'
              }
            ],
            'subject': {
              'reference': 'Patient/7568F2F3-FC76-4185-A540-1DB56331A387'
            },
            'status': 'active'
          }
        }
      ]
    }.freeze

  end
end
