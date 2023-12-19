    - name: patient
      type: string
      in: query
      description: reference: The specific patient to return DocumentReferences for. Example: `12345`<br>Required: Yes
    - name: type
      type: string
      in: query
      description: token: The document reference type, can be a list of comma separated values. Example: `http://loinc.org\|34133-9`<br>Required: No
    - name: start
      type: string
      in: query
      description: number: The start of the date range from which document reference records should be included. Example: `2014-09-24T12:00:00.000Z`<br>Required: No
    - name: end
      type: string
      in: query
      description: number: The end of the date range till which document reference records should be included. Example: `2016-09-24T12:00:00.000Z`<br>Required: No
