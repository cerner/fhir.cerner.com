# frozen_string_literal: true

module Cerner
  module Resources

    R4_HEALTH_CARDS_ISSUE_REQUEST ||= {
      'resourceType': 'Parameters',
      'parameter': [
        {
          'name': 'credentialType',
          'valueUri': 'https://smarthealth.cards#health-card'
        },
        {
          'name': 'credentialType',
          'valueUri': 'https://smarthealth.cards#covid19'
        },
        {
          'name': '_since',
          'valueDateTime': '2020-04-01'
        }
      ]
    }.freeze

    R4_HEALTH_CARDS_RESPONSE ||= {
      'resourceType': 'Parameters',
      'parameter': [
        {
          'name': 'verifiableCredential',
          # rubocop:disable Layout/LineLength
          'valueString': 'eyJhbGciOiJFUzI1NiIsInppcCI6IkRFRiIsImtpZCI6Ik4ybWFHOHFPaElUZV96eVBxY3JDYTZMVF9tVzE4WnRGUHkwOWNHQUIyNHcifQ.3ZJPb9QwEMW_Chqu-edsdr3NjZYKKhWE6JYL2oPjTHaN7DiynRVLle_OOLtFINoeOCL54pnxz-89-wGU91DDPoTB13ne7ZVLzdGhtK7NJLoeXSatyV2Voyyr5borU4ZllVZMrtOGsyYtkBdMdHy5XrSQQN90ULNVueR8sVgtEjhIqB8gHAeE-uuvm7wRLuxR6LDPpHCtf33apHFDmOfnlDFjr36IoGz_4qC0B9WyC9gmIB222Acl9N3YfEMZoqRo9gs6Hzk1VFmRFcSL1cuxbzXGGYfejk7iZpYP50ZytgPSak20kxK6wB3JI5FHre-dpoHH83VEP26eAH8iO3Q-5icMniDCKE08eHdze3n9eUO9nTpgH1N8c3tzdU2FO9hOZK9RZP2tCJHELniRMpayFUxT8qQW9rKWmz8D9kGE0c9mzaAxYHyeg5BS9Xhl25kgbav63SzbH31Ac_5T9C57zTPrdvPXyr1qc3n4TgA5n4Sy4DBtpwSGcwCznA4d9lHb7_nRkJVydHMrmt0oc0KULC0WKVsTVtvwcTQNOmrwNV9VVBvQddaZWCN9Qgbr4jWt8oMWMeAPpEW_em_9oILQFNv2ueTK_zC58u_kqnK54uxfo6M1TT8B.ErkeyFvKawfR5UkTvPxF2MIUD058AG5yqRDE2oavtpUhYlLGUyN87gk72ljjat3cQaBNWfu9U8TWVk2T-oR9Hw'
          # rubocop:enable Layout/LineLength
        },
        {
          'name': 'verifiableCredential',
          # rubocop:disable Layout/LineLength
          'valueString': 'eyJhbGciOiJFUzI1NiIsInppcCI6IkRFRiIsImtpZCI6Ik4ybWFHOHFPaElUZV96eVBxY3JDYTZMVF9tVzE4WnRGUHkwOWNHQUIyNHcifQ.hZJda9swFIb_StFu_SHZTpz4bv1gFMo2mnQXK7mQ5eNEQ5aCJJuFkv--IztNC-syEAgdHT3nPe_RC5HOkYrsvN-7Kk3bnbRxd7AgjG0SAVaDTYTpUlukILJitmizmEFWxAUTi7guWR1TKCnjbTlb5A2JiK5bUrF5NivLPJ_nERkEqV6IP-yBVM_nSq7j1u-AK79LBLeN-zQd4nBAzL_zFK-N5d7Yw8U0YQbZsCXZRERYaEB7ydWqr3-B8EFQaPUHWCeNRgOKhCYUeSF63etGQcix4ExvBaxH8eR0EZ2aIcIohbRAiAgWQEXVM5J7pZ6swoTX91VAvx4-AH_nXuL74B7vYILwTirkkS_3D9d3j2u828oBdPDw88P9zR0GVmRzxPZqia3fch9IbFnSmLGYzcnxGH2ohV3W8q12YAd-6sp57vvwQ1qpucKAMM34Cnept6NUd3AeutMvwlkoI7VIjN2e08mymFEao6bNEZlvQ7DQggUdhLw3C5OgbYO1A4TG1jK4QjKa0ZgWcU7XdFGxWUVxaJT-xDoDVz3cYDFeK9yRuPf_kem06aBJpG5N6oR_E5vNaV7mlLJJ7lnjI9fbaTjT_C_SPdhOaqPM9pDsVBnsSIO-1ZiXnqE2QOMOuA6kswZtbDf63Ui3Vzx8hK9j6GpSEebu4bf_K_4u7K9uwaOJ0IRGwjoe_wA.hpRuDsGuiAAHjGGn5Obfow3TalP5sc7Z00KifXGdoQAtzo6dj0DEeBPqvRcjQTy93GaYhB0jPu4Tzou9QKWcLw'
          # rubocop:enable Layout/LineLength
        },
        {
          'name': 'resourceLink',
          'part': [
            {
              'name': 'vcIndex',
              'valueInteger': 0
            },
            {
              'name': 'bundledResource',
              'valueUri': 'resource:0'
            },
            {
              'name': 'hostedResource',
              'valueUri': 'https://fhir-myrecord.cerner.com/r4/ec2458f2-1e24-41c8-b71b-0e701af7583d/Patient/12742542'
            }
          ]
        },
        {
          'name': 'resourceLink',
          'part': [
            {
              'name': 'vcIndex',
              'valueInteger': 0
            },
            {
              'name': 'bundledResource',
              'valueUri': 'resource:1'
            },
            {
              'name': 'hostedResource',
              'valueUri': 'https://fhir-myrecord.cerner.com/r4/ec2458f2-1e24-41c8-b71b-0e701af7583d/Immunization/M197462828'
            }
          ]
        },
        {
          'name': 'resourceLink',
          'part': [
            {
              'name': 'vcIndex',
              'valueInteger': 0
            },
            {
              'name': 'bundledResource',
              'valueUri': 'resource:2'
            },
            {
              'name': 'hostedResource',
              'valueUri': 'https://fhir-myrecord.cerner.com/r4/ec2458f2-1e24-41c8-b71b-0e701af7583d/Immunization/M197462824'
            }
          ]
        },
        {
          'name': 'resourceLink',
          'part': [
            {
              'name': 'vcIndex',
              'valueInteger': 1
            },
            {
              'name': 'bundledResource',
              'valueUri': 'resource:0'
            },
            {
              'name': 'hostedResource',
              'valueUri': 'https://fhir-myrecord.cerner.com/r4/ec2458f2-1e24-41c8-b71b-0e701af7583d/Patient/12742542'
            }
          ]
        },
        {
          'name': 'resourceLink',
          'part': [
            {
              'name': 'vcIndex',
              'valueInteger': 1
            },
            {
              'name': 'bundledResource',
              'valueUri': 'resource:1'
            },
            {
              'name': 'hostedResource',
              'valueUri': 'https://fhir-myrecord.cerner.com/r4/ec2458f2-1e24-41c8-b71b-0e701af7583d/Observation/M-197287549'
            }
          ]
        }
      ]
    }.freeze
  end
end
