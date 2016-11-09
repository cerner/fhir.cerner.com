module Cerner
  module Resources

    DSTU2_OPEN_METADATA ||= {
      "resourceType": "Conformance",
      "text": {
        "status": "generated",
        "div": "&lt;div&gt;Generated Conformance Statement&lt;/div&gt;"
      },
      "url": "https://fhir-open.sandboxcernerpowerchart.com/d075cf8b-3261-481d-97e5-ba6c48d3b41f/metadata",
      "name": "Cerner Conformance Statement",
      "status": "draft",
      "publisher": "Cerner",
      "date": "2016-08-15",
      "description": "Describes capabilities of this server",
      "kind": "instance",
      "fhirVersion": "1.0.2",
      "acceptUnknown": "no",
      "format": [
        "json"
      ],
      "rest": [
        {
          "mode": "server",
          "documentation": "All the functionality defined in FHIR",
          "security": {
            "cors": true
          },
          "resource": [
            {
              "type": "Conformance",
              "interaction": [
                {
                  "code": "read"
                }
              ]
            },
            {
              "type": "AllergyIntolerance",
              "interaction": [
                {
                  "code": "search-type"
                }
              ],
              "searchParam": [
                {
                  "name": "patient",
                  "type": "reference",
                  "documentation": "Who the sensitivity is for. It is a required field"
                },
                {
                  "name": "status",
                  "type": "token",
                  "documentation": "Certainty of the allergy or intolerance"
                }
              ]
            },
            {
              "type": "Condition",
              "interaction": [
                {
                  "code": "search-type"
                }
              ],
              "searchParam": [
                {
                  "name": "patient",
                  "type": "reference",
                  "documentation": "The patient who has the condition. It is a required field"
                },
                {
                  "name": "clinicalstatus",
                  "type": "token",
                  "documentation": "A list of desired clinical statuses of the condition"
                },
                {
                  "name": "category",
                  "type": "token",
                  "documentation": "The category of the condition"
                }
              ]
            },
            {
              "type": "DiagnosticReport",
              "interaction": [
                {
                  "code": "search-type"
                }
              ],
              "searchParam": [
                {
                  "name": "patient",
                  "type": "reference",
                  "documentation": "The subject of the report if a patient. It is a required field if subject field is not given"
                },
                {
                  "name": "subject",
                  "type": "reference",
                  "documentation": "The subject of the report. It is a required field if patient field is not given"
                },
                {
                  "name": "date",
                  "type": "date",
                  "documentation": "The start date after which or date range in which the report occurs. If only start date is provided, must be prefixed by 'ge'. If range is provided, this parameter value should be present twice, prefixed once by 'ge' representing the earliest date and once by 'lt' representing the latest date"
                }
              ]
            },
            {
              "type": "DocumentReference",
              "interaction": [
                {
                  "code": "search-type"
                }
              ],
              "searchParam": [
                {
                  "name": "patient",
                  "type": "reference",
                  "documentation": "The patient the document is about"
                },
                {
                  "name": "type",
                  "type": "token",
                  "documentation": "The type of the document"
                }
              ]
            },
            {
              "type": "Encounter",
              "interaction": [
                {
                  "code": "read"
                },
                {
                  "code": "search-type"
                }
              ],
              "searchParam": [
                {
                  "name": "patient",
                  "type": "reference",
                  "documentation": "The patient present at the encounter. It is a required field if _id field is not given"
                },
                {
                  "name": "_id",
                  "type": "token",
                  "documentation": "A single or comma separated list of Encounter ids. It is a required field if patient field is not given"
                }
              ]
            },
            {
              "type": "Immunization",
              "interaction": [
                {
                  "code": "search-type"
                }
              ],
              "searchParam": [
                {
                  "name": "patient",
                  "type": "reference",
                  "documentation": "The patient for the vaccination record. It is a required field"
                }
              ]
            },
            {
              "type": "MedicationOrder",
              "interaction": [
                {
                  "code": "search-type"
                }
              ],
              "searchParam": [
                {
                  "name": "patient",
                  "type": "reference",
                  "documentation": "The identity of a patient to list medication orders for. It is a required field"
                },
                {
                  "name": "status",
                  "type": "token",
                  "documentation": "One or more medication order status values separated by commas."
                },
                {
                  "name": "-timing-boundsPeriod",
                  "type": "date",
                  "documentation": "The date-time which should fall within the period the medication should be given to the patient. Must be prefixed by 'ge'."
                },
                {
                  "name": "_count",
                  "type": "number",
                  "documentation": "The maximum number of results to include in a page."
                }
              ]
            },
            {
              "type": "MedicationStatement",
              "interaction": [
                {
                  "code": "search-type"
                },
                {
                  "code": "read"
                }
              ],
              "searchParam": [
                {
                  "name": "patient",
                  "type": "reference",
                  "documentation": "The identity of a patient to list statements for. It is a required field."
                },
                {
                  "name": "status",
                  "type": "token",
                  "documentation": "One or more medication statement status values separated by commas."
                },
                {
                  "name": "effectivedate",
                  "type": "date",
                  "documentation": "The date-time which should fall within the period the patient was taking (or not taking) the medication. Must be prefixed by 'ge'."
                },
                {
                  "name": "_count",
                  "type": "number",
                  "documentation": "The maximum number of results to include in a page."
                },
                {
                  "name": "_id",
                  "type": "token",
                  "documentation": "One or more Medication Statement ids separated by commas. It is a required field if patient field is not given"
                }
              ]
            },
            {
              "type": "Observation",
              "interaction": [
                {
                  "code": "search-type"
                }
              ],
              "searchParam": [
                {
                  "name": "patient",
                  "type": "reference",
                  "documentation": "The subject that the observation is about (if patient). It is a required field if the subject field is not given"
                },
                {
                  "name": "subject",
                  "type": "reference",
                  "documentation": "The subject that the observation is about. It is a required field if the patient field is not given"
                },
                {
                  "name": "code",
                  "type": "token",
                  "documentation": "One or more observation types separated by commas."
                },
                {
                  "name": "date",
                  "type": "date",
                  "documentation": "The date range into which the observation falls. This parameter value should be present twice, prefixed once by 'gt' representing the earliest date and once by 'lt' representing the latest date"
                },
                {
                  "name": "_count",
                  "type": "number",
                  "documentation": "The maximum number of results to return in a page."
                }
              ]
            },
            {
              "type": "Patient",
              "interaction": [
                {
                  "code": "read"
                },
                {
                  "code": "search-type"
                }
              ],
              "searchParam": [
                {
                  "name": "_id",
                  "type": "token",
                  "documentation": "The logical resource id associated with the resource (must be supported by all servers). It is a required field if no birthdate, identifier, name or telecom field is given"
                },
                {
                  "name": "birthdate",
                  "type": "date",
                  "documentation": "The patient's date of birth. It is a required field if no _id, identifier, name or telecom field is given"
                },
                {
                  "name": "identifier",
                  "type": "token",
                  "documentation": "A patient identifier. It is a requried field if no _id, birthdate, name or telecom field is given"
                },
                {
                  "name": "name",
                  "type": "string",
                  "documentation": "A portion of either family or given name of the patient. It is a required field if no _id, birthday, identifier or telecom field is given"
                },
                {
                  "name": "telecom",
                  "type": "token",
                  "documentation": "The value in any kind of telecom details of the patient. It is a required field if no _id, birthdate, identifier or name is given"
                },
                {
                  "name": "_count",
                  "type": "number",
                  "documentation": "The maximum number of results to return"
                }
              ]
            }
          ]
        }
      ]
    }

    DSTU2_AUTH_METADATA ||= {
      "resourceType": "Conformance",
      "text": {
        "status": "generated",
        "div": "&lt;div&gt;Generated Conformance Statement&lt;/div&gt;"
      },
      "url": "https://fhir.sandboxcernerpowerchart.com/d075cf8b-3261-481d-97e5-ba6c48d3b41f/metadata",
      "name": "Cerner Conformance Statement",
      "status": "draft",
      "publisher": "Cerner",
      "date": "2016-08-15",
      "description": "Describes capabilities of this server",
      "kind": "instance",
      "fhirVersion": "1.0.2",
      "acceptUnknown": "no",
      "format": [
        "json"
      ],
      "rest": [
        {
          "mode": "server",
          "documentation": "All the functionality defined in FHIR",
          "security": {
            "extension": [
              {
                "url": "http://fhir-registry.smarthealthit.org/StructureDefinition/oauth-uris",
                "extension": [
                  {
                    "url": "token",
                    "valueUri": "https://authorization.sandboxcerner.com/tenants/d075cf8b-3261-481d-97e5-ba6c48d3b41f/protocols/oauth2/profiles/smart-v1/token"
                  },
                  {
                    "url": "authorize",
                    "valueUri": "https://authorization.sandboxcerner.com/tenants/d075cf8b-3261-481d-97e5-ba6c48d3b41f/protocols/oauth2/profiles/smart-v1/personas/provider/authorize"
                  }
                ]
              }
            ],
            "cors": true,
            "service": [
              {
                "coding": [
                  {
                    "system": "http://hl7.org/fhir/restful-security-service",
                    "code": "SMART-on-FHIR"
                  }
                ],
                "text": "OAuth2 using SMART-on-FHIR profile (see http://docs.smarthealthit.org/)."
              }
            ],
            "description": "OAuth2 plus SMART extensions"
          },
          "resource": [
            {
              "type": "Conformance",
              "interaction": [
                {
                  "code": "read"
                }
              ]
            },
            {
              "type": "AllergyIntolerance",
              "interaction": [
                {
                  "code": "create"
                },
                {
                  "code": "update"
                },
                {
                  "code": "search-type"
                }
              ],
              "updateCreate": false,
              "searchParam": [
                {
                  "name": "patient",
                  "type": "reference",
                  "documentation": "Who the sensitivity is for. It is a required field"
                },
                {
                  "name": "status",
                  "type": "token",
                  "documentation": "Certainty of the allergy or intolerance"
                }
              ]
            },
            {
              "type": "Condition",
              "interaction": [
                {
                  "code": "create"
                },
                {
                  "code": "update"
                },
                {
                  "code": "search-type"
                }
              ],
              "updateCreate": false,
              "searchParam": [
                {
                  "name": "patient",
                  "type": "reference",
                  "documentation": "The patient who has the condition. It is a required field"
                },
                {
                  "name": "clinicalstatus",
                  "type": "token",
                  "documentation": "A list of desired clinical statuses of the condition"
                },
                {
                  "name": "category",
                  "type": "token",
                  "documentation": "The category of the condition"
                }
              ]
            },
            {
              "type": "DiagnosticReport",
              "interaction": [
                {
                  "code": "search-type"
                }
              ],
              "searchParam": [
                {
                  "name": "patient",
                  "type": "reference",
                  "documentation": "The subject of the report if a patient. It is a required field if subject field is not given"
                },
                {
                  "name": "subject",
                  "type": "reference",
                  "documentation": "The subject of the report. It is a required field if patient field is not given"
                },
                {
                  "name": "date",
                  "type": "date",
                  "documentation": "The start date after which or date range in which the report occurs. If only start date is provided, must be prefixed by 'ge'. If range is provided, this parameter value should be present twice, prefixed once by 'ge' representing the earliest date and once by 'lt' representing the latest date"
                }
              ]
            },
            {
              "type": "DocumentReference",
              "interaction": [
                {
                  "code": "create"
                },
                {
                  "code": "search-type"
                }
              ],
              "searchParam": [
                {
                  "name": "patient",
                  "type": "reference",
                  "documentation": "The patient the document is about"
                },
                {
                  "name": "type",
                  "type": "token",
                  "documentation": "The type of the document"
                }
              ]
            },
            {
              "type": "Encounter",
              "interaction": [
                {
                  "code": "read"
                },
                {
                  "code": "search-type"
                }
              ],
              "searchParam": [
                {
                  "name": "patient",
                  "type": "reference",
                  "documentation": "The patient present at the encounter. It is a required field if _id field is not given"
                },
                {
                  "name": "_id",
                  "type": "token",
                  "documentation": "A single or comma separated list of Encounter ids. It is a required field if patient field is not given"
                }
              ]
            },
            {
              "type": "Immunization",
              "interaction": [
                {
                  "code": "search-type"
                }
              ],
              "searchParam": [
                {
                  "name": "patient",
                  "type": "reference",
                  "documentation": "The patient for the vaccination record. It is a required field"
                }
              ]
            },
            {
              "type": "MedicationOrder",
              "interaction": [
                {
                  "code": "search-type"
                }
              ],
              "searchParam": [
                {
                  "name": "patient",
                  "type": "reference",
                  "documentation": "The identity of a patient to list medication orders for. It is a required field"
                },
                {
                  "name": "status",
                  "type": "token",
                  "documentation": "One or more medication order status values separated by commas."
                },
                {
                  "name": "-timing-boundsPeriod",
                  "type": "date",
                  "documentation": "The date-time which should fall within the period the medication should be given to the patient. Must be prefixed by 'ge'."
                },
                {
                  "name": "_count",
                  "type": "number",
                  "documentation": "The maximum number of results to include in a page."
                }
              ]
            },
            {
              "type": "MedicationStatement",
              "interaction": [
                {
                  "code": "create"
                },
                {
                  "code": "update"
                },
                {
                  "code": "search-type"
                },
                {
                  "code": "read"
                }
              ],
              "updateCreate": false,
              "searchParam": [
                {
                  "name": "patient",
                  "type": "reference",
                  "documentation": "The identity of a patient to list statements for. It is a required field."
                },
                {
                  "name": "status",
                  "type": "token",
                  "documentation": "One or more medication statement status values separated by commas."
                },
                {
                  "name": "effectivedate",
                  "type": "date",
                  "documentation": "The date-time which should fall within the period the patient was taking (or not taking) the medication. Must be prefixed by 'ge'."
                },
                {
                  "name": "_count",
                  "type": "number",
                  "documentation": "The maximum number of results to include in a page."
                },
                {
                  "name": "_id",
                  "type": "token",
                  "documentation": "One or more Medication Statement ids separated by commas. It is a required field if patient field is not given"
                }
              ]
            },
            {
              "type": "Observation",
              "interaction": [
                {
                  "code": "search-type"
                }
              ],
              "searchParam": [
                {
                  "name": "patient",
                  "type": "reference",
                  "documentation": "The subject that the observation is about (if patient). It is a required field if the subject field is not given"
                },
                {
                  "name": "subject",
                  "type": "reference",
                  "documentation": "The subject that the observation is about. It is a required field if the patient field is not given"
                },
                {
                  "name": "code",
                  "type": "token",
                  "documentation": "One or more observation types separated by commas."
                },
                {
                  "name": "date",
                  "type": "date",
                  "documentation": "The date range into which the observation falls. This parameter value should be present twice, prefixed once by 'gt' representing the earliest date and once by 'lt' representing the latest date"
                },
                {
                  "name": "_count",
                  "type": "number",
                  "documentation": "The maximum number of results to return in a page."
                }
              ]
            },
            {
              "type": "Patient",
              "interaction": [
                {
                  "code": "read"
                },
                {
                  "code": "search-type"
                }
              ],
              "searchParam": [
                {
                  "name": "_id",
                  "type": "token",
                  "documentation": "The logical resource id associated with the resource (must be supported by all servers). It is a required field if no birthdate, identifier, name or telecom field is given"
                },
                {
                  "name": "birthdate",
                  "type": "date",
                  "documentation": "The patient's date of birth. It is a required field if no _id, identifier, name or telecom field is given"
                },
                {
                  "name": "identifier",
                  "type": "token",
                  "documentation": "A patient identifier. It is a requried field if no _id, birthdate, name or telecom field is given"
                },
                {
                  "name": "name",
                  "type": "string",
                  "documentation": "A portion of either family or given name of the patient. It is a required field if no _id, birthday, identifier or telecom field is given"
                },
                {
                  "name": "telecom",
                  "type": "token",
                  "documentation": "The value in any kind of telecom details of the patient. It is a required field if no _id, birthdate, identifier or name is given"
                },
                {
                  "name": "_count",
                  "type": "number",
                  "documentation": "The maximum number of results to return"
                }
              ]
            }
          ]
        }
      ]
    }

  end
end