---
title: SMART
layout: smart
---

# SMART<sup>®</sup> #
------------------------------------------------------------------------
* TOC
{:toc}

## General ##

### Introduction ###
The SMART<sup>®</sup> (Substitutable Medical Apps and Reusable Technology) platform defines a specification for an electronic health record (EHR) to safely and securely open other applications with context. These SMART applications are commonly web applications but may also be native mobile applications and that use HL7® FHIR® [standard][HL7-FHIR] to read and write data from the EHR. With SMART, Cerner can embed a SMART app in the EHR. Cerner believes that SMART applications will be a major user of FHIR resources. We will also support FHIR access through mobile SMART applications, as those specifications emerge from the SMART [web site][SMART-PLATFORM].

### SaaS Model ###

Cerner expects the majority of SMART apps to be provided to clients in a SaaS (software as a service) model. That is, the SMART app is hosted or managed by the SMART developer or provider. In this case, clients do not need to install any code or package in order to implement a particular SMART app.

### Authorization Model ###

At a high level, provider facing applications must receive the following authorizations:

1. Cerner must validate and register every SMART app. As part of this process, Cerner decides which FHIR resources and operations (for example, READ and WRITE) the SMART app is allowed to use.
2. Each client decides whether they want to allow a SMART app to run on a domain-by-domain basis.
3. Each client decides which users and roles can access the SMART app. Today, this access is determined with a configuration.

To learn more about consideration one, see the SMART [App Authorization Guide][SMART-HEALTH-IT-AUTHZ].  For implementation information regarding Cerner's Authorization server, see the [Authorization page][CERNER-AUTHZ-DOC] at fhir.cerner.com.

### Access Points ###

Currently, end users can open SMART apps in the following ways:

- Providers can access SMART apps from the *Cerner Millennium PowerChart* TOC (table of contents, a column of options that open different PowerChart components) and the Organizer view
- Provoiders can access SMART apps from an *MPages* component that is embedded in *PowerChart*
- Consumers can access SMART apps from HealtheLife to view their patient information
Cerner is continuing to look at incorporating SMART app support into our other applications and platforms.

### SMART App Data Retrieval ###

SMART apps can leverage Cerner's implementation of the FHIR standard server to retrieve data from the EHR based upon the current patient in context. However, SMART apps are not limited to FHIR data for their needs. SMART apps may choose to leverage other data sources for their needs, from other third party data sources to private and proprietary data the SMART app maintains. SMART apps may even retrieve data through Cerner proprietary means (for example, MillenniumObjects, CareAware services, or CCL scripts). Of course, leveraging proprietary APIs hampers interoperability, but if that is not a concern of the SMART app, it is a viable option.

### SMART Without FHIR ###

Technically speaking, the SMART specification requires that a FHIR server exist so that a SMART app can communicate with the FHIR server when the app opens in order to determine the location of the authorization (OAuth 2) server. However, outside of this requirement, FHIR does not need to be leveraged otherwise by the SMART app.

## Technical ##

### Screen Resolution ###

The recommended screen resolution varies based on the available screen's real estate. Instead of targeting a specific resolution, the app should be designed to be responsive, and the app should adjust according to the available screen sizes.

### Browser Requirement ###

Apps should be designed to work in any browser for best user experience. For provider facing apps that run on the *Cerner Millennium* platform, Cerner currently supports only the embedded Internet Explorer browser (IE) at the moment. The minimum-supported embedded browser is IE 10. The latest supported browser varies based on the version of the browser that is currently installed on the device.

### HTML5 DOCTYPE ###

The doctype declaration tells the browser what version of HTML the document is written in. It is a good idea to include this declaration so that the browser will render the document correctly. It must be included at the very first line of the document, right above the `<html>` tag. 

```<!DOCTYPE html>```

### X-UA-Compatible Tag ###

In order for the embedded IE browser to render the app in the latest supported IE version, set the following HTML tag in the first line of the `<head>` section for all pages:

```<meta http-equiv="X-UA-Compatible" content="IE=edge">```

This is required because the default embedded IE version is set to another version for compatibility with other solutions.


### Technology and Framework for SMART Apps ###

What technology and framework you use is really up to you and your company. Regardless of which technology, framework, or language you choose, make sure that your app is fast, responsive, and adaptable to various screen sizes.  We recently created [ASCVD Risk SMART app][ASCVD-RISK-APP] using React.js.

### Open Source FHIR Client Libraries ###

To start development quickly, there is an open source [fhir-client JavaScript library][FHIR-CLIENT-JS] that takes care of the OAuth2 handshake and provides a built-in library to call FHIR resources. The library is usable but has several known issues in previous versions. One particular issue is around the usage of the `sessionStorage` property. Cerner highly recommends that you upgrade the library to version [v0.1.10][FHIR-CLIENT-v0.1.10] or higher to correct a known patient safety issue. You also need to download and include this [additional code][FHIR-CLIENT-CERNER-ADDITIONS] into your project to correct this issue.

