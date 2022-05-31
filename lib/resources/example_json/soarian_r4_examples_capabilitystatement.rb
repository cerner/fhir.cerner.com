# frozen_string_literal: true

module Cerner
  module Resources

    R4_METADATA ||= {
      "resourceType": 'CapabilityStatement',
      "publisher": 'Cerner Corporation',
      "date": '2022-02-07T04:02:50-05:00',
      "url": 'https://fhir-myrecord-sc.cerner.com/r4/2f8f5ec1-b7b8-4be5-ae27-e308284dd9c1/metadata',
      "name": 'Soarian Clinicals Capability Statement',
      "title": 'Soarian Clinicals Capability Statement',
      "status": 'active',
      "description": 'Cerner Soarian Clinicals FHIR API',
      "kind": 'instance',
      "instantiates": [
        'https://www.hl7.org/fhir/us/core/CapabilityStatement-us-core-server.html'
      ],
      "fhirVersion": '4.0.1',
      "format": [
        'json',
        'application/json',
        'application/fhir+json',
        'application/json+fhir'

      ],
      "implementation": {
        "description": 'Cerner Soarian Clinicals FHIR API',
        "url": 'https://fhir-myrecord-sc.cerner.com/r4/2f8f5ec1-b7b8-4be5-ae27-e308284dd9c1/metadata'
      },
      "rest": [
        {
          "mode": 'server',
          "documentation": 'Cerner Soarian Clinicals FHIR API',
          "security": {
            "extension": [
              {
                "url": 'http://fhir-registry.smarthealthit.org/StructureDefinition/oauth-uris',
                "extension": [
                  {
                    "url": 'token',
                    "valueUri": 'https://authorization.sandboxcerner.com/tenants/2f8f5ec1-b7b8-4be5-ae27-e308284dd9c1/hosts/fhir-myrecord-sc.cerner.com/protocols/oauth2/profiles/smart-v1/token'
                  },
                  {
                    "url": 'authorize',
                    "valueUri": 'https://authorization.sandboxcerner.com/tenants/2f8f5ec1-b7b8-4be5-ae27-e308284dd9c1/protocols/oauth2/profiles/smart-v1/personas/patient/authorize'
                  },
                  {
                    "url": 'introspect',
                    "valueUri": 'https://authorization.sandboxcerner.com/tokeninfo'
                  },
                  {
                    "url": 'manage',
                    "valueUri": 'https://authorization.sandboxcerner.com/tenants/2f8f5ec1-b7b8-4be5-ae27-e308284dd9c1/personas/patient/my-authorizations'
                  }
                ]
              },
              {
                "url": 'http://cerner.hs.fhir.com/StructureDefinition/SoarianIdLinking-uris',
                "extension": [
                  {
                    "url": 'token',
                    "valueUri": 'https://authorization.sandboxcerner.com/tenants/2f8f5ec1-b7b8-4be5-ae27-e308284dd9c1/protocols/oauth2/profiles/soarian-identity-linking-v1/token'
                  },
                  {
                    "url": 'authorize',
                    "valueUri": 'https://authorization.sandboxcerner.com/tenants/2f8f5ec1-b7b8-4be5-ae27-e308284dd9c1/protocols/oauth2/profiles/soarian-identity-linking-v1/personas/patient/authorize'
                  }
                ]
              }
            ],
            "cors": true,
            "description": 'OAuth2 with SMART extensions'
          },
          "resource": [
            {
              "type": 'Condition',
              "profile": 'http://hl7.org/fhir/condition',
              "interaction": [
                {
                  "code": 'search-type'
                },
                {
                  "code": 'read'
                }
              ],
              "searchParam": [
                {
                  "name": '_revinclude',
                  "definition": 'http://hl7.org/fhir/SearchParameter/Resource-revinclude',
                  "type": 'token',
                  "documentation": 'Includes Provenance resource in response. It may only be provided if at least one
				  other parameter is provided.'
                },
                {
                  "name": 'patient',
                  "definition": 'http://hl7.org/fhir/SearchParameter/clinical-patient',
                  "type": 'reference',
                  "documentation": 'Bundle contains Condition resources for the patient requested plus any other
				  search criteria.'
                },
                {
                  "name": '_id',
                  "definition": 'http://hl7.org/fhir/SearchParameter/Resource-id',
                  "type": 'token',
                  "documentation": 'Bundle contains a Condition resource with the id requested plus any other search
				  criteria.'
                },
                {
                  "name": 'encounter',
                  "definition": 'http://hl7.org/fhir/SearchParameter/Condition-encounter',
                  "type": 'reference',
                  "documentation": 'Bundle contains Condition resources for visit requested plus any other search
				  criteria.'
                }
              ],
              "searchRevInclude": [
                'Provenance:target'
              ]
            },
            {
              "type": 'Immunization',
              "profile": 'http://hl7.org/fhir/immunization',
              "interaction": [
                {
                  "code": 'search-type'
                },
                {
                  "code": 'read'
                }
              ],
              "searchParam": [
                {
                  "name": '_revinclude',
                  "definition": 'http://hl7.org/fhir/SearchParameter/Resource-revinclude',
                  "type": 'token',
                  "documentation": 'Includes Provenance resource in response. It may only be provided if at least one
				  other parameter is provided.'
                },
                {
                  "name": 'patient',
                  "definition": 'http://hl7.org/fhir/SearchParameter/clinical-patient',
                  "type": 'reference',
                  "documentation": 'Fetches a bundle of Immunization records for the specified patient.'
                },
                {
                  "name": '_id',
                  "definition": 'http://hl7.org/fhir/SearchParameter/Resource-id',
                  "type": 'token',
                  "documentation": 'Fetches an Immunization resource by the logical id of the resource'
                }
              ],
              "searchRevInclude": [
                'Provenance:target'
              ]
            },
            {
              "type": 'MedicationRequest',
              "profile": 'http://hl7.org/fhir/medicationrequest',
              "interaction": [
                {
                  "code": 'search-type'
                },
                {
                  "code": 'read'
                }
              ],
              "searchParam": [
                {
                  "name": '_revinclude',
                  "definition": 'http://hl7.org/fhir/SearchParameter/Resource-revinclude',
                  "type": 'token',
                  "documentation": 'Fetches all the MedicationRequest resources matching the search criteria and the
				  Provenance resources for the result set.'
                },
                {
                  "name": 'patient',
                  "definition": 'http://hl7.org/fhir/SearchParameter/clinical-patient',
                  "type": 'reference',
                  "documentation": 'Bundle contains MedicationRequest resources for the specified patient and
				  requested [intent] plus any other criteria.'
                },
                {
                  "name": '_id',
                  "definition": 'http://hl7.org/fhir/SearchParameter/Resource-id',
                  "type": 'token',
                  "documentation": 'Bundle contains a MedicationRequest resource with the id requested plus any
				  other search criteria'
                },
                {
                  "name": 'encounter',
                  "definition": 'http://hl7.org/fhir/SearchParameter/medications-encounter',
                  "type": 'reference',
                  "documentation": 'Bundle contains MedicationRequest resources for the specified patient and
				  requested [intent] and requested [encounter] plus any other criteria.'
                },
                {
                  "name": 'intent',
                  "definition": 'http://hl7.org/fhir/SearchParameter/MedicationRequest-intent',
                  "type": 'token',
                  "documentation": 'Bundle contains MedicationRequest resources for the specified patient and
				  requested [intent] plus any other criteria.'
                },
                {
                  "name": 'status',
                  "definition": 'http://hl7.org/fhir/SearchParameter/medications-status',
                  "type": 'token',
                  "documentation": 'Bundle contains MedicationRequest resources for the specified patient and
				  requested [intent] and requested [status] plus any other criteria.'
                }
              ],
              "searchRevInclude": [
                'Provenance:target'
              ]
            },
            {
              "type": 'Provenance',
              "profile": 'http://hl7.org/fhir/provenance',
              "interaction": [
                {
                  "code": 'read'
                }
              ]
            },
            {
              "type": 'Organization',
              "profile": 'http://hl7.org/fhir/organization',
              "interaction": [
                {
                  "code": 'search-type'
                },
                {
                  "code": 'read'
                }
              ],
              "searchParam": [
                {
                  "name": 'address',
                  "definition": 'http://hl7.org/fhir/SearchParameter/Organization-address',
                  "type": 'string',
                  "documentation": 'Bundle contains Organization resources matching the start of either line(*), city,
				  state, postalCode, or country to the [address] parameter value plus any other search criteria.'
                },
                {
                  "name": 'name',
                  "definition": 'http://hl7.org/fhir/SearchParameter/Organization-name',
                  "type": 'string',
                  "documentation": 'Bundle contains Organization resources matching the start of the Organization
				  name to the [name] value requested plus any other search criteria.'
                },
                {
                  "name": '_id',
                  "definition": 'http://hl7.org/fhir/SearchParameter/Resource-id',
                  "type": 'token',
                  "documentation": 'Bundle contains an Organization resource with the logical [id] requested plus
				  any other critieria.'
                }
              ]
            },
            {
              "type": 'CareTeam',
              "profile": 'http://hl7.org/fhir/careteam',
              "interaction": [
                {
                  "code": 'search-type'
                },
                {
                  "code": 'read'
                }
              ],
              "searchParam": [
                {
                  "name": '_revinclude',
                  "definition": 'http://hl7.org/fhir/SearchParameter/Resource-revinclude',
                  "type": 'token',
                  "documentation": 'Includes Provenance resource in response. It may only be provided if at least
				  one other parameter is provided.'
                },
                {
                  "name": 'patient',
                  "definition": 'http://hl7.org/fhir/SearchParameter/clinical-patient',
                  "type": 'reference',
                  "documentation": 'Bundle contains CareTeam resources for the specified patient plus any other
				  criteria.'
                },
                {
                  "name": '_id',
                  "definition": 'http://hl7.org/fhir/SearchParameter/Resource-id',
                  "type": 'token',
                  "documentation": 'Bundle contains a CareTeam resource with the id requested plus any other search
				  criteria.'
                },
                {
                  "name": 'encounter',
                  "definition": 'http://hl7.org/fhir/SearchParameter/CareTeam-encounter',
                  "type": 'reference',
                  "documentation": 'Search must be in combination with patient. Bundle contains CareTeam resources
				  for the [patient] and [encounter] plus any other criteria.'
                },
                {
                  "name": 'status',
                  "definition": 'http://hl7.org/fhir/SearchParameter/CareTeam-status',
                  "type": 'token',
                  "documentation": 'Bundle contains CareTeam resources for the [patient] and [status] plus any other
				  critieria.'
                }
              ],
              "searchRevInclude": [
                'Provenance:target'
              ]
            },
            {
              "type": 'Device',
              "profile": 'http://hl7.org/fhir/device',
              "interaction": [
                {
                  "code": 'search-type'
                },
                {
                  "code": 'read'
                }
              ],
              "searchParam": [
                {
                  "name": '_revinclude',
                  "definition": 'http://hl7.org/fhir/SearchParameter/Resource-revinclude',
                  "type": 'token',
                  "documentation": 'Includes Provenance resource in response. It may only be provided if at least one
				  other parameter is provided.'
                },
                {
                  "name": 'patient',
                  "definition": 'http://hl7.org/fhir/SearchParameter/clinical-patient',
                  "type": 'reference',
                  "documentation": 'Bundle contains Device resources matching the specified patient plus any other
				  criteria.'
                },
                {
                  "name": '_id',
                  "definition": 'http://hl7.org/fhir/SearchParameter/Resource-id',
                  "type": 'token',
                  "documentation": 'Bundle contains a Device resource with the id requested plus any other search
				  criteria.'
                }
              ],
              "searchRevInclude": [
                'Provenance:target'
              ]
            },
            {
              "type": 'DiagnosticReport',
              "profile": 'http://hl7.org/fhir/diagnosticreport',
              "interaction": [
                {
                  "code": 'search-type'
                },
                {
                  "code": 'read'
                }
              ],
              "searchParam": [
                {
                  "name": 'date',
                  "definition": 'http://hl7.org/fhir/SearchParameter/clinical-date',
                  "type": 'date',
                  "documentation": 'Bundle contains any DiagnosticReport resources for the [date] requested.'
                },
                {
                  "name": '_revinclude',
                  "definition": 'http://hl7.org/fhir/SearchParameter/Resource-revinclude',
                  "type": 'token',
                  "documentation": 'Bundle contains all the DiagnosticReport resources matching the search criteria
				  and the Provenance resources for the result set.'
                },
                {
                  "name": 'code',
                  "definition": 'http://hl7.org/fhir/SearchParameter/clinical-code',
                  "type": 'token',
                  "documentation": 'Bundle contains any DiagnosticReport resources for the requested [code] where
				  [system] and [code] refer to DiagnosticReport.code.coding.system and
				  DiagnosticReport.code.coding.code plus any other criteria.'
                },
                {
                  "name": '_count',
                  "definition": 'http://hl7.org/fhir/SearchParameter/Resource-count',
                  "type": 'number',
                  "documentation": 'Number of resources should be returned in single page'
                },
                {
                  "name": 'patient',
                  "definition": 'http://hl7.org/fhir/SearchParameter/clinical-patient',
                  "type": 'reference',
                  "documentation": 'Bundle contains a DiagnosticReport resource with the [Patient] requested plus
				  any other criteria'
                },
                {
                  "name": '_id',
                  "definition": 'http://hl7.org/fhir/SearchParameter/Resource-id',
                  "type": 'token',
                  "documentation": 'Bundle contains a DiagnosticReport resource with the [id] requested plus any other
				  criteria'
                },
                {
                  "name": 'encounter',
                  "definition": 'http://hl7.org/fhir/SearchParameter/clinical-encounter',
                  "type": 'reference',
                  "documentation": 'Bundle contains any DiagnosticReport resources for the [encounter] requested plus
				  any other criteria.'
                },
                {
                  "name": 'category',
                  "definition": 'http://hl7.org/fhir/SearchParameter/DiagnosticReport-category',
                  "type": 'token',
                  "documentation": 'Bundle contains DiagnosticReport resources for the specified [patient] with the
				  requested [category] where [system] and [code] refer to DiagnosticReport.category.coding.system
				  and DiagnosticReport.category.coding.code plus any other criteria.'
                }
              ],
              "searchRevInclude": [
                'Provenance:target'
              ]
            },
            {
              "type": 'Patient',
              "profile": 'http://hl7.org/fhir/patient',
              "interaction": [
                {
                  "code": 'search-type'
                },
                {
                  "code": 'read'
                }
              ],
              "searchParam": [
                {
                  "name": 'given',
                  "definition": 'http://hl7.org/fhir/SearchParameter/individual-given',
                  "type": 'string',
                  "documentation": 'Bundle contains Patient resources matching of the start of the given name
				  (first or middle) to the given value are eligible plus any other search criteria.'
                },
                {
                  "name": 'identifier',
                  "definition": 'http://hl7.org/fhir/SearchParameter/Patient-identifier',
                  "type": 'token',
                  "documentation": 'Bundle contains Patient resources matching the identifier requested where the
				  [system] value matches Patient.identifier.system and [code] value matches Patient.identifier.value
				  plus any other search criteria.'
                },
                {
                  "name": '_revinclude',
                  "definition": 'http://hl7.org/fhir/SearchParameter/Resource-revinclude',
                  "type": 'token',
                  "documentation": 'Bundle contains all the Patient resources matching the search criteria and the
				  Provenance resources for the result set.'
                },
                {
                  "name": 'birthdate',
                  "definition": 'http://hl7.org/fhir/SearchParameter/individual-birthdate',
                  "type": 'date',
                  "documentation": 'Bundle contains Patient resources matching the birthdate plus any other search
				  criteria.'
                },
                {
                  "name": 'gender',
                  "definition": 'http://hl7.org/fhir/SearchParameter/individual-gender',
                  "type": 'token',
                  "documentation": 'Bundle contains Patient resources matching the gender requested where the [system]
				  value = http://hl7.org/fhir/ValueSet/administrative-gender and [code] value matches Patient.gender
				  plus any other search criteria.'
                },
                {
                  "name": 'name',
                  "definition": 'http://hl7.org/fhir/SearchParameter/Patient-name',
                  "type": 'string',
                  "documentation": 'Bundle contains Patient resources matching the start of either a family (last)
				  or given (first or middle) names to the name value plus any other search criteria.'
                },
                {
                  "name": '_id',
                  "definition": 'http://hl7.org/fhir/SearchParameter/Resource-id',
                  "type": 'token',
                  "documentation": 'Bundle contains a Patient resource with the id requested plus any other search
				  criteria.'
                },
                {
                  "name": 'family',
                  "definition": 'http://hl7.org/fhir/SearchParameter/individual-family',
                  "type": 'string',
                  "documentation": 'Bundle contains Patient resources matching the start of the family name (last)
				  to the family value are eligible plus any other search criteria.'
                },
                {
                  "name": 'identifier:of-type',
                  "definition": 'http://hl7.org/fhir/SearchParameter/Patient-identifier',
                  "type": 'token',
                  "documentation": 'Bundle contains Patient resources matching the identifier requested where the
				  [system] value matches Patient.identifier.type.coding.system, [code] values matches
				  Patient.identifier.type.coding.code, and [value] values matches Patient.identifier.value plus
				  any other search criteria.'
                }
              ],
              "searchRevInclude": [
                'Provenance:target'
              ]
            },
            {
              "type": 'Practitioner',
              "profile": 'http://hl7.org/fhir/practitioner',
              "interaction": [
                {
                  "code": 'search-type'
                },
                {
                  "code": 'read'
                }
              ],
              "searchParam": [
                {
                  "name": 'given',
                  "definition": 'http://hl7.org/fhir/SearchParameter/individual-given',
                  "type": 'string',
                  "documentation": 'Fetches a bundle of all Practitioners resource matching the given name.'
                },
                {
                  "name": 'identifier',
                  "definition": 'http://hl7.org/fhir/SearchParameter/Practitioner-identifier',
                  "type": 'token',
                  "documentation": 'Practitioner resources matching the identifier requested where the [system] value
				  matches  Practitioner.identifier.system and [code] value matches Practitioner.identifier.value
				  are eligible for the response.'
                },
                {
                  "name": 'name',
                  "definition": 'http://hl7.org/fhir/SearchParameter/Practitioner-name',
                  "type": 'string',
                  "documentation": 'Fetches a bundle of all Practitioners resource matching the name.'
                },
                {
                  "name": '_id',
                  "definition": 'http://hl7.org/fhir/SearchParameter/Resource-id',
                  "type": 'token',
                  "documentation": 'Fetches a Practitioner resource by the logical id of the resource.'
                },
                {
                  "name": 'family',
                  "definition": 'http://hl7.org/fhir/SearchParameter/individual-family',
                  "type": 'string',
                  "documentation": 'Fetches a bundle of all Practitioners resource matching the family.'
                }
              ]
            },
            {
              "type": 'AllergyIntolerance',
              "profile": 'http://hl7.org/fhir/allergyintolerance',
              "interaction": [
                {
                  "code": 'search-type'
                },
                {
                  "code": 'read'
                }
              ],
              "searchParam": [
                {
                  "name": '_revinclude',
                  "definition": 'http://hl7.org/fhir/SearchParameter/Resource-revinclude',
                  "type": 'token',
                  "documentation": 'Bundle contains all the AllergyIntolerance resources matching the search criteria
				  and the Provenance resources for the result set.'
                },
                {
                  "name": 'patient',
                  "definition": 'http://hl7.org/fhir/SearchParameter/clinical-patient',
                  "type": 'reference',
                  "documentation": 'Bundle contains an AllergyIntolerance resource with the [patient] plus any other
				  search criteria.'
                },
                {
                  "name": '_id',
                  "definition": 'http://hl7.org/fhir/SearchParameter/Resource-id',
                  "type": 'token',
                  "documentation": 'Bundle contains an AllergyIntolerance resource with the [id] plus any other
				  search criteria.'
                }
              ],
              "searchRevInclude": [
                'Provenance:target'
              ]
            },
            {
              "type": 'CarePlan',
              "profile": 'http://hl7.org/fhir/careplan',
              "interaction": [
                {
                  "code": 'search-type'
                },
                {
                  "code": 'read'
                }
              ],
              "searchParam": [
                {
                  "name": '_revinclude',
                  "definition": 'http://hl7.org/fhir/SearchParameter/Resource-revinclude',
                  "type": 'token',
                  "documentation": 'Includes Provenance resource in the response.'
                },
                {
                  "name": '_count',
                  "definition": 'http://hl7.org/fhir/SearchParameter/Resource-count',
                  "type": 'number',
                  "documentation": 'Number of resources should be returned in single page'
                },
                {
                  "name": 'patient',
                  "definition": 'http://hl7.org/fhir/SearchParameter/clinical-patient',
                  "type": 'reference',
                  "documentation": 'Bundle contains CarePlan resource for the specified patient plus any other
				  criteria.'
                },
                {
                  "name": '_id',
                  "definition": 'http://hl7.org/fhir/SearchParameter/Resource-id',
                  "type": 'token',
                  "documentation": 'Bundle contains a CarePlan resource with the id requested plus any other search
				  criteria.'
                },
                {
                  "name": 'encounter',
                  "definition": 'http://hl7.org/fhir/SearchParameter/CarePlan-encounter',
                  "type": 'reference',
                  "documentation": 'Bundle contains CarePlan resources for the specified [patient] and the specified
				  [encounter].'
                },
                {
                  "name": 'category',
                  "definition": 'http://hl7.org/fhir/SearchParameter/CarePlan-category',
                  "type": 'token',
                  "documentation": 'Bundle contains CarePlan resources for the specified [patient] with the requested
				  [category] where [system] and [code] refer CarePlan.category.coding.system and
				  CarePlan.category.coding.code plus any other criteria.'
                }
              ],
              "searchRevInclude": [
                'Provenance:target'
              ]
            },
            {
              "type": 'Goal',
              "profile": 'http://hl7.org/fhir/goal',
              "interaction": [
                {
                  "code": 'search-type'
                },
                {
                  "code": 'read'
                }
              ],
              "searchParam": [
                {
                  "name": '_revinclude',
                  "definition": 'http://hl7.org/fhir/SearchParameter/Resource-revinclude',
                  "type": 'token',
                  "documentation": 'Includes Provenance resource in response. It may only be provided if at least one
				  other parameter is provided.'
                },
                {
                  "name": 'patient',
                  "definition": 'http://hl7.org/fhir/SearchParameter/clinical-patient',
                  "type": 'reference',
                  "documentation": 'Fetches a bundle of all Goal resources matching the patient reference.'
                },
                {
                  "name": '_id',
                  "definition": 'http://hl7.org/fhir/SearchParameter/Resource-id',
                  "type": 'token',
                  "documentation": 'Fetches a Goal resource by the logical id of the resource.'
                }
              ],
              "searchRevInclude": [
                'Provenance:target'
              ]
            },
            {
              "type": 'CapabilityStatement',
              "profile": 'http://hl7.org/fhir/capabilitystatement',
              "interaction": [
                {
                  "code": 'read'
                }
              ]
            },
            {
              "type": 'Observation',
              "profile": 'http://hl7.org/fhir/observation',
              "interaction": [
                {
                  "code": 'search-type'
                },
                {
                  "code": 'read'
                }
              ],
              "searchParam": [
                {
                  "name": 'date',
                  "definition": 'http://hl7.org/fhir/SearchParameter/clinical-date',
                  "type": 'date',
                  "documentation": 'Bundle contains any Observation resources for the specified patient plus any other
				  criteria and date comparison for selection is made as follows:•    For Social History resources
				  (Observation.category.coding.code = social-history), compare against the date Observeration.issued
				  (functioning as datatype instant)•    For all other Observation resources, compare against the date
				  Observeration.effectiveDateTime (functioning as datatype dateTime).'
                },
                {
                  "name": '_revinclude',
                  "definition": 'http://hl7.org/fhir/SearchParameter/Resource-revinclude',
                  "type": 'token',
                  "documentation": 'Includes Provenance resource in response. It may only be provided if at least one
				  other parameter is provided.'
                },
                {
                  "name": 'code',
                  "definition": 'http://hl7.org/fhir/SearchParameter/clinical-code',
                  "type": 'token',
                  "documentation": 'Bundle contains any Observation resources for the specified patient with the
				  requested code plus any other criteria.'
                },
                {
                  "name": '_count',
                  "definition": 'http://hl7.org/fhir/SearchParameter/Resource-count',
                  "type": 'number',
                  "documentation": 'Number of resources should be returned in single page'
                },
                {
                  "name": 'patient',
                  "definition": 'http://hl7.org/fhir/SearchParameter/clinical-patient',
                  "type": 'reference',
                  "documentation": 'Bundle contains Observation resources for the specified patient plus any other
				  criteria.'
                },
                {
                  "name": '_id',
                  "definition": 'http://hl7.org/fhir/SearchParameter/Resource-id',
                  "type": 'token',
                  "documentation": 'Bundle contains an Observation resource with the logical id requested plus any
				  other criteria.'
                },
                {
                  "name": 'encounter',
                  "definition": 'http://hl7.org/fhir/SearchParameter/clinical-encounter',
                  "type": 'reference',
                  "documentation": 'Bundle contains any Observation resources for the specified patient, the specified
				  encounter and matching the category plus any other criteria.'
                },
                {
                  "name": 'category',
                  "definition": 'http://hl7.org/fhir/SearchParameter/Observation-category',
                  "type": 'token',
                  "documentation": 'Bundle contains Observation resources for the specified patient with the requested
				  category where [system] and [code] refer to Observation.category.coding.system and
				  Observation.category.coding.code plus any other criteria.'
                }
              ],
              "searchRevInclude": [
                'Provenance:target'
              ]
            },
            {
              "type": 'Encounter',
              "profile": 'http://hl7.org/fhir/encounter',
              "interaction": [
                {
                  "code": 'search-type'
                },
                {
                  "code": 'read'
                }
              ],
              "searchParam": [
                {
                  "name": 'date',
                  "definition": 'http://hl7.org/fhir/SearchParameter/clinical-date',
                  "type": 'date',
                  "documentation": 'Bundle contains Encounter resources matching the search criteria with [date]
				  selection made against the date Encounter.Period.start and/or Encounter.Period.end.'
                },
                {
                  "name": '_revinclude',
                  "definition": 'http://hl7.org/fhir/SearchParameter/Resource-revinclude',
                  "type": 'token',
                  "documentation": 'Includes Provenance resource in response. It may only be provided if at least
				  one other parameter is provided.'
                },
                {
                  "name": 'patient',
                  "definition": 'http://hl7.org/fhir/SearchParameter/clinical-patient',
                  "type": 'reference',
                  "documentation": 'Bundle contains Encounter resources for the specified [patient] plus any other
				  criteria'
                },
                {
                  "name": '_id',
                  "definition": 'http://hl7.org/fhirSearchParameter/Resource-id',
                  "type": 'token',
                  "documentation": 'Bundle contains an Encounter resource with the specified [id] plus any other
				  search criteria'
                }
              ],
              "searchRevInclude": [
                'Provenance:target'
              ]
            },
            {
              "type": 'Procedure',
              "profile": 'http://hl7.org/fhir/procedure',
              "interaction": [
                {
                  "code": 'search-type'
                },
                {
                  "code": 'read'
                }
              ],
              "searchParam": [
                {
                  "name": 'date',
                  "definition": 'http://hl7.org/fhir/SearchParameter/clinical-date',
                  "type": 'date',
                  "documentation": 'Supported combination is patient and date. Fetches a bundle containing a Procedure
				  resource for the specified patient and the Procedure performed dateTime.'
                },
                {
                  "name": '_revinclude',
                  "definition": 'http://hl7.org/fhir/SearchParameter/Resource-revinclude',
                  "type": 'token',
                  "documentation": 'Includes Provenance resource in response. It may only be provided if at least one
				  other parameter is provided.'
                },
                {
                  "name": 'patient',
                  "definition": 'http://hl7.org/fhir/SearchParameter/clinical-patient',
                  "type": 'reference',
                  "documentation": 'Fetches a bundle of all Procedure resources matching the patient reference.'
                },
                {
                  "name": '_id',
                  "definition": 'http://hl7.org/fhir/SearchParameter/Resource-id',
                  "type": 'token',
                  "documentation": 'Fetches a Procedure resource by the logical id of the resource'
                },
                {
                  "name": 'encounter',
                  "definition": 'http://hl7.org/fhir/SearchParameter/clinical-encounter',
                  "type": 'reference',
                  "documentation": 'Supported combination is patient and date. Fetches a bundle containing a Procedure
				  resource for the specified patient and the specified encounter.'
                }
              ],
              "searchRevInclude": [
                'Provenance:target'
              ]
            },
            {
              "type": 'Binary',
              "profile": 'http://hl7.org/fhir/binary',
              "interaction": [
                {
                  "code": 'read'
                }
              ]
            },
            {
              "type": 'Person',
              "profile": 'http://hl7.org/fhir/person',
              "interaction": [
                {
                  "code": 'search-type'
                },
                {
                  "code": 'read'
                }
              ],
              "searchParam": [
                {
                  "name": 'identifier',
                  "definition": 'http://hl7.org/fhir/SearchParameter/Person-identifier',
                  "type": 'token',
                  "documentation": 'Fetches a bundle of all Person resources matching the Identifier.'
                },
                {
                  "name": '_id',
                  "definition": 'http://hl7.org/fhir/SearchParameter/Resource-id',
                  "type": 'token',
                  "documentation": 'Fetches a Person resource by the logical id of the resource.'
                }
              ]
            },
            {
              "type": 'DocumentReference',
              "profile": 'http://hl7.org/fhir/documentreference',
              "interaction": [
                {
                  "code": 'search-type'
                },
                {
                  "code": 'read'
                }
              ],
              "searchParam": [
                {
                  "name": 'date',
                  "definition": 'http://hl7.org/fhir/SearchParameter/DocumentReference-date',
                  "type": 'date',
                  "documentation": 'Bundle contains any DocumentReference resources for the specified [patient] plus
				  any other criteria and [date] comparison for selection is made against the date
				  DocumentReference.date (functioning as datatype dateTime; Section: “Response”; sub-section:
				  “Response data types”).'
                },
                {
                  "name": '_revinclude',
                  "definition": 'http://hl7.org/fhir/SearchParameter/Resource-revinclude',
                  "type": 'token',
                  "documentation": 'Includes Provenance resource in response. It may only be provided if at least one
				  other parameter is provided.'
                },
                {
                  "name": '_count',
                  "definition": 'http://hl7.org/fhir/SearchParameter/Resource-count',
                  "type": 'number',
                  "documentation": 'Number of resources should be returned in single page'
                },
                {
                  "name": 'patient',
                  "definition": 'http://hl7.org/fhir/SearchParameter/clinical-patient',
                  "type": 'reference',
                  "documentation": 'Bundle contains DocumentReference resources for the specified patient plus any
				  other criteria'
                },
                {
                  "name": '_id',
                  "definition": 'http://hl7.org/fhir/SearchParameter/Resource-id',
                  "type": 'token',
                  "documentation": 'Bundle contains a DocumentReference resource with the logical id requested plus
				  any other criteria'
                },
                {
                  "name": 'category',
                  "definition": 'http://hl7.org/fhir/SearchParameter/DocumentReference-category',
                  "type": 'token',
                  "documentation": 'Bundle contains DocumentRefrerence resources for the specified patient with the
				  requested category where [system] and [code] refer to DocumentRefrerence.category.coding.system
				  and DocumentReference.category.coding.code plus any other criteria'
                },
                {
                  "name": 'type',
                  "definition": 'http://hl7.org/fhir/SearchParameter/clinical-type',
                  "type": 'token',
                  "documentation": 'Bundle contains DocumentReference resources for the specified [patient] with the
				  requested [type] where [system] and [code] refer to DocumentReference.type.coding.system and
				  DocumentReference.type.coding.code plus any other criteria.'
                }
              ],
              "searchRevInclude": [
                'Provenance:target'
              ],
              "operation": [
                {
                  "name": '$docref',
                  "definition": 'http://hl7.org/fhir/us/core/OperationDefinition-docref.html',
                  "documentation": "$docref returns a bundle of type 'searchset' of DocumentReference resources
				  containing all summary of episode note documents stored in document management for a patient.
				  This operation takes the input parameter, patient id."
                }
              ]
            }
          ]
        }
      ]
    }.freeze

    R4_WELLKNOWN_PATIENT_PERSONA ||= {
      "authorization_endpoint": 'https://authorization.sandboxcerner.com/tenants/3f2aca24-87f3-4eac-a6d7-1f75247e6b43/protocols/oauth2/profiles/smart-v1/personas/patient/authorize',
      "token_endpoint": 'https://authorization.sandboxcerner.com/tenants/3f2aca24-87f3-4eac-a6d7-1f75247e6b43/hosts/fhir-myrecord-sc.stagingcerner.com/protocols/oauth2/profiles/smart-v1/token',
      "token_endpoint_auth_methods_supported": [
        'client_secret_basic'
      ],
      "scopes_supported": [
        'launch/patient',
        'openid',
        'fhiruser',
        'offline-access',
        'online-access',
        'user/AllergyIntolerance.read',
        'user/Binary.read',
        'user/CarePlan.read',
        'user/CareTeam.read',
        'user/Condition.read',
        'user/Device.read',
        'user/DiagnosticReport.read',
        'user/DocumentReference.read',
        'user/Encounter.read',
        'user/Goal.read',
        'user/Immunization.read',
        'user/MedicationRequest.read',
        'user/Observation.read',
        'user/Organization.read',
        'user/Patient.read',
        'user/Practitioner.read',
        'user/Procedure.read',
        'user/Provenance.read',
        'patient/AllergyIntolerance.read',
        'patient/Binary.read',
        'patient/CarePlan.read',
        'patient/CareTeam.read',
        'patient/Condition.read',
        'patient/Device.read',
        'patient/DiagnosticReport.read',
        'patient/DocumentReference.read',
        'patient/Encounter.read',
        'patient/Goal.read',
        'patient/Immunization.read',
        'patient/MedicationRequest.read',
        'patient/Observation.read',
        'patient/Patient.read',
        'patient/Procedure.read',
        'patient/Provenance.read'
      ],
      "response_types_supported": [
        'code'
      ],
      "management_endpoint": 'https://authorization.sandboxcerner.com/tenants/3f2aca24-87f3-4eac-a6d7-1f75247e6b43/personas/patient/my-authorizations',
      "introspection_endpoint": 'https://authorization.sandboxcerner.com/tokeninfo',
      "capabilities": [
        'launch-standalone',
        'client-public',
        'client-confidential-symmetric',
        'sso-openid-connect',
        'context-banner',
        'context-style',
        'context-standalone-patient',
        'permission-offline',
        'permission-patient',
        'permission-user'
      ]
    }.freeze

    R4_WELLKNOWN_PROVIDER_SYSTEM_PERSONA ||= {
      "authorization_endpoint": 'https://authorization.sandboxcerner.com/tenants/3f2aca24-87f3-4eac-a6d7-1f75247e6b43/protocols/oauth2/profiles/smart-v1/personas/provider/authorize',
      "token_endpoint": 'https://authorization.sandboxcerner.com/tenants/3f2aca24-87f3-4eac-a6d7-1f75247e6b43/hosts/fhir-ehr-sc.stagingcerner.com/protocols/oauth2/profiles/smart-v1/token',
      "token_endpoint_auth_methods_supported": [
        'client_secret_basic',
        'private_key_jwt'
      ],
      "token_endpoint_auth_signing_alg_values_supported": [
        'RS384',
        'ES384'
      ],
      "scopes_supported": [
        'launch',
        'openid',
        'fhiruser',
        'offline-access',
        'online-access',
        'user/AllergyIntolerance.read',
        'user/Binary.read',
        'user/CarePlan.read',
        'user/CareTeam.read',
        'user/Condition.read',
        'user/Device.read',
        'user/DiagnosticReport.read',
        'user/DocumentReference.read',
        'user/Encounter.read',
        'user/Goal.read',
        'user/Immunization.read',
        'user/MedicationRequest.read',
        'user/Observation.read',
        'user/Organization.read',
        'user/Patient.read',
        'user/Practitioner.read',
        'user/Procedure.read',
        'user/Provenance.read',
        'patient/AllergyIntolerance.read',
        'patient/Binary.read',
        'patient/CarePlan.read',
        'patient/CareTeam.read',
        'patient/Condition.read',
        'patient/Device.read',
        'patient/DiagnosticReport.read',
        'patient/DocumentReference.read',
        'patient/Encounter.read',
        'patient/Goal.read',
        'patient/Immunization.read',
        'patient/MedicationRequest.read',
        'patient/Observation.read',
        'patient/Patient.read',
        'patient/Procedure.read',
        'patient/Provenance.read',
        'system/AllergyIntolerance.read',
        'system/Binary.read',
        'system/CarePlan.read',
        'system/CareTeam.read',
        'system/Condition.read',
        'system/Device.read',
        'system/DiagnosticReport.read',
        'system/DocumentReference.read',
        'system/Encounter.read',
        'system/Goal.read',
        'system/Immunization.read',
        'system/MedicationRequest.read',
        'system/Observation.read',
        'system/Organization.read',
        'system/Patient.read',
        'system/Practitioner.read',
        'system/Procedure.read',
        'system/Provenance.read'
      ],
      "response_types_supported": [
        'code'
      ],
      "management_endpoint": 'https://authorization.sandboxcerner.com/tenants/3f2aca24-87f3-4eac-a6d7-1f75247e6b43/personas/provider/my-authorizations',
      "introspection_endpoint": 'https://authorization.sandboxcerner.com/tokeninfo',
      "capabilities": [
        'launch-ehr',
        'launch-standalone',
        'client-public',
        'client-confidential-symmetric',
        'sso-openid-connect',
        'context-banner',
        'context-style',
        'context-ehr-encounter',
        'context-ehr-patient',
        'permission-offline',
        'permission-patient',
        'permission-user'
      ]
    }.freeze
  end
end
