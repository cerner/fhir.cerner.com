# frozen_string_literal: true

module Cerner
  module Resources

    # TODO: All need updated.

    R4_ACCOUNT_READ ||= {
      'resourceType': 'Account',
      'id': 'G2572738',
      'text': {
        'status': 'generated',
        'div': '&lt;div xmlns=&quot;http://www.w3.org/1999/xhtml&quot;&gt;&lt;p&gt;&lt;b&gt;Account&lt;/b&gt;&lt;'\
               '/p&gt;&lt;p&gt;&lt;b&gt;Account Type&lt;/b&gt;: guarantor-balance&lt;/p&gt;&lt;p&gt;&lt;b&gt;Service '\
               'Period Start Date&lt;/b&gt;: Aug  5, 2019  5:00 A.M. UTC&lt;/p&gt;&lt;p&gt;&lt;b&gt;Service Period '\
               'End Date&lt;/b&gt;: Aug  6, 2019  4:59 A.M. UTC&lt;/p&gt;&lt;/div&gt;'
      },
      'extension': [
        {
          'url': 'https://fhir-ehr.cerner.com/r4/StructureDefinition/account-balance',
          'valueMoney': {
            'value': '1250.00',
            'currency': 'USD'
          }
        },
        {
          'url': 'https://fhir-ehr.cerner.com/r4/StructureDefinition/account-state',
          'valueCodeableConcept': {
            'coding': [
              {
                'system': 'https://fhir.cerner.com/ec2458f2-1e24-41c8-b71b-0e701af7583d/codeSet/24451',
                'code': '629234',
                'display': 'Ready to bill',
                'userSelected': true
              }
            ],
            'text': 'Ready to bill'
          }
        }
      ],
      'status': 'active',
      'type': {
        'text': 'guarantor-balance'
      },
      'servicePeriod': {
        'start': '2019-08-05T05:00:00Z',
        'end': '2019-08-06T04:59:59Z'
      },
      'partOf': {
        'reference': 'Account/F1131724'
      }
    }.freeze

    R4_ACCOUNT_SEARCH ||= {
      'resourceType': 'Bundle',
      'id': '4d239408-a451-436e-a55a-f7e5427f62f6',
      'type': 'searchset',
      'total': 1,
      'link': [
        {
          'relation': 'self',
          'url': 'https://fhir-open.cerner.com/r4/ec2458f2-1e24-41c8-b71b-0e701af7583d/Account?_id=F703726'
        }
      ],
      'entry': [
        {
          'fullUrl': 'https://fhir-open.cerner.com/r4/ec2458f2-1e24-41c8-b71b-0e701af7583d/Account/F703726',
          'resource': {
            'resourceType': 'Account',
            'id': 'F703726',
            'text': {
              'status': 'generated',
              'div': '&lt;div xmlns=&quot;http://www.w3.org/1999/xhtml&quot;&gt;&lt;p&gt;&lt;b&gt;Account&lt;'\
                     '/b&gt;&lt;/p&gt;&lt;p&gt;&lt;b&gt;Account Type&lt;/b&gt;: financial-account&lt;/p&gt;&lt;'\
                     'p&gt;&lt;b&gt;Service Period Start Date&lt;/b&gt;: Sep 27, 2013  4:12 P.M. UTC&lt;/p&gt;&lt;'\
                     'p&gt;&lt;b&gt;Account Number&lt;/b&gt;: 10000381&lt;/p&gt;&lt;/div&gt;'
            },
            'identifier': [
              {
                'use': 'usual',
                'system': 'https://fhir.cerner.com/accountnumber',
                'value': '10000381'
              }
            ],
            'status': 'active',
            'type': {
              'coding': [
                {
                  'system': 'http://terminology.hl7.org/CodeSystem/v3-ActCode',
                  'code': 'ACCTRECEIVABLE',
                  'display': 'account receivable'
                }
              ],
              'text': 'financial-account'
            },
            'subject': [
              {
                'reference': 'Patient/1914010'
              }
            ],
            'servicePeriod': {
              'start': '2013-09-27T16:12:15Z'
            },
            'owner': {
              'reference': 'Organization/647851'
            }
          }
        }
      ]
    }.freeze

    R4_ACCOUNT_SEARCH_STATEMENT ||= {
      'resourceType': 'Bundle',
      'id': '43d52c34-385f-4871-889d-f974b2422fab',
      'type': 'searchset',
      'total': 1,
      'link': [
        {
          'relation': 'self',
          'url': 'https://fhir-open.cerner.com/r4/ec2458f2-1e24-41c8-b71b-0e701af7583d/Account?patient=6330017&'\
                 'identifier=https%3A%2F%2Ffhir.cerner.com%2Fec2458f2-1e24-41c8-b71b-0e701af7583d%2FcodeSet%2F28200'\
                 '%7C68002&type=statement'
        }
      ],
      'entry': [
        {
          'fullUrl': 'https://fhir-open.cerner.com/r4/ec2458f2-1e24-41c8-b71b-0e701af7583d/Account/S2580833',
          'resource': {
            'resourceType': 'Account',
            'id': 'S2580833',
            'text': {
              'status': 'generated',
              'div': '&lt;div xmlns=\&quot;http://www.w3.org/1999/xhtml\&quot;&gt;&lt;p&gt;&lt;b&gt;Account&lt;'\
                     '/b&gt;&lt;/p&gt;&lt;p&gt;&lt;b&gt;Account Type&lt;/b&gt;: statement&lt;/p&gt;&lt;p&gt;&lt;'\
                     'b&gt;Service Period Start Date&lt;/b&gt;: Aug 13, 2019  3:01 P.M. UTC&lt;/p&gt;&lt;p&gt;&lt;'\
                     'b&gt;Statement Number&lt;/b&gt;: 68002&lt;/p&gt;&lt;p&gt;&lt;b&gt;Guarantor&lt;/b&gt;: '\
                     '6330015-6330017&lt;/p&gt;&lt;/div&gt;'
            },
            'extension': [
              {
                'url': 'https://fhir-ehr.cerner.com/r4/StructureDefinition/account-balance',
                'valueMoney': {
                  'value': '2000.00',
                  'currency': 'USD'
                }
              },
              {
                'url': 'https://fhir-ehr.cerner.com/r4/StructureDefinition/account-state',
                'valueCodeableConcept': {
                  'coding': [
                    {
                      'system': 'https://fhir.cerner.com/ec2458f2-1e24-41c8-b71b-0e701af7583d/codeSet/4002640',
                      'code': '20752989',
                      'display': 'Pending',
                      'userSelected': true
                    }
                  ],
                  'text': 'Pending'
                }
              },
              {
                'url': 'https://fhir-ehr.cerner.com/r4/StructureDefinition/account-related-parts',
                'valueReference': {
                  'reference': 'Account/G2572738'
                }
              }
            ],
            'identifier': [
              {
                'use': 'usual',
                'system': 'https://fhir.cerner.com/ec2458f2-1e24-41c8-b71b-0e701af7583d/codeSet/28200',
                'value': '68002'
              }
            ],
            'status': 'active',
            'type': {
              'text': 'statement'
            },
            'subject': [
              {
                'reference': 'Patient/6330017'
              }
            ],
            'servicePeriod': {
              'start': '2019-08-13T15:01:17Z'
            },
            'owner': {
              'reference': 'Organization/1259855'
            },
            'guarantor': [
              {
                'party': {
                  'reference': 'RelatedPerson/6330015-6330017'
                }
              }
            ]
          }
        }
      ]
    }.freeze

    R4_ACCOUNT_SEARCH_GUARANTOR ||= {
      'resourceType': 'Bundle',
      'id': '0b8ec3aa-805f-486c-8fb6-61a252d0a8cb',
      'type': 'searchset',
      'total': 3,
      'link': [
        {
          'relation': 'self',
          'url': 'https://fhir-open.cerner.com/r4/ec2458f2-1e24-41c8-b71b-0e701af7583d/Account'\
                 '?-guarantor=6330015-6330015&type=financial-account'
        }
      ],
      'entry': [
        {
          'fullUrl': 'https://fhir-open.cerner.com/r4/ec2458f2-1e24-41c8-b71b-0e701af7583d/Account/F1127724',
          'resource': {
            'resourceType': 'Account',
            'id': 'F1127724',
            'text': {
              'status': 'generated',
              'div': '&lt;div xmlns=\&quot;http://www.w3.org/1999/xhtml\&quot;&gt;&lt;p&gt;&lt;b&gt;Account&lt;'\
                     '/b&gt;&lt;/p&gt;&lt;p&gt;&lt;b&gt;Account Type&lt;/b&gt;: financial-account&lt;/p&gt;&lt;'\
                     'p&gt;&lt;b&gt;Service Period Start Date&lt;/b&gt;: Aug  2, 2019  7:14 P.M. UTC&lt;/p&gt;&lt;'\
                     'p&gt;&lt;b&gt;Account Number&lt;/b&gt;: 344&lt;/p&gt;&lt;p&gt;&lt;b&gt;Guarantor&lt;/b&gt;: '\
                     '6330014-6330015&lt;/p&gt;&lt;p&gt;&lt;b&gt;Guarantor&lt;/b&gt;: 6330015-6330015&lt;/p&gt;&lt;'\
                     '/div&gt;'
            },
            'identifier': [
              {
                'use': 'usual',
                'system': 'https://fhir.cerner.com/accountnumber',
                'value': '344'
              }
            ],
            'status': 'active',
            'type': {
              'coding': [
                {
                  'system': 'http://terminology.hl7.org/CodeSystem/v3-ActCode',
                  'code': 'ACCTRECEIVABLE',
                  'display': 'account receivable'
                }
              ],
              'text': 'financial-account'
            },
            'subject': [
              {
                'reference': 'Patient/6330015'
              }
            ],
            'servicePeriod': {
              'start': '2019-08-02T19:14:17Z'
            },
            'owner': {
              'reference': 'Organization/1259855'
            },
            'guarantor': [
              {
                'party': {
                  'reference': 'RelatedPerson/6330014-6330015'
                },
                'period': {
                  'start': '2019-08-02T05:00:00Z'
                }
              },
              {
                'party': {
                  'reference': 'RelatedPerson/6330015-6330015'
                },
                'period': {
                  'start': '2019-08-02T05:00:00Z'
                }
              }
            ]
          }
        },
        {
          'fullUrl': 'https://fhir-open.cerner.com/r4/ec2458f2-1e24-41c8-b71b-0e701af7583d/Account/F1131724',
          'resource': {
            'resourceType': 'Account',
            'id': 'F1131724',
            'text': {
              'status': 'generated',
              'div': '&lt;div xmlns=\&quot;http://www.w3.org/1999/xhtml\&quot;&gt;&lt;p&gt;&lt;b&gt;Account&lt;'\
                     '/b&gt;&lt;/p&gt;&lt;p&gt;&lt;b&gt;Account Type&lt;/b&gt;: financial-account&lt;/p&gt;&lt;'\
                     'p&gt;&lt;b&gt;Service Period Start Date&lt;/b&gt;: Aug 12, 2019 10:29 P.M. UTC&lt;/p&gt;&lt;'\
                     'p&gt;&lt;b&gt;Account Number&lt;/b&gt;: 343&lt;/p&gt;&lt;p&gt;&lt;b&gt;Guarantor&lt;/b&gt;: '\
                     '6330015-6330017&lt;/p&gt;&lt;/div&gt;'
            },
            'identifier': [
              {
                'use': 'usual',
                'system': 'https://fhir.cerner.com/accountnumber',
                'value': '343'
              }
            ],
            'status': 'active',
            'type': {
              'coding': [
                {
                  'system': 'http://terminology.hl7.org/CodeSystem/v3-ActCode',
                  'code': 'ACCTRECEIVABLE',
                  'display': 'account receivable'
                }
              ],
              'text': 'financial-account'
            },
            'subject': [
              {
                'reference': 'Patient/6330017'
              }
            ],
            'servicePeriod': {
              'start': '2019-08-12T22:29:39Z'
            },
            'owner': {
              'reference': 'Organization/1259855'
            },
            'guarantor': [
              {
                'party': {
                  'reference': 'RelatedPerson/6330015-6330017'
                },
                'period': {
                  'start': '2019-08-02T05:00:00Z'
                }
              }
            ]
          }
        },
        {
          'fullUrl': 'https://fhir-open.cerner.com/r4/ec2458f2-1e24-41c8-b71b-0e701af7583d/Account/F1131725',
          'resource': {
            'resourceType': 'Account',
            'id': 'F1131725',
            'text': {
              'status': 'generated',
              'div': '&lt;div xmlns=\&quot;http://www.w3.org/1999/xhtml\&quot;&gt;&lt;p&gt;&lt;b&gt;Account&lt;/'\
                     'b&gt;&lt;/p&gt;&lt;p&gt;&lt;b&gt;Account Type&lt;/b&gt;: financial-account&lt;/p&gt;&lt;p&gt;'\
                     '&lt;b&gt;Service Period Start Date&lt;/b&gt;: Aug 12, 2019 10:59 P.M. UTC&lt;/p&gt;&lt;p&gt;'\
                     '&lt;b&gt;Account Number&lt;/b&gt;: 347&lt;/p&gt;&lt;p&gt;&lt;b&gt;Guarantor&lt;/b&gt;: '\
                     '6330014-6330016&lt;/p&gt;&lt;p&gt;&lt;b&gt;Guarantor&lt;/b&gt;: 6330015-6330016&lt;/p&gt;&lt;'\
                     '/div&gt;'
            },
            'identifier': [
              {
                'use': 'usual',
                'system': 'https://fhir.cerner.com/accountnumber',
                'value': '347'
              }
            ],
            'status': 'active',
            'type': {
              'coding': [
                {
                  'system': 'http://terminology.hl7.org/CodeSystem/v3-ActCode',
                  'code': 'ACCTRECEIVABLE',
                  'display': 'account receivable'
                }
              ],
              'text': 'financial-account'
            },
            'subject': [
              {
                'reference': 'Patient/6330016'
              }
            ],
            'servicePeriod': {
              'start': '2019-08-12T22:59:16Z'
            },
            'owner': {
              'reference': 'Organization/1259855'
            },
            'guarantor': [
              {
                'party': {
                  'reference': 'RelatedPerson/6330014-6330016'
                },
                'period': {
                  'start': '2019-08-02T05:00:00Z'
                }
              },
              {
                'party': {
                  'reference': 'RelatedPerson/6330015-6330016'
                },
                'period': {
                  'start': '2019-08-02T05:00:00Z'
                }
              }
            ]
          }
        }
      ]
    }.freeze
  end
end
