# frozen_string_literal: true

module Cerner
  module Resources

    SOARIAN_R4_PROVENANCE_READ ||= {
      "resourceType": 'Provenance',
      "id": 'GO.A879904FD2FE4B2D90C89FDA84E1285F.NRS.43083',
      "recorded": '2020-11-15T16:20:00-05:00',
      "target": [
        {
          "reference": 'Goal/A879904FD2FE4B2D90C89FDA84E1285F.NRS.43083'
        }
      ],
      "agent": [
        {
          "type": {
            "coding": [
              {
                "system": 'http://terminology.hl7.org/CodeSystem/provenance-participant-type',
                "code": 'author',
                "display": 'Author'
              }
            ]
          },
          "who": {
            "reference": 'Practitioner/40134EF110CA4C07988F544E90057844'
          },
          "onBehalfOf": {
            "reference": 'Organization/HCU.1',
            "display": 'Health Enterprise'
          }
        }
      ],
      "text": {
        "status": 'generated',
        # rubocop:disable Layout/LineLength
        "div": '<div xmlns="http://www.w3.org/1999/xhtml"><b>Provenance</b><br /><b>Target</b>:<b>Reference</b>:Goal/A879904FD2FE4B2D90C89FDA84E1285F.NRS.43083 <br /><b>Recorded</b>:2020-11-15T16:20:00-05:00<br /><b>Agent:</b><br /><b>Type:</b><b>System</b>:http://terminology.hl7.org/CodeSystem/provenance-participant-type <b>Code</b>:author <b>Display</b>:Author<br /><b>Who</b>:<b>Reference</b>:Practitioner/40134EF110CA4C07988F544E90057844 <br /><b>OnBehalfOf</b>:<b>Reference</b>:Organization/HCU.1 <b>Display</b>:Health Enterprise</div>'
        # rubocop:enable Layout/LineLength
      }
    }.freeze

  end
end