Other additional FHIR clients are available:

- Java: [http://hapifhir.io/doc_rest_client.html][FHIR-CLIENT-JAVA]
- .NET: [https://github.com/ewoutkramer/fhir-net-api][FHIR-CLIENT-NET]
- Python: [https://github.com/smart-on-fhir/client-py][FHIR-CLIENT-PYTHON]
- iOS: [https://github.com/smart-on-fhir/Swift-FHIR][FHIR-CLIENT-IOS]

### Tutorial ###

Creating your first app can be overwhelming, so Cerner has created a [step by step tutorial][APP-TUTORIAL] on how to start creating your very first SMART app.  The app is written in HTML and JavaScript with some CSS.  We highly recommend that you take a look at the tutorial.

### Code Console and Sandbox ###

Cerner's implementation of SMART on FHIR ecosystem allows you to register, update, and delete your SMART app from [Code Console][CODE-CONSOLE].  Additionally, you can open and test your app from Code Console in our Sandbox environment.  Currently, there is a 15-minute waiting period for new or updated app configurations to take effect.  If you cannot open the application after the 15-minute period, post a question to the [Cerner FHIR Developers Google Group][CERNER-FHIR-DEV-GOOGLE-GROUP].

### Launch Context ###

See the [Scopes and Launch Content][SMART-HEALTH-IT-SCOPES-LAUNCH-CONTEXT] page for more information on how you can obtain the context. Generally, your app must able to retrieve SMART context parameters such as patient id, encounter id (if available), tenant, and a few others. You can inspect the OAuth2 access_token value that is returned to see the actual context.

## Testing ##

### Code Console ###

For provider and patient facing apps, you can select any patient from a list of patients in our Sandbox environment to begin testing. After selecting a patient to test, you can open your app from a new web browser in [Code Console][CODE-CONSOLE]. Testing from Code Console through the browser helps you start developing and testing your app quickly.

### PowerChart ###

Once you have your app working in Code Console and you are committed to taking your app to production, contact us through the application available at [https://code.cerner.com/ehr-api][CODE-EHR-API], and we can provide access to *PowerChart* to test your app. For a provider facing apps, PowerChart is the environment where providers will access your app in a production environment, so it is very important to test the app in *PowerChart*.

#### SSL Certificate ####

Your app must be reachable through an https endpoint. Also, you need a valid SSL certificate for your site to test your app in *PowerChart*.

#### Public Access ####

In order for *PowerChart* to open and display your app, the URL of your app needs to be publicly accessible. In other word, the URL cannot point to hosts on your internal network.

## Additional Resources ##

- [Cerner Millennium FHIR API Documentation][CERNER-MILL-FHIR-API-DOC]
- [Cerner Authorization Documentation][CERNER-AUTHZ-DOC]
- [Cerner FHIR Developers Google Group][CERNER-FHIR-DEV-GOOGLE-GROUP]

[HL7-FHIR]: https://www.hl7.org/fhir/
[CODE-EHR-API]: https://code.cerner.com/ehr-api
[SMART-PLATFORM]: http://smartplatforms.org/
[SMART-HEALTH-IT-AUTHZ]: http://docs.smarthealthit.org/authorization/
[CODE-CONSOLE]: https://code.cerner.com/developer/smart-on-fhir
[CERNER-FHIR-DEV-GOOGLE-GROUP]: https://groups.google.com/forum/#!forum/cerner-fhir-developers
[CERNER-AUTHZ-DOC]: http://fhir.cerner.com/authorization/
[CERNER-MILL-FHIR-API-DOC]: http://fhir.cerner.com/millennium/dstu2/
[ASCVD-RISK-APP]: https://github.com/cerner/ascvd-risk-calculator
[FHIR-CLIENT-JS]: https://github.com/smart-on-fhir/client-js
[FHIR-CLIENT-v0.1.10]: https://github.com/smart-on-fhir/client-js/tree/v0.1.10
[FHIR-CLIENT-CERNER-ADDITIONS]: https://github.com/cerner/fhir-client-cerner-additions
[APP-TUTORIAL]: http://engineering.cerner.com/smart-on-fhir-tutorial/#introduction
[SMART-HEALTH-IT-SCOPES-LAUNCH-CONTEXT]: http://docs.smarthealthit.org/authorization/scopes-and-launch-context/
[FHIR-CLIENT-JAVA]: http://hapifhir.io/doc_rest_client.html
[FHIR-CLIENT-NET]: https://github.com/ewoutkramer/fhir-net-api
[FHIR-CLIENT-PYTHON]: https://github.com/smart-on-fhir/client-py
[FHIR-CLIENT-IOS]: https://github.com/smart-on-fhir/Swift-FHIR
