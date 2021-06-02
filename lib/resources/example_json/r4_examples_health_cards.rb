# frozen_string_literal: true

module Cerner
  module Resources

    R4_HEALTH_CARDS_ISSUE_REQUEST ||= {
      'resourceType': 'Parameters',
      'parameter': [
        {
          'name': 'credentialType',
          'valueUri': 'https://smarthealth.cards#covid19'
        },
        {
          'name': 'credentialType',
          'valueUri': 'https://smarthealth.cards#health-card'
        },
        {
          'name': 'credentialType',
          'valueUri': 'https://smarthealth.cards#immunization'
        }
      ]
    }.freeze

    R4_HEALTH_CARDS_RESPONSE ||= {
      'resourceType': 'Parameters',
      '"parameter': [
        {
          'name': 'verifiableCredential',
          # rubocop:disable Layout/LineLength
          'valueString': 'eyJhbGciOiJFUzI1NiIsInppcCI6IkRFRiIsImtpZCI6IkJlbXNQUm83dTBrTFd4ZERKSzk2cmx4ZHFhOVpicjJsSXhzZmU3VGlFMTAifQ.3ZJPb9QwEMW_yspc889pdpPmxi4VrFQQolsuaA-OM9kYOXZkOxFLle_OONlWINqKM1Iunhn__N7LPBBhLSlJ61xvyzhuWmFC3YOKrGMnoU4cjAITcd3FFTgWA0-zddGkIYU0CzPKi7DKaRUmkCeUNfm6uKpJQFTVkJJuUrrOimSdB2TkpHwg7twDKb89PWc7ZlwLTLo24szU9s1yCP0BMS_Pia4blPjJnNDq1UGuR1HTa3IMCDdQg3KCybuh-g7ceUne8Vcw1nNKkkVJlCDPV7eDqiX4GQNWD4bDYZZPLo3gYodwLSXSFiX4gDmjRyQPUt4biQOP90uPfjw8A_6MdvC-z491sEBYJyTyyPv97fbmywF7JzGC8im-vd3vbrBwR44T2qsEWn_HnCfR6zwJKQ3phkxT8KwW-rqW_Z8B4zq4wc5mu16CA_97Rsa5ULDT9UzgusaNmWXbs3XQXRYL_0sr80ib07xfsRV1zMcfCODzTZImOZmOU0D6SwCznAYMKK_t9_xwSHM-mLnlzR5EtyBSGiZXIS0QK7X7NHQVGGzkRb7JsNaDabTpfA31Me608c_UwvaS-YA_oha52kLLRqENk6sP8xqtdlIowTHG40tJpv9hkunfSWbpepPTf49yCW5131UGpGRLgvhN0y8.JyN5g2viSvI8DkBRROiAqrtTP19O9EGI1a-LYEzKnJktCZ6B_mYUXNw9OkyewBr1yB9gSUq7ieiiddWK1iEwzQ'
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
        }
      ]
    }.freeze
  end
end
