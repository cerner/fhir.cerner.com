module Cerner
  module Resources

    DSTU2_IMMUNIZATION_BUNDLE ||=
      {
        "resourceType": "Bundle",
        "id": "820593c3-6f15-417b-83bd-f55fdb1ac720",
        "type": "searchset",
        "total": 1,
        "link": [
          {
            "relation": "self",
            "url": "https://fhir-open.sandboxcerner.com/dstu2/0b8a0111-e8e6-4c26-a91c-5069cbc6b1ca/Immunization?patient=4478007"
          }
        ],
        "entry": [
          {
            "fullUrl": "https://fhir-open.sandboxcerner.com/dstu2/0b8a0111-e8e6-4c26-a91c-5069cbc6b1ca/Immunization/M6753285",
            "resource": {
              "resourceType": "Immunization",
              "id": "M6753285",
              "meta": {
                "versionId": "1",
                "lastUpdated": "2016-09-09T09:32:39-05:00"
              },
              "text": {
                "status": "generated",
                "div": "&lt;div&gt;&lt;p&gt;&lt;b&gt;Immunization&lt;/b&gt;&lt;/p&gt;&lt;p&gt;&lt;b&gt;Vaccine&lt;/b&gt;: tetanus toxoid&lt;/p&gt;&lt;p&gt;&lt;b&gt;Date&lt;/b&gt;: 2016-09-09T07:29:00-05:00&lt;/p&gt;&lt;p&gt;&lt;b&gt;Given&lt;/b&gt;: Yes&lt;/p&gt;&lt;p&gt;&lt;b&gt;Administered by&lt;/b&gt;: Fhir, Mann&lt;/p&gt;&lt;p&gt;&lt;b&gt;Site&lt;/b&gt;: Left Gluteus Medius&lt;/p&gt;&lt;p&gt;&lt;b&gt;Route&lt;/b&gt;: IM&lt;/p&gt;&lt;/div&gt;"
              },
              "status": "completed",
              "date": "2016-09-09T07:29:00-05:00",
              "vaccineCode": {
                "coding": [
                  {
                    "system": "http://hl7.org/fhir/sid/cvx",
                    "code": "112",
                    "display": "tetanus toxoid, unspecified formulation",
                    "userSelected": false
                  }
                ],
                "text": "tetanus toxoid"
              },
              "patient": {
                "reference": "Patient/4478007",
                "display": "SMART, FRED RICK"
              },
              "wasNotGiven": false,
              "reported": false,
              "performer": {
                "reference": "Practitioner/4474007",
                "display": "Fhir, Mann"
              },
              "encounter": {
                "reference": "Encounter/4135906"
              },
              "manufacturer": {
                "display": "Johnson and Johnson/Merck Consumer"
              },
              "location": {
                "reference": "Location/35646793",
                "display": "A"
              },
              "lotNumber": "L0909",
              "expirationDate": "2017-09-11",
              "site": {
                "coding": [
                  {
                    "system": "http://snomed.info/sct",
                    "code": "78333006",
                    "display": "structure of gluteus medius muscle (body structure)",
                    "userSelected": false
                  }
                ],
                "text": "Left Gluteus Medius"
              },
              "route": {
                "text": "IM"
              },
              "doseQuantity": {
                "value": 1,
                "unit": "mL",
                "system": "http://unitsofmeasure.org",
                "code": "mL"
              }
            }
          }
        ]
      }

    DSTU2_IMMUNIZATION_1 ||=
      {
        "resourceType": "Immunization",
        "id": "M5251276",
        "meta": {
          "versionId": "1",
          "lastUpdated": "2015-09-03T22:37:49-05:00"
          },
        "text": {
          "status": "generated",
          "div": "&lt;div&gt;&lt;p&gt;&lt;b&gt;Immunization&lt;/b&gt;&lt;/p&gt;&lt;p&gt;&lt;b&gt;Vaccine&lt;/b&gt;: Lyme disease vaccine&lt;/p&gt;&lt;p&gt;&lt;b&gt;Date&lt;/b&gt;: 2015-09-03T20:35:00-05:00&lt;/p&gt;&lt;p&gt;&lt;b&gt;Given&lt;/b&gt;: Yes&lt;/p&gt;&lt;p&gt;&lt;b&gt;Administered by&lt;/b&gt;: Fhir, Enginne&lt;/p&gt;&lt;p&gt;&lt;b&gt;Site&lt;/b&gt;: Left Thigh&lt;/p&gt;&lt;p&gt;&lt;b&gt;Route&lt;/b&gt;: IM&lt;/p&gt;&lt;/div&gt;"
          },
        "status": "completed",
        "date": "2015-09-03T20:35:00-05:00",
        "vaccineCode": {
          "coding": [
            {
              "system": "http://hl7.org/fhir/sid/cvx",
              "code": "66",
              "display": "Lyme disease",
              "userSelected": false
            }
          ],
          "text": "Lyme disease vaccine"
         },
        "patient": {
          "reference": "Patient/1316024",
          "display": "PETERS, TIMOTHY"
        },
        "wasNotGiven": false,
        "reported": false,
        "performer": {
          "reference": "Practitioner/2270007",
          "display": "Fhir, Enginne"
        },
        "encounter": {
          "reference": "Encounter/1589927"
        },
        "manufacturer": {
          "display": "3M Pharmaceuticals"
        },
        "location": {
          "reference": "Location/4048296",
          "display": "FPC"
        },
        "lotNumber": "23234",
        "expirationDate": "2015-09-14",
        "site": {
          "coding": [
            {
              "system": "http://snomed.info/sct",
              "code": "61396006",
              "display": "structure of left thigh (body structure)",
              "userSelected": false
            }
          ],
          "text": "Left Thigh"
        },
        "route": {
          "text": "IM"
        },
        "doseQuantity": {
          "value": 1,
          "unit": "mL",
          "system": "http://unitsofmeasure.org",
          "code": "mL"
        }
      }
  end
end
