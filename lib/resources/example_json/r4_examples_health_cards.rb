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
          'valueUri': 'https://smarthealth.cards#immunization'
        },
        {
          'name': 'credentialType',
          'valueUri': 'https://smarthealth.cards#covid19'
        }
      ]
    }.freeze

    R4_HEALTH_CARDS_RESPONSE ||= {
      'resourceType': 'Parameters',
      'parameter': [
        {
          'name': 'verifiableCredential',
          # rubocop:disable Layout/LineLength
          'valueString': 'eyJhbGciOiJFUzI1NiIsInppcCI6IkRFRiIsImtpZCI6Ik4ybWFHOHFPaElUZV96eVBxY3JDYTZMVF9tVzE4WnRGUHkwOWNHQUIyNHcifQ.3ZJPj9MwEMW_Chqu-ec0bdLc2GUFlRaE2C4X1IPjTFojO45sp6Ks8t0Zp10EYncPHJF88cz45_ee_QDSOajh4P3g6jTtDtLG-mRRGNsmAm2PNhFGp7ZIUeTFsurymGFexAUTVdyUrIkzLDPGu3JZLVqIoG86qNkqz1flMlusIzgKqB_AnwaE-uuvm5zm1h-QK39IBLete33exGFDmOfnpNZjL39wL03_4qAwR9myNewiEBZb7L3k6m5svqHwQVIw-wWtC5waiiRLMuKF6tXYtwrDjEVnRitwO8uHSyO62AFhlCLaWQldYE_kkcijUvdW0cDj-TqgHzdPgD-RHTof8uMazxCupSIevNvcXt183lJvL4_YhxTf3G6ub6hwB7uJ7DWSrL_lPpDYusxixmK2gmmKntTCXtay-TNg57kf3WxWDwo9huc5ciFkj9emnQnCtLLfz7LdyXnUlz9F73JQZWLsfv5aqZNtKo7fCSDmk5BnJUy7KYLhEsAsp0OLfdD2e340ZIQY7dwKZrdSnxE5i7NFzCrCKuM_jrpBS42yKlcF1Qa0nbE61EgfF97YcE0r3aB4CPgDaVGv3hs3SM8VxbZ7Lrn8P0wu_zu5Il-uSvav0dGapp8.UY3V4aWsmxf3an_TvmqDT16kjSX2QAv6E0cbOXS1d1wY5viR5710H39wNmIyuqRAKdNH7CMzxY-U6n7y-qzgSw'
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
