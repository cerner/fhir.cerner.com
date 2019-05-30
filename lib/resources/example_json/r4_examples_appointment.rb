module Cerner
  module Resources

    R4_APPOINTMENT_PATCH ||= [
      {
        "op": "replace",
        "path": "status",
        "value":  "cancelled"
      }
    ]

    R4_APPOINTMENT_CREATE ||= [
      {
        "resourceType": "Appointment",
        "slot": [
          {
            "reference": "Slot/21265426-633867-6828001-60"
          }
        ],
        "participant": [
          {
            "actor": {
              "reference": "Patient/4704007",
              "display": "Smart, Barney R"
            },
            "status": "accepted"
          }
        ],
      "status": "booked"
      }
    ]
  end
end
