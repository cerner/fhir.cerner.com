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
        }
      ]
    }.freeze

    R4_HEALTH_CARDS_RESPONSE ||= {
      'resourceType': 'Parameters',
      'parameter': [
        {
          'name': 'verifiableCredential',
          # rubocop:disable Layout/LineLength
          'valueString': 'eyJhbGciOiJFUzI1NiIsInppcCI6IkRFRiIsImtpZCI6IlhVTVR0Q2pfYUlFejdWaFo0Y05YLVdKd0V1ckxBWnQ0SjRPa2dvNEc5ZFkifQ.3ZLNjtMwFIVfBV22SRO7aZNmxwwjqDQgxHTYoC4c56YxcuLIdirKKO_OddoRIGZmwRIpm_vjz-cc5wGUc1BC6_1QJok2UujWOF8u0zRNbJag5NmqaHjMkGdxxmQRVzmr4hTzlIkmXxXLGiLoqwZKtuYrttpwnkVwlFA-gD8NCOXXGe-I7zphfYtC-3Yhha3d63MRh4Iwz--prht79UN4ZfoXF6U5qpptYB-BtFhj75XQd2P1DaUPkppW2S9oXeCUkC3SRUq80L0a-1pj2LHozGgl7mb5cBlEFzsgjdZEOyuhC-yJPBJ51Prealp4PF8G9GPxBPgT2aHzIT_R4RkiOqWJB--2t1c3n3c0O6gj9iHFN7fb6xtq3MF-InuVIutvhQ8ktsnTmLGYrWGaoie1sJe1bP8M2HnhRzeb7QaNHsPzHIWUqsdrU88EaWrVH2bZ7uQ8dr9-pFbnC2MPScg1capO5PE7AeR8Eniaw7SfIhguAcxyGrTYB22_50dLRsrRzqNgdqe6M4KzOF3GrCCsNv7j2FVoaZAX-Tqj3oC2MbYLPdInpDc2XFMrN2gRAv5AWvSr98YNygtNse2fS47_h8nxv5PL-Gqds3-Njr5p-gk.vrwgZc_3wsjbpqmvYPX7AI8okuTYTFCT5VD-cDrln_J4L5Ms2gr6Xt_W4LFQsqTXD8Ci2w9skOaj3FeH9JJPAw'
          # rubocop:enable Layout/LineLength
        },
        {
          'name': 'verifiableCredential',
          # rubocop:disable Layout/LineLength
          'valueString': 'eyJhbGciOiJFUzI1NiIsInppcCI6IkRFRiIsImtpZCI6IlhVTVR0Q2pfYUlFejdWaFo0Y05YLVdKd0V1ckxBWnQ0SjRPa2dvNEc5ZFkifQ.hZJda9swFIb_StFu_SE5dpz4bv1gFMo22nQXK7mQ5eNYQ5aCpJiFkv--IztNA-syEAgdHT16z3vOK5HOkYp03m-rNFVGcNUZ56sZpTS1eQoiy4tFm8UMsjzOmVjEdcnqmEJJGW_LYjFrSER03ZKKzbOCFcssyyMyCFK9Er_fAqleRrxDvuu59R1w5btEcNu4T9MhDgfE_DtP8dpY7o3dX0wTZpANW5J1RISFBrSXXD3t6l8gfBDUdtL-AOuk0Vh1ntCEIi9Er3e6URByLDizswJWo3hyvIiOxRBhlEJaIEQEP0BF1QuSd0o9W4UJb--rgH47fAD-zr3E98E93sME4b1UyCNf7h-u7x5XeLeRA-jg4eeH-5s7DDyR9QHLqyWWfst9ILFlSWPGYjYnh0P0oRZ2Wcu32oEd-LEq57nfhbFopeYKA8I04yvcpd6MUt3eeejPR0dqkRi7OaWTZV5QGqOm9QGZ702w0IIFHYScm4VJ0LbB2gFCYSsZXCEZzWhM83hGV3RRsaKi2DRKf-I_A1c7uMHPeK1wR-LW_0em06aHJpG6NakT_l1sNqezEqeeTXJPGh-53kzNmfp_ke7B9lIbZTb7pFNlsCMN-p7GvPQEtQEa98B1IJ00aGP70e9Guq3iYRC-jqGrSUXou4ff_q_4Wdhf3YJHE6EJhYR1OPwB.Dmh4AkV9hs-uUDxEDe80EEpuQys5R3U0rr02zDtd6a8B_hAACZQ5WR0xJeijmj4eQCR_99kQ6Q6XJ1RWec8b7A'
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
              'valueUri': 'https://fhir-open.cerner.com/r4/ec2458f2-1e24-41c8-b71b-0e701af7583d/Patient/12742542'
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
              'valueUri': 'https://fhir-open.cerner.com/r4/ec2458f2-1e24-41c8-b71b-0e701af7583d/Immunization/M197462828'
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
              'valueUri': 'https://fhir-open.cerner.com/r4/ec2458f2-1e24-41c8-b71b-0e701af7583d/Immunization/M197462824'
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
              'valueUri': 'https://fhir-open.cerner.com/r4/ec2458f2-1e24-41c8-b71b-0e701af7583d/Patient/12742542'
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
              'valueUri': 'https://fhir-open.cerner.com/r4/ec2458f2-1e24-41c8-b71b-0e701af7583d/Observation/M-197287549'
            }
          ]
        }
      ]
    }.freeze
  end
end
