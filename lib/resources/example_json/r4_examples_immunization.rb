module Cerner
  module Resources
    R4_IMMUNIZATION_ENTRY ||= {
      "resourceType": "Immunization",
      "id": "M43434511",
      "meta": {
        "versionId": "1",
        "lastUpdated": "2016-09-02T10:13:41-0500"
      },
      "text": {
        "status": "generated",
        "div": "&lt;div&gt;&lt;p&gt;&lt;b&gt;Immunization&lt;/b&gt;&lt;/p&gt;&lt;p&gt;&lt;b&gt;Vaccine&lt;/b&gt;"\
               ": rotavirus vaccine&lt;/p&gt;&lt;p&gt;&lt;b&gt;Occurrence&lt;/b&gt;: Sep  2, 2016 10:13 A.M. CDT&lt;/p&gt;&lt;"\
               "p&gt;&lt;b&gt;Patient&lt;/b&gt;: Houde, Harry Potter&lt;/p&gt;&lt;p&gt;&lt;b&gt;Status&lt;/b&gt;: completed&lt;"\
               "/p&gt;&lt;p&gt;&lt;b&gt;Administered by&lt;/b&gt;: Houde, Darrell&lt;/p&gt;&lt;p&gt;&lt;b>Site&lt;/b&gt;: Left "\
               "Deltoid&lt;/p&gt;&lt;p&gt;&lt;b&gt;Route&lt;/b&gt;: IM&lt;/p&gt;&lt;/div&gt;"
      },
      "status": "completed",
      "vaccineCode": {
        "coding": [
          {
            "system": "http://hl7.org/fhir/sid/cvx",
            "code": "122",
            "display": "rotavirus, unspecified formulation",
            "userSelected": false
          }
        ],
        "text": "rotavirus vaccine"
      },
      "patient": {
        "reference": "Patient/1316020",
        "display": "Houde, Harry Potter"
      },
      "encounter": {
        "reference": "Encounter/1693915"
      },
      "occurrenceDateTime": "2016-09-02T10:13:00-0500",
      "primarySource": true,
      "manufacturer": {
        "reference": "Organization/4297239",
        "display": "Adams Laboratories"
      },
      "lotNumber": "4rft56y",
      "expirationDate": "2015-02-28",
      "site": {
        "coding": [
          {
            "system": "http://snomed.info/sct",
            "code": "37622008",
            "display": "deltoid region structure (body structure)",
            "userSelected": false
          }
        ],
        "text": "Left Deltoid"
      },
      "route": {
        "coding": [
          {
            "system": "http://snomed.info/sct",
            "code": "78421000",
            "display": "Intramuscular route (qualifier value)",
            "userSelected": false
          }
        ],
        "text": "IM"
      },
      "doseQuantity": {
        "value": 0.5
      },
      "performer": [
        {
          "function": {
            "coding": [
              {
                "system": "http://terminology.hl7.org/CodeSystem/v2-0443",
                "code": "AP",
                "display": "Administering Provider"
              }
            ],
          "text": "Administering Provider"
          },
          "actor": {
            "reference": "Practitioner/1316008",
            "display": "Doe, John"
          }
        }
      ]
    }

    R4_IMMUNIZATION_BUNDLE ||= {
      "resourceType": "Bundle",
      "id": "9642361d-bab9-444d-a35a-7adce079b8a6",
      "type": "searchset",
      "total": 1,
      "link": [
        {
          "relation": "self",
          "url": "https://fhir-open.sandboxcerner.com/r4/0b8a0111-e8e6-4c26-a91c-5069cbc6b1ca/Immunization?patient=1316020"
        }
      ],
      "entry": [
        {
          "fullUrl": "https://fhir-open.sandboxcerner.com/r4/0b8a0111-e8e6-4c26-a91c-5069cbc6b1ca/Immunization/M43434511",
          "resource": R4_IMMUNIZATION_ENTRY
        }
      ]
    }

    R4_IMMUNIZATION_CREATE ||= {
      "resourceType": "Immunization",
      "status": "completed",
      "occurrenceDateTime": "2019-06-30T10:35:00-05:00",
      "vaccineCode": {
        "coding": [
          {
            "system": "https://fhir.cerner.com/0b8a0111-e8e6-4c26-a91c-5069cbc6b1ca/codeSet/72",
            "code": "2798497",
            "display": "poliovirus vaccine, inactivated",
            "userSelected": false
          }
        ],
        "text": "poliovirus vaccine, inactivated"
      },
      "patient": {
        "reference": "Patient/123820084",
        "display": "Immun, Test1"
      },
      "encounter": {
        "reference": "Encounter/36209678"
      },
      "reportOrigin": {
        "coding": [
          {
            "system": "https://fhir.cerner.com/0b8a0111-e8e6-4c26-a91c-5069cbc6b1ca/codeSet/30200",
            "code": "679972",
            "display": "Clinician",
            "userSelected": false
          }
        ],
        "text": "Clinician"
      },
      "site": {
        "coding": [
          {
            "system": "https://fhir.cerner.com/0b8a0111-e8e6-4c26-a91c-5069cbc6b1ca/codeSet/97",
            "code": "610",
            "display": "Right Hand",
            "userSelected": false
          }
        ],
        "text": "Right Hand"
      },
      "route": {
        "coding": [
          {
            "system": "https://fhir.cerner.com/0b8a0111-e8e6-4c26-a91c-5069cbc6b1ca/codeSet/4001",
            "code": "318167",
            "display": "IM",
            "userSelected": false
          }
        ],
        "text": "IM"
      }
    }
  end
end
