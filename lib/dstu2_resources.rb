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
      "date": "2015-12-03T00:00:00+00:00",
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
                  "documentation": "The patient who has the condition. It is a required field if subject field is not given"
                },
                {
                  "name": "category",
                  "type": "token",
                  "documentation": "The category of the condition",
                  "modifier": [
                    "not"
                  ]
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
                  "documentation": "The identity of a patient to list dispenses for. It is a required field"
                },
                {
                  "name": "status",
                  "type": "token",
                  "documentation": "The status of the med, may be a list separated by commas. (Active and draft statuses must be queried separately from completed, on-hold, and stopped statuses. The superseded and entered-in-error statuses are not supported). It is a required field"
                },
                {
                  "name": "timing-boundsperiod-end",
                  "type": "date",
                  "documentation": "The stop time of the order. Must be prefixed by 'le' (currently only support querying for orders completed prior to a certain time). Not accepted when querying active or draft orders"
                },
                {
                  "name": "_count",
                  "type": "number",
                  "documentation": "The number of items to include in a page. Currently ignored if querying for active or draft statuses"
                }
              ]
            },
            {
              "type": "MedicationStatement",
              "interaction": [
                {
                  "code": "search-type"
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
                  "type": "string",
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
      "date": "2015-12-03T00:00:00+00:00",
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
                    "valueUri": "https://authorization.sandboxcerner.com/realms/d075cf8b-3261-481d-97e5-ba6c48d3b41f/protocols/smart/token"
                  },
                  {
                    "url": "authorize",
                    "valueUri": "https://authorization.sandboxcerner.com/realms/d075cf8b-3261-481d-97e5-ba6c48d3b41f/protocols/smart/authorize"
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
                  "documentation": "The patient who has the condition. It is a required field if subject field is not given"
                },
                {
                  "name": "category",
                  "type": "token",
                  "documentation": "The category of the condition",
                  "modifier": [
                    "not"
                  ]
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
                  "documentation": "The identity of a patient to list dispenses for. It is a required field"
                },
                {
                  "name": "status",
                  "type": "token",
                  "documentation": "The status of the med, may be a list separated by commas. (Active and draft statuses must be queried separately from completed, on-hold, and stopped statuses. The superseded and entered-in-error statuses are not supported). It is a required field"
                },
                {
                  "name": "timing-boundsperiod-end",
                  "type": "date",
                  "documentation": "The stop time of the order. Must be prefixed by 'le' (currently only support querying for orders completed prior to a certain time). Not accepted when querying active or draft orders"
                },
                {
                  "name": "_count",
                  "type": "number",
                  "documentation": "The number of items to include in a page. Currently ignored if querying for active or draft statuses"
                }
              ]
            },
            {
              "type": "MedicationStatement",
              "interaction": [
                {
                  "code": "search-type"
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
                  "type": "string",
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
