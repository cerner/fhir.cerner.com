module Cerner
  module Resources

    DSTU2_CONDITION_PROBLEM_RESOURCE = {
      "resourceType": "Condition",
      "id": "p6317881",
      "meta": {
        "versionId": "6317881",
        "lastUpdated": "2016-06-27T18:51:27.000Z"
      },
      "text": {
        "status": "generated",
        "div": "&lt;div&gt;&lt;p&gt;&lt;b&gt;Condition&lt;/b&gt;&lt;/p&gt;&lt;p&gt;&lt;b&gt;Patient&lt;/b&gt;: Smart, Timmy&lt;/p&gt;&lt;p&gt;&lt;b&gt;Problem&lt;/b&gt;: Ear infection&lt;/p&gt;&lt;p&gt;&lt;b&gt;Clinical Status&lt;/b&gt;: Active&lt;/p&gt;&lt;p&gt;&lt;b&gt;Verification Status&lt;/b&gt;: Confirmed&lt;/p&gt;&lt;p&gt;&lt;b&gt;Resolved&lt;/b&gt;: false&lt;/p&gt;&lt;/div&gt;"
      },
      "patient": {
        "reference": "Patient/4342012",
        "display": "Smart, Timmy"
      },
      "asserter": {
        "reference": "Practitioner/1912007",
        "display": "Forrest, Fhir"
      },
      "dateRecorded": "2016-06-27",
      "code": {
        "text": "Ear infection"
      },
      "category": {
        "coding": [
          {
            "system": "http://argonaut.hl7.org",
            "code": "problem",
            "display": "Problem"
          }
        ],
        "text": "Problem"
      },
      "clinicalStatus": "active",
      "verificationStatus": "confirmed"
    }

    DSTU2_CONDITION_DIAGNOSIS_RESOURCE = {
      "resourceType": "Condition",
      "id": "d35686553",
      "meta": {
        "versionId": "35686553",
        "lastUpdated": "2016-06-27T19:02:31.000Z"
      },
      "text": {
        "status": "generated",
        "div": "&lt;div&gt;&lt;p&gt;&lt;b&gt;Condition&lt;/b&gt;&lt;/p&gt;&lt;p&gt;&lt;b&gt;Patient&lt;/b&gt;: Smart, Timmy&lt;/p&gt;&lt;p&gt;&lt;b&gt;Diagnosis&lt;/b&gt;: Ear Infection (Right)&lt;/p&gt;&lt;p&gt;&lt;b&gt;Clinical Status&lt;/b&gt;: active&lt;/p&gt;&lt;p&gt;&lt;b&gt;Verification Status&lt;/b&gt;: Unknown&lt;/p&gt;&lt;p&gt;&lt;b&gt;Onset&lt;/b&gt;: 2016-06-27&lt;/p&gt;&lt;/div&gt;"
      },
      "patient": {
        "reference": "Patient/4342012",
        "display": "Smart, Timmy"
      },
      "encounter": {
        "reference": "Encounter/4027933"
      },
      "asserter": {
        "reference": "Practitioner/1912007",
        "display": "Forrest, Fhir"
      },
      "dateRecorded": "2016-06-27",
      "code": {
        "text": "Ear Infection (Right)"
      },
      "category": {
        "coding": [
          {
            "system": "http://hl7.org/fhir/condition-category",
            "code": "diagnosis",
            "display": "Diagnosis"
          }
        ],
        "text": "Diagnosis"
      },
      "clinicalStatus": "active",
      "verificationStatus": "unknown",
      "onsetDateTime": "2016-06-27"
    }

    DSTU2_CONDITION_HEALTH_CONCERN_RESOURCE = {
      "resourceType": "Condition",
      "id": "b5777d90-52f0-42e8-9f68-485c4d2375a7",
      "meta": {
        "versionId": "b5777d90-52f0-42e8-9f68-485c4d2375a7",
        "lastUpdated": "2019-06-10T19:26:44.000Z"
      },
      "text": {
        "status": "generated",
        "div": "&lt;div&gt;&lt;p&gt;&lt;b&gt;Condition&lt;/b&gt;&lt;/p&gt;&lt;p&gt;&lt;b&gt;Patient&lt;/b&gt;: SMART Jr, FRED RICK&lt;/p&gt;&lt;p&gt;&lt;b&gt;Health Concern&lt;/b&gt;: Patient is afraid of falling                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        &lt;/p&gt;&lt;p&gt;&lt;b&gt;Clinical Status&lt;/b&gt;: Active&lt;/p&gt;&lt;p&gt;&lt;b&gt;Verification Status&lt;/b&gt;: Confirmed&lt;/p&gt;&lt;p&gt;&lt;b&gt;Onset&lt;/b&gt;: Jun 10, 2019&lt;/p&gt;&lt;p&gt;&lt;b&gt;Resolved&lt;/b&gt;: False&lt;/p&gt;&lt;/div&gt;"
      },
      "patient": {
        "reference": "Patient/4478007",
        "display": "SMART Jr, FRED RICK"
      },
      "asserter": {
        "reference": "Patient/4478007",
        "display": "SMART Jr, FRED RICK"
      },
      "dateRecorded": "2019-06-10",
      "code": {
        "text": "Patient is afraid of falling                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        "
      },
      "category": {
        "coding": [
          {
            "system": "http://argonaut.hl7.org",
            "code": "health-concern",
            "display": "Health Concern"
          }
        ],
        "text": "Health Concern"
      },
      "clinicalStatus": "active",
      "verificationStatus": "confirmed",
      "onsetDateTime": "2019-06-10",
      "abatementBoolean": false
    }

    DSTU2_CONDITION_BUNDLE ||= {
      "resourceType": "Bundle",
      "id": "5a31a14a-9740-459c-bc52-b105b81ebebc",
      "type": "searchset",
      "total": 3,
      "link": [
        {
          "relation": "self",
          "url": "https://fhir-open.sandboxcerner.com/dstu2/0b8a0111-e8e6-4c26-a91c-5069cbc6b1ca/Condition?patient=4342012"
        }
      ],
      "entry": [
        {
          "fullUrl": "https://fhir-open.sandboxcerner.com/dstu2/0b8a0111-e8e6-4c26-a91c-5069cbc6b1ca/Condition/d35686553",
          "resource": DSTU2_CONDITION_DIAGNOSIS_RESOURCE
        },
        {
          "fullUrl": "https://fhir-open.sandboxcerner.com/dstu2/0b8a0111-e8e6-4c26-a91c-5069cbc6b1ca/Condition/p6317881",
          "resource": DSTU2_CONDITION_PROBLEM_RESOURCE
        },
        {
          "fullUrl": "https://fhir-open.sandboxcerner.com/dstu2/0b8a0111-e8e6-4c26-a91c-5069cbc6b1ca/Condition/b5777d90-52f0-42e8-9f68-485c4d2375a7",
          "resource": DSTU2_CONDITION_HEALTH_CONCERN_RESOURCE
        }
      ]
    }

    DSTU2_CONDITION_BUNDLE_BY_ID ||= {
      "resourceType": "Bundle",
      "id": "5a31a14a-9740-459c-bc52-b105b81ebebc",
      "type": "searchset",
      "total": 3,
      "link": [
        {
          "relation": "self",
          "url": "https://fhir-open.sandboxcerner.com/dstu2/0b8a0111-e8e6-4c26-a91c-5069cbc6b1ca/Condition?_id=d35686553,p6317881,b5777d90-52f0-42e8-9f68-485c4d2375a7"
        }
      ],
      "entry": [
        {
          "fullUrl": "https://fhir-open.sandboxcerner.com/dstu2/0b8a0111-e8e6-4c26-a91c-5069cbc6b1ca/Condition/d35686553",
          "resource": DSTU2_CONDITION_DIAGNOSIS_RESOURCE
        },
        {
          "fullUrl": "https://fhir-open.sandboxcerner.com/dstu2/0b8a0111-e8e6-4c26-a91c-5069cbc6b1ca/Condition/p6317881",
          "resource": DSTU2_CONDITION_PROBLEM_RESOURCE
        },
        {
          "fullUrl": "https://fhir-open.sandboxcerner.com/dstu2/0b8a0111-e8e6-4c26-a91c-5069cbc6b1ca/Condition/b5777d90-52f0-42e8-9f68-485c4d2375a7",
          "resource": DSTU2_CONDITION_HEALTH_CONCERN_RESOURCE
        }
      ]
    }

    DSTU2_CONDITION_PROBLEM_CREATE ||= {
      "resourceType": "Condition",
      "patient": {
        "reference": "Patient/1316020"
      },
      "code": {
        "text": "Freetext Condition"
      },
      "category": {
        "coding": [
          {
            "system": "http://argonaut.hl7.org",
            "code": "problem",
            "display": "Problem"
          }
        ],
        "text": "Problem"
      },
      "clinicalStatus": "resolved",
      "verificationStatus": "differential",
      "abatementDateTime": "2017-01-01T00:00:00Z"
    }

    DSTU2_CONDITION_DIAGNOSIS_CREATE ||= {
      "resourceType": "Condition",
      "patient": {
        "reference": "Patient/1316020"
      },
      "code": {
        "text": "Freetext Diagnosis"
      },
      "category": {
        "coding": [
          {
            "system": "http://hl7.org/fhir/condition-category",
            "code": "diagnosis",
            "display": "Diagnosis"
          }
        ],
        "text": "Diagnosis"
      },
      "clinicalStatus": "active",
      "verificationStatus": "differential",
      "encounter": {
        "reference": "Encounter/2457909"
      }
    }

    DSTU2_CONDITION_PROBLEM_UPDATE ||= {
      "resourceType": "Condition",
      "id": "p6809861",
      "meta": {
        "versionId": "6809861",
        "lastUpdated": "2017-02-28T21:26:44.000Z"
      },
      "patient": {
        "reference": "Patient/1316020"
      },
      "asserter": {
        "reference": "Practitioner/1316007"
      },
      "dateRecorded": "2017-02-28",
      "code": {
        "text": "Freetext Condition"
      },
      "category": {
        "coding": [{
          "system": "http://argonaut.hl7.org",
          "code": "problem",
          "display": "Problem"
        }],
        "text": "Problem"
      },
      "clinicalStatus": "resolved",
      "verificationStatus": "differential",
      "abatementDateTime": "2017-02-01"
    }

    DSTU2_CONDITION_DIAGNOSIS_UPDATE ||= {
      "resourceType": "Condition",
      "id": "d43534563",
      "meta": {
        "versionId": "43538555",
        "lastUpdated": "2019-11-14T17:29:32.000Z"
      },
      "patient": {
        "reference": "Patient/1316020"
      },
      "encounter": {
        "reference": "Encounter/2457909"
      },
      "asserter": {
        "reference": "Practitioner/1"
      },
      "dateRecorded": "2019-11-14",
      "code": {
        "text": "Freetext Diagnosis"
      },
      "category": {
        "coding": [{
          "system": "http://hl7.org/fhir/condition-category",
          "code": "diagnosis",
          "display": "Diagnosis"
        }],
        "text": "Diagnosis"
      },
      "clinicalStatus": "resolved",
      "verificationStatus": "differential",
      "onsetDateTime": "2017-02-28T00:00:00.000Z"
    }

  end
end
