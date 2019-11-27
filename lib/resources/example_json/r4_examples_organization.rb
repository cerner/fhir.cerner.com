module Cerner
  module Resources
 R4_ORGANIZATION_ENTRY ||= {
   "resourceType": "Organization",
   "id": "2113010",
   "meta": {
     "versionId": "0",
     "lastUpdated": "2019-11-27T02:18:49Z"
   },
   "text": {
     "status": "generated",
     "div": "&lt;div&gt;&lt;p&gt;&lt;b&gt;Organization&lt;/b&gt;&lt;/p&gt;&lt;p&gt;&lt;b&gt;Name&lt;/b&gt;: fhir-org1&lt;/p&gt;&lt;p&gt;&lt;b&gt;Status&lt;/b&gt;: Active&lt;/p&gt;&lt;p&gt;&lt;b&gt;NPI&lt;/b&gt;: FHIR-NPI-1011&lt;/p&gt;&lt;/div&gt;"
   },
   "identifier": [
     {
       "use": "official",
       "type": {
         "coding": [
           {
             "system": "https://fhir.cerner.com/fb8067d7-e012-4703-8888-17b86d11f0f8/codeSet/334",
             "code": "NPI",
             "display": "Organization NPI",
             "userSelected": true
           },
           {
             "system": "http://terminology.hl7.org/CodeSystem/v2-0203",
             "code": "NPI",
             "display": "National provider identifier"
           }
         ],
         "text": "Organization NPI"
       },
       "system": "http://hl7.org/fhir/sid/us-npi",
       "value": "FHIR-NPI-1011"
     }
   ],
   "active": true,
   "type": [
     {
       "coding": [
         {
           "system": "https://fhir.cerner.com/fb8067d7-e012-4703-8888-17b86d11f0f8/codeSet/278",
           "code": "GOVTDEPT",
           "display": "Government Department",
           "userSelected": true
         },
         {
           "system": "http://terminology.hl7.org/CodeSystem/organization-type",
           "code": "govt",
           "display": "Government"
         }
       ],
       "text": "Government Department"
     }
   ],
   "name": "fhir-org1",
   "telecom": [
     {
       "extension": [
         {
           "url": "http://hl7.org/fhir/StructureDefinition/data-absent-reason",
           "valueCode": "unknown"
         }
       ]
     }
   ],
   "address": [
     {
       "extension": [
         {
           "url": "http://hl7.org/fhir/StructureDefinition/data-absent-reason",
           "valueCode": "unknown"
         }
       ]
     }
   ]
 }

 R4_ORGANIZATION_BUNDLE ||= {
   "resourceType": "Bundle",
   "id": "c95d5aee-f885-4459-8de9-22e2c851bb76",
   "type": "searchset",
   "total": 1,
   "link": [
     {
       "relation": "self",
       "url": "https://fhir-open.sandboxcerner.com/r4/0b8a0111-e8e6-4c26-a91c-5069cbc6b1ca//Organization?_id=1750115"
     }
   ],
   "entry": [
     {
       "fullUrl": "https://fhir-open.sandboxcerner.com/r4/0b8a0111-e8e6-4c26-a91c-5069cbc6b1ca//Organization/1750115",
       "resource": {
         "resourceType": "Organization",
         "id": "1750115",
         "meta": {
           "versionId": "2",
           "lastUpdated": "2018-04-27T19:46:08Z"
         },
         "text": {
           "status": "generated",
           "div": "&lt;div&gt;&lt;p&gt;&lt;b&gt;Organization&lt;/b&gt;&lt;/p&gt;&lt;p&gt;&lt;b&gt;Name&lt;/b&gt;: RCA Testing Organization&lt;/p&gt;&lt;p&gt;&lt;b&gt;Status&lt;/b&gt;: Active&lt;/p&gt;&lt;p&gt;&lt;b&gt;NPI&lt;/b&gt;: 1234567893&lt;/p&gt;&lt;p&gt;&lt;b&gt;TAXID&lt;/b&gt;: 48-7283726321&lt;/p&gt;&lt;/div&gt;"
         },
         "identifier": [
           {
             "use": "official",
             "type": {
               "coding": [
                 {
                   "system": "https://fhir.cerner.com/fb8067d7-e012-4703-8888-17b86d11f0f8/codeSet/334",
                   "code": "TAXID",
                   "display": "Tax Identifier",
                   "userSelected": true
                 },
                 {
                   "system": "http://terminology.hl7.org/CodeSystem/v2-0203",
                   "code": "TAX",
                   "display": "Tax ID number"
                 }
               ],
               "text": "Tax Identifier"
             },
             "system": "urn:oid:2.16.840.1.113883.4.4",
             "value": "48-7283726321"
           },
           {
             "use": "official",
             "type": {
               "coding": [
                 {
                   "system": "https://fhir.cerner.com/fb8067d7-e012-4703-8888-17b86d11f0f8/codeSet/334",
                   "code": "NPI",
                   "display": "Organization NPI",
                   "userSelected": true
                 },
                 {
                   "system": "http://terminology.hl7.org/CodeSystem/v2-0203",
                   "code": "NPI",
                   "display": "National provider identifier"
                 }
               ],
               "text": "Organization NPI"
             },
             "system": "http://hl7.org/fhir/sid/us-npi",
             "value": "1234567893"
           }
         ],
         "active": true,
         "type": [
           {
             "coding": [
               {
                 "system": "https://fhir.cerner.com/fb8067d7-e012-4703-8888-17b86d11f0f8/codeSet/278",
                 "code": "EMPLOYER",
                 "display": "Employer",
                 "userSelected": true
               }
             ],
             "text": "Employer"
           },
           {
             "coding": [
               {
                 "system": "https://fhir.cerner.com/fb8067d7-e012-4703-8888-17b86d11f0f8/codeSet/278",
                 "code": "RCCLINIC",
                 "display": "RCA Clinic Organizations",
                 "userSelected": true
               },
               {
                 "system": "http://terminology.hl7.org/CodeSystem/organization-type",
                 "code": "prov",
                 "display": "Healthcare Provider"
               }
             ],
             "text": "RCA Clinic Organizations"
           },
           {
             "coding": [
               {
                 "system": "https://fhir.cerner.com/fb8067d7-e012-4703-8888-17b86d11f0f8/codeSet/278",
                 "code": "FACILITY",
                 "display": "Facility",
                 "userSelected": true
               }
             ],
             "text": "Facility"
           },
           {
             "coding": [
               {
                 "system": "https://fhir.cerner.com/fb8067d7-e012-4703-8888-17b86d11f0f8/codeSet/278",
                 "code": "CLIENT",
                 "display": "Client",
                 "userSelected": true
               }
             ],
             "text": "Client"
           }
         ],
         "name": "RCA Testing Organization",
         "telecom": [
           {
             "system": "phone",
             "value": "9138273648",
             "use": "work"
           },
           {
             "system": "phone",
             "value": "9192739427",
             "use": "work"
           }
         ],
         "address": [
           {
             "use": "work",
             "text": "9600 Metcalf Avenue\nOverland Park, KS 66212\nUSA",
             "line": [
               "9600 Metcalf Avenue"
             ],
             "city": "Overland Park",
             "district": "Johnson",
             "state": "KS",
             "postalCode": "66212",
             "country": "USA"
           }
         ]
       }
     }
   ]
 }
  end
end