module Cerner
  module Resources

    DSTU2_OPERATION_DEFINITION_BUNDLE ||= {
      "resourceType": "OperationDefinition",
      "id": "binary-autogen-ccd-if",
      "url": "https://fhir-ehr.cerner.com/dstu2/OperationDefinition/binary-autogen-ccd-if",
      "name": "Generate Continuity of Care Document (CCD)",
      "status": "active",
      "kind": "operation",
      "publisher": "Cerner",
      "date": "2017-01-17",
      "description": "Generates a copy of a patient's Continuity of Care Document (CCD) as a Binary",
      "code": "autogen-ccd-if",
      "system": false,
      "type": [
        "Binary"
      ],
      "instance": false,
      "parameter": [
        {
          "name": "patient",
          "use": "in",
          "min": "1",
          "max": "1",
          "documentation": "The id of the patient that is the subject of the generated Continuity of Care Document (CCD).",
          "type": "id"
        },
        {
          "name": "start",
          "use": "in",
          "min": "0",
          "max": "1",
          "documentation": "The start of the date range for which the Continuity of Care Document (CCD) is to be generated. If no start date is provided, then the document will be generated with all records upto the end or current date",
          "type": "date"
        },
        {
          "name": "end",
          "use": "in",
          "min": "0",
          "max": "1",
          "documentation": "The end of the date range for which the Continuity of Care Document (CCD) is to be generated. If no end date is provided, then the document will be generated with records upto the current date",
          "type": "date"
        },
        {
          "name": "result",
          "use": "out",
          "min": "1",
          "max": "1",
          "documentation": "Binary for the generated Continuity of Care Document (CCD)",
          "type": "Binary"
        }
      ]
    }

  end
end
