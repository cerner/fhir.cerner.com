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
The SMART<sup>®</sup> (Substitutable Medical Apps and Reusable Technology) platform defines a specification for an electronic health record (EHR) to safely and securely open other applications with context. These SMART applications are commonly web applications but may also be native mobile applications and that use HL7® FHIR® [standard](https://www.hl7.org/fhir/) to read and write data from the EHR. With SMART, Cerner can embed a SMART app in the EHR. Cerner believes that SMART applications will be a major user of FHIR resources. We will also support FHIR access through mobile SMART applications, as those specifications emerge from the SMART [web site](http://smartplatforms.org/).

### SaaS Model ###

Cerner expects the majority of SMART apps to be provided to clients in a SaaS (software as a service) model. That is, the SMART app is hosted or managed by the SMART developer or provider. In this case, clients do not need to install any code or package in order to implement a particular SMART app.

### Authorization Model ###

At a high level, provider facing applications must receive the following authorizations:

1. Cerner must validate and register every SMART app. As part of this process, Cerner validates the usage of FHIR resources and operations (for example, READ and WRITE).  Cerner will not validate the usage of FHIR resources for direct to consumer apps.
2. Each client decides whether they want to allow a SMART app to run on a domain-by-domain basis.
3. Each client decides which users and roles can access the SMART app.

To learn more about general SMART on FHIR app authorization process, see the SMART [App Authorization Guide](http://docs.smarthealthit.org/authorization/).  For implementation information regarding Cerner's Authorization server, see the [Authorization page](http://fhir.cerner.com/authorization/) at fhir.cerner.com.

### Access Points ###

Currently, end users can open SMART apps in the following ways:

- Providers can access SMART apps from the *Cerner Millennium PowerChart* TOC (table of contents, a column of options that open different PowerChart components) and the Organizer view
- Providers can access SMART apps from an *MPages* component that is embedded in *PowerChart*
- Consumers can access SMART apps from HealtheLife to view their patient information
- Providers/Consumers can access SMART apps from a standalone provider/patient facing SMART apps

Cerner is continuing to look at incorporating SMART app support into our other applications and platforms.

### SMART App Data Retrieval ###

SMART apps can leverage Cerner's implementation of the FHIR standard server to retrieve data from the EHR based upon the current patient in context. However, SMART apps are not limited to FHIR data for their needs. SMART apps may choose to leverage other data sources for their needs, from other third party data sources to private and proprietary data the SMART app maintains. SMART apps may even retrieve data through Cerner proprietary means (for example, MillenniumObjects, CareAware services, or CCL scripts). Of course, leveraging proprietary APIs hampers interoperability, but if that is not a concern of the SMART app, it is a viable option.

### SMART Without FHIR ###

Technically speaking, the SMART specification requires that a FHIR server exist so that a SMART app can communicate with the FHIR server when the app opens in order to determine the location of the authorization (OAuth 2) server. However, outside of this requirement, FHIR does not need to be leveraged otherwise by the SMART app.

## Technical ##

### Screen Resolution ###

The recommended screen resolution varies based on the available screen's real estate. Instead of targeting a specific resolution, the app should be designed to be responsive, and the app should adjust according to the available screen sizes.

### Browser Requirement ###

For provider-facing apps that run from within the Cerner Millennium EHR, the only embedded browser we currently support is Internet Explorer (IE). The minimum version of IE we support is IE10. The latest supported browser varies based on the version of the browser that is currently installed at each Cerner client site. Although it is no longer supported by Microsoft, many of our clients still use IE10, especially clients who host their own system. We highly suggest that you code your app for IE10 for validation. If you must use IE11 for your app, please note that you may struggle if you plan on deploying across our entire client base.

### HTML5 DOCTYPE ###

The doctype declaration tells the browser what version of HTML the document is written in. It is a good idea to include this declaration so that the browser will render the document correctly. It must be included at the very first line of the document, right above the `<html>` tag.

```<!DOCTYPE html>```

### X-UA-Compatible Tag ###

In order for the embedded IE browser to render the app in the latest supported IE version, set the following HTML tag in the first line of the `<head>` section for all pages:

```<meta http-equiv="X-UA-Compatible" content="IE=edge">```

If this tag is not present as the first &lt;head> element on a page, the page and all associated JavaScript will be rendered in IE 7 mode, often times resulting in errors and unwanted behavior.

### Technology and Framework for SMART Apps ###

What technology and framework you use is really up to you and your company. Regardless of which technology, framework, or language you choose, make sure that your app is fast, responsive, and adaptable to various screen sizes.

### Open Source FHIR Client Libraries ###

To start development quickly, there is an open source [fhir-client JavaScript library](https://github.com/smart-on-fhir/client-js) that takes care of the OAuth2 handshake and provides a built-in library to call FHIR resources. The library is usable but has several known issues in previous versions. One particular issue is around the usage of the `sessionStorage` property. Cerner *requires* that you upgrade the library to version [v0.1.10](https://github.com/smart-on-fhir/client-js/tree/v0.1.10) or higher to correct a known patient safety issue. You also *must* download and include this [additional code](https://github.com/cerner/fhir-client-cerner-additions) into your project to correct this issue.

Other additional FHIR clients are available:

- Java: [http://hapifhir.io/doc_rest_client.html](http://hapifhir.io/doc_rest_client.html)
- .NET: [https://github.com/ewoutkramer/fhir-net-api](https://github.com/ewoutkramer/fhir-net-api)
- Python: [https://github.com/smart-on-fhir/client-py](https://github.com/smart-on-fhir/client-py)
- iOS: [https://github.com/smart-on-fhir/Swift-FHIR](https://github.com/smart-on-fhir/Swift-FHIR)

### Tutorial ###

Creating your first app can be overwhelming, so Cerner has created a [step by step tutorial](http://engineering.cerner.com/smart-on-fhir-tutorial/#introduction) on how to start creating your very first SMART app.  The app is written in HTML and JavaScript with some CSS.  We highly recommend that you take a look at the tutorial.

### code Console and Sandbox ###

Cerner's implementation of SMART on FHIR ecosystem allows you to register, update, and delete your SMART app from our [code Console](https://code.cerner.com/developer/smart-on-fhir).  Additionally, you can open and test your app from code Console in our Sandbox environment.  Currently, there is a 15-minute waiting period for new or updated app configurations to take effect.  If you cannot open the application after the 15-minute period, post a question to the [Cerner FHIR Developers Google Group](https://groups.google.com/forum/#!forum/cerner-fhir-developers).

### Launch Context ###

See the [Scopes and Launch Content](http://docs.smarthealthit.org/authorization/scopes-and-launch-context/) page for more information on how you can obtain the context. Generally, your app must be able to retrieve SMART context parameters such as patient id, encounter id (if available), tenant, and a few others. You can inspect the OAuth2 access_token value that is returned to see the actual context.

## Testing ##

### code Console ###

For provider and patient facing apps, you can select any patient from a list of patients in our Sandbox environment to begin testing. After selecting a patient to test, you can open your app from a new web browser in [code Console](https://code.cerner.com/developer/smart-on-fhir). Testing from Code Console through the browser helps you start developing and testing your app quickly.

### PowerChart ###

Once you have your app working in code Console and you are committed to taking your app to production, contact us through the application available at [https://code.cerner.com/millennium](https://code.cerner.com/millennium), and we can provide access to *PowerChart* to test your app. For provider facing apps, PowerChart is the environment where providers will access apps in a production environment, so it is very important to test the apps in *PowerChart*. Access to PowerChart is a benefit only offered to members of our code program.

### HealtheLife ###

Direct to consumers apps may also be launched from our patient portal, HealtheLife. Once our patient portal is available for developers, developers in our program will have the ability to launch SMART applications from HealtheLife. This is how you can test as a consumer accessing your application.

#### SSL Certificate ####

Your app must be reachable through an https endpoint. Also, you need a valid SSL certificate for your site to test your app in *PowerChart*.

#### Public Access ####

In order for *PowerChart* to open and display your app in Cerner's Sandbox FHIRPLAY environment, the URL of your app needs to be publicly accessible. In other words, the URL cannot point to hosts on your internal network.

If you plan to perform tests in *PowerChart* using your organization's environment, the URL of your app does not need to be publicly accessible.

## Additional Resources ##

- [Cerner Millennium FHIR API Documentation](http://fhir.cerner.com/millennium/dstu2/)
- [Cerner Authorization Documentation](http://fhir.cerner.com/authorization/)
- [Cerner FHIR Developers Google Group](https://groups.google.com/forum/#!forum/cerner-fhir-developers)
