const soarianConfig = {
  // Configuration for resources that have been altered from DSTU2 to R4.
  resourceConfig: {
     combinedResources: [    
    {
      dstu2Resources: ["Conformance"],
      r4Resources: ["CapabilityStatement"],
      notes: "Cerner's Soarian DSTU 2 Conformance resource was renamed to CapabilityStatement in R4."
    },{
      dstu2Resources: ["MedicationStatement"],
      r4Resources: ["MedicationRequest"],
      notes: "Cerner's Soarian DSTU 2 implementations of MedicationStatement were shifted to MedicationRequest in R4."
    },    
    {
      dstu2Resources: ["CarePlan"],
      r4Resources: ["CarePlan", "CareTeam"],
      notes: "Cerner's Soarian DSTU 2 implementations of CarePlan was split into CarePlan and CareTeam in R4."
    }
  ]
  },
  dstu2: {
    metadataUrl: "https://fhir-myrecord-sc.cerner.com/dstu2/2f8f5ec1-b7b8-4be5-ae27-e308284dd9c1/metadata",
    metadataHeaders: { Accept: "application/json+fhir" },
    documentationUrls: {
      "AllergyIntolerance": "/soarian/dstu2/general-clinical/allergy-intolerance/",
      "CarePlan": "/soarian/dstu2/care-provision/careplan/",
      "Condition": "/soarian/dstu2/general-clinical/condition/",
      "Conformance": "/soarian/dstu2/conformance/",
      "Device": "/soarian/dstu2/devices/device/",
      "DiagnosticReport": "/soarian/dstu2/diagnostic/diagnostic-report/",
      "DocumentReference": "/soarian/dstu2/infrastructure/document-reference/",
      "Goal": "/soarian/dstu2/care-provision/goal",
      "Immunization": "/soarian/dstu2/medications/immunization/",
      "MedicationStatement": "/soarian/dstu2/medications/medication-statement/",
      "Observation": "/soarian/dstu2/diagnostic/observation/",
      "Patient": "/soarian/dstu2/individuals/patient/",
      "Procedure": "/soarian/dstu2/general-clinical/procedure/"
    }
  },
  r4: {
    metadataUrl: "https://fhir-myrecord-sc.cerner.com/r4/2f8f5ec1-b7b8-4be5-ae27-e308284dd9c1/metadata",
    metadataHeaders: { Accept: 'application/fhir+json' },
    documentationUrls: {
      "AllergyIntolerance": "/soarian/r4/clinical/summary/allergy-intolerance",
      "Binary": "/soarian/r4/foundation/other/binary",
      "Bundle": "/soarian/r4/foundation/other/bundle",
      "CapabilityStatement": "/soarian/r4/foundation/conformance/capability-statement",
      "CarePlan": "/soarian/r4/clinical/care-provision/care-plan",
      "CareTeam": "/soarian/r4/clinical/care-provision/care-team",
      "Condition": "/soarian/r4/clinical/summary/condition",
      "Device": "/soarian/r4/base/entities/device",
      "DiagnosticReport": "/soarian/r4/clinical/diagnostics/diagnostic-report",
      "DocumentReference": "/soarian/r4/foundation/documents/document-reference",
      "Encounter": "/soarian/r4/base/management/encounter",
      "Goal": "/soarian/r4/clinical/care-provision/goal",
      "Immunization": "/soarian/r4/clinical/medications/immunization",
      "MedicationRequest": "/soarian/r4/clinical/medications/medication-request",
      "MedicationStatement": "/soarian/r4/clinical/medications/medication-statement",
      "Observation": "/soarian/r4/clinical/diagnostics/observation",
      "Organization": "/soarian/r4/base/entities/organization",
      "Patient": "/soarian/r4/base/individuals/patient",
      "Practitioner": "/soarian/r4/base/individuals/practitioner",
      "Procedure": "/soarian/r4/clinical/summary/procedure",
      "Provenance": "/soarian/r4/foundation/security/provenance"
    }
  }
};
