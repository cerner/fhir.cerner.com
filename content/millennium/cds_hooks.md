---
title: CDS Hooks
layout: cds_hooks
---

# CDS Hooks #
------------------------------------------------------------------------
<%= beta_tag(resource: false) %>
* TOC
{:toc}

## General ##

### Introduction ###
The CDS Hooks (Clinical Decision Support Hooks) workflow provides external CDS Service developers the ability to send CDS cards to an electronic health record (EHR). The external CDS service will be triggered based on conditions such as opening a patient chart for the specified demographic(age, gender, etc.) or when an order is selected and the cards returned from the service will be presented to the user in the EHR. The cards can contain textual guidance, an actionable suggestion for the user, or a link to launch a SMART app (See [SMART](./smart) for more information).

As a CDS Service Developer, you will work with clients or on your own to create a service based on the [CDS Hooks Specification](https://cds-hooks.hl7.org/) that will be called by the CDS Hooks Server when a condition you specify is met. Your service API should be built so that it uses correct authorization (See [Service Authorization](./cds_hooks/#service-authorization)) and returns a properly formatted response (See [Service Response](./cds_hooks/#service-response)). Once you are ready to integrate your service with the EHR system you will need to request for your service to be registered (See [CDS Service Registration](./cds_hooks/#cds-service-registration)). Finally, your service should be available for the CDS Hooks Server to call on a client by client basis.

### Authorization Model ###
1. Cerner must validate and register every CDS service.
2. Each client decides whether they want to allow a CDS Service on a domain-by-domain basis.
3. Each client decides which users and roles can access the CDS Service.

### Supported Hooks ###
Currently, Cerner supports the following CDS Hooks:

- [Patient View 1.0](https://cds-hooks.org/hooks/patient-view/)

## CDS Service Registration ##
In order for a service to be registered for a client, the following information must be provided first. Please reach out to the [google group](https://groups.google.com/g/cerner-fhir-developers) for configuring your service for testing.

Name         | Required     | Description | Example
-------------|--------------|-------------|--------
hook              | Yes | The hook this service should be invoked on. See [Supported Hooks](#supported-hooks). | patient-view
title             | Yes | The human-friendly name of this service.    | Severe Condition Alerter
trigger condition | Yes | The condition(s) under which the service is called | Female patient with age > 65 years
service url       | Yes | The url for the service that the CDS server will call to get the service card response.  | https://company.myservice.com/call
fhir server       | Yes | The FHIR server that the service queries.   | https://fhir-ehr.cerner.com/r4/ec2458f2-1e24-41c8-b71b-0e701af7583d 
description       | No  | Further information about the service. | Sends alerts for patients above age 65 who may have a severe condition.
owner email       | No  | Required when scopes are provided. The email address of the owner of the service.        | john.smith@company.com
tenants           | No  | A list of tenants where the service is enabled. | C1941 - ec2458f2-1e24-41c8-b71b-0e701af7583d, A1234 - as1558f2-1e24-44c8-b71b-0e701af787f3d
fhir scopes       | No  | A list of the FHIR scopes required for any FHIR calls this CDS service makes. | patient/Patient.read, patient/Encounter.read, patient/Observations.read
allowed links     | No  | A list of all links allowed in the response. Any links not in this list will be removed. | https://www.google.com, https://www.cerner.com
smart apps        | No  | A list of launch urls for any SMART applications that may be linked to in CDS service responses. | https://www.myapp.com, https://www.otherapp.org

For more information on CDS Service attributes see the Discovery Response section [here](https://cds-hooks.hl7.org/1.0/#response).

## CDS Service Workflow ##
Once a CDS service is registered, it will be called whenever the trigger condition is met in the EHR (e.g. a chart is opened for a patient of the specified demographic). The trigger condition will notify the CDS Hooks Server, which will call the CDS Service using a JWT token and the service url (provided during Registration). The CDS Service response cards will then be displayed in the EHR as either critical notification pop-ups or non-critical notification cards in a sidebar, depending on the card indicator value.

### Service Authorization ###
When Cerner's CDS Hooks server calls a service, authorization will be accomplished with a JWT token.

1. The JWT issuer `iss` will be ```https://cds-hooks.cerner.com```. Make sure this is whitelisted as a trusted CDS Client.
2. The JWT signature should be verified by calling the Cerner Authorization well-known endpoint: ```https://authorization.cerner.com/jwk``` to get the list of JKUs and confirm the token JKU is present.


For more information on CDS Authorization best practices, see [this page](https://cds-hooks.org/best-practices/#jwt).

### Service Response ###
When the specified condition(s) in the EHR are met, the CDS Hooks Server will make a POST request to the provided service url. The CDS service should return an array of cards formatted according to the [CDS Service HTTP Response specification](https://cds-hooks.hl7.org/1.0/#http-response). Sizing should be taken into account: the cards will be displayed in a pop-out notification panel that spans around 1/8 of the screen width, and any text overflow will be wrapped.

#### Example Response from a CDS Service ####

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
CDS services can return SMART app link cards. However, the `appContext` field is not currently supported. For information on registering a SMART app, see [this page](./smart).

_Note: Each client decides whether they want a SMART app to run on a domain-by-domain basis. An app link card will only work correctly in a domain in which the corresponding SMART app is enabled._

## Additional Resources ##

- [CDS Hooks Specification](https://cds-hooks.org/)
- [Cerner Millennium FHIR API Documentation](http://fhir.cerner.com/millennium/r4/)
- [Cerner Authorization Documentation](http://fhir.cerner.com/authorization/)
- [Cerner FHIR Developers Google Group](https://groups.google.com/forum/#!forum/cerner-fhir-developers)
