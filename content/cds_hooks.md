---
title: CDS Hooks
layout: cds_hooks
---

# CDS Hooks<sup>beta</sup> #
------------------------------------------------------------------------
* TOC
{:toc}

## General ##

### Introduction ###
The CDS Hooks (Clinical Decision Support Hooks) workflow defines a specification for external CDS Service developers to send notification cards to an electronic health record (EHR). These cards are triggered based on conditions such as the opening of a patient chart of a specified demographic(age, gender, etc.) or when a order is selected. These cards can contain information, a suggestion for the user, or a link to launch a SMART app (See [SMART](./smart) for more information).

### Authorization Model ###
1. Cerner must validate and register every CDS service.
2. Each client decides whether they want to allow a CDS Service on a domain-by-domain basis.
3. Each client decides which users and roles can access the CDS Service.

### Supported Hooks ###
Currently, Cerner supports the following CDS Hooks:

- [Patient View](https://cds-hooks.org/hooks/patient-view/)

## CDS Service Registration ##
In order to submit a service to be registered, the following information is required:

Name         | Required     | Description | Example
-------------|--------------|-------------|--------
hook          | Yes | The hook this service should be invoked on. See [Supported Hooks](#supported-hooks). | patient-view
title         | Yes | The human-friendly name of this service.    | Severe Condition Alerter
fhir server   | Yes | The FHIR server that the service queries.   | https://fhir-ehr.cerner.com/r4/ec2458f2-1e24-41c8-b71b-0e701af7583d 
service url   | Yes | The url for the service that the CDS server will call to get the service card response.  | https://company.myservice.com
description   | No  | Further information about the service. | Sends alerts for patients above age 65 who may have a severe condition.
owner email   | No  | Required when scopes are provided. The email address of the owner of the service.        | john.smith@company.com
tenants       | No  | A list of tenants where the service is enabled. | C1941 - ec2458f2-1e24-41c8-b71b-0e701af7583d, A1234 - as1558f2-1e24-44c8-b71b-0e701af787f3d
fhir scopes   | No  | A list of the FHIR scopes required for any FHIR calls this CDS service makes. | patient/Patient.read, patient/Encounter.read, patient/Observations.read
allowed links | No  | A list of all links allowed in the response. Any links not in this list will be removed. | https://www.google.com, https://www.cerner.com
smart apps    | No  | A list of launch urls for any SMART applications that may be linked to in CDS service responses. | https://www.myapp.com, https://www.otherapp.org

For more information on CDS Service attributes see the Discovery Response section [here](https://cds-hooks.hl7.org/1.0/#response).

## CDS Service Workflow ##
When the condition in the EHR is met, the CDS Hooks Server will make a GET request to the provided service url. The service should returns an array of cards formatted according to the [CDS Service HTTP Response specification](https://cds-hooks.hl7.org/1.0/#http-response). 

### Service Authorization ###
When Cerner's CDS Hooks server calls a service, authorization will be accomplished with a JWT token.

1. The JWT issuer `iss` will be ```https://cds-hooks.cerner.com```. Make sure this is whitelisted as a trusted CDS Client.
2. The JWT signature should be verified by calling the Cerner Authorization well-known endpoint: ```https://authorization.cerner.com/jwk``` to get the list of JKUs and confirm the token JKU is present


For more information on CDS Authorization best practices, see [this page](https://cds-hooks.org/best-practices/#jwt).

### Example Response from a CDS Service ###

      {
        "cards": [
          {
            "summary": "A summary of the card.",
            "detail": "Additional card detail.",
            "indicator": "info",
            "source": {
              "label": "Company",
              "url": "https://company.com",
              "icon": "https://company.com/company-logo.png"
            },
            "links": [
              {
                "label": "Webpage",
                "url": "https://webpage.com",
                "type": "absolute"
              }
            ]
          },
          {
            "summary": "A summary of the card.",
            "detail": "Additional card detail. See https://webpage.com.",
            "indicator": "critical",
            "source": {
              "label": "External"
            },
            "links": [
              {
                "label": "Webpage In Detail",
                "url": "https://webpage.com",
                "type": "absolute"
              },
              {
                "label": "Smart App",
                "url": "https://smart.cerner.com/smart/eb2384f8-839e-4c6e-8b29-18e71db1a034/apps/a77a3d9a-28fe-48te-a96a-2ff09bed599a",
                "type": "smart"
             },
            ]
          }
        ]
      }

### SMART Apps ###
Some CDS services return SMART app link cards. For information on registering a SMART app, see [this page](./smart).

_Note: Each client decides whether they want a SMART app to run on a domain-by-domain basis. An app link card will only work correctly in a domain in which the corresponding SMART app is enabled._

## Additional Resources ##

- [CDS Hooks Specification](https://cds-hooks.org/)
- [Cerner Millennium FHIR API Documentation](http://fhir.cerner.com/millennium/r4/)
- [Cerner Authorization Documentation](http://fhir.cerner.com/authorization/)
- [Cerner FHIR Developers Google Group](https://groups.google.com/forum/#!forum/cerner-fhir-developers)
