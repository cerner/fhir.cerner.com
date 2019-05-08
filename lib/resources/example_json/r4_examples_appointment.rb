module Cerner
  module Resources

    R4_APPOINTMENT_PATCH ||= [
      {
        "op": "replace",
        "path": "status",
        "value":  "cancelled"
      }
    ]
  end
end
