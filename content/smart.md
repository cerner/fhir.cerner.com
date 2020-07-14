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

To learn more about general SMART on FHIR app authorization process, see the SMART [App Authorization Guide](http://hl7.org/fhir/smart-app-launch/#smart-authorization-and-resource-retrieval).  For implementation information regarding Cerner's Authorization server, see the [Authorization page](http://fhir.cerner.com/authorization/) at fhir.cerner.com.

### Access Points ###

Currently, end users can open SMART apps in the following ways:

- Providers can access SMART apps from the *Cerner Millennium PowerChart* TOC (table of contents, a column of options that open different PowerChart components) and the Organizer view
- Providers can access SMART apps from an *MPages* component that is embedded in *PowerChart*
- Consumers can access SMART apps from HealtheLife to view their patient information
- Providers/Consumers can access SMART apps from a stand-alone provider/patient facing SMART apps

Cerner is continuing to look at incorporating SMART app support into our other applications and platforms.

### SMART App Data Retrieval ###

SMART apps can leverage Cerner's implementation of the FHIR standard server to retrieve data from the EHR based upon the current patient in context. However, SMART apps are not limited to FHIR data for their needs. SMART apps may choose to leverage other data sources for their needs, from other third party data sources to private and proprietary data the SMART app maintains. SMART apps may even retrieve data through Cerner proprietary means (for example, MillenniumObjects, CareAware services, or CCL scripts). Of course, leveraging proprietary APIs hampers interoperability, but if that is not a concern of the SMART app, it is a viable option.

### SMART Without FHIR ###

Technically speaking, the SMART specification requires that a FHIR server exist so that a SMART app can communicate with the FHIR server when the app opens in order to determine the location of the authorization (OAuth 2) server. However, outside of this requirement, FHIR does not need to be leveraged otherwise by the SMART app.

## Technical ##

### Terra UI ###

Some of the things that we take into consideration when validating your SMART app are user interface (UI) and user experience (UX). They are an important part of the overall user's experience.

If you are building your SMART app using the [React](https://reactjs.org/) JavaScript library, we highly recommend that you take a look at the [Terra](https://engineering.cerner.com/terra-ui/#/home/terra-ui/index) UI framework that we've created and open sourced. Terra follows Cerner's Design Standard Guidelines so your app will look and feel like a Cerner app.

### Screen Resolution ###

The recommended screen resolution varies based on the available screen's real estate. Instead of targeting a specific resolution, the app should be designed to be responsive, and the app should adjust according to the available screen sizes.

### Browser Requirement ###

For provider-facing apps running from within the Cerner Millennium EHR, the only embedded browser we currently support is Internet Explorer (IE). The embedded browser control we use is [IWebBrowser2 C++ interface](https://msdn.microsoft.com/en-us/library/aa752127(v=vs.85).aspx) by Microsoft. The minimum version of IE we support is IE10. The latest supported browser varies based on the version of the browser that is currently installed at each Cerner client site. Although it is no longer supported by Microsoft, many of our clients still use IE10, especially clients who host their own system. We highly suggest that you code your app for IE10 for validation. If you must use IE11 for your app, please note that you may struggle if you plan on deploying across our entire client base.

NOTE: Applications that will embed in *MPages* Workflow or Summary must function correctly with IE10.  The *MPages* 6.x platform currently depends on other components that require IE10 to run.  This means that even though there is a newer version of IE in Citrix, *MPages* 6.x will render the application using IE10.

Microsoft offers a free IE10 VM and newer on various versions of Windows for application testing at [https://developer.microsoft.com/en-us/microsoft-edge/tools/vms/](https://developer.microsoft.com/en-us/microsoft-edge/tools/vms/).

### Single Sign On (SSO) ###

Cerner understands that it's counter-intuitive to prompt the user for their credential when launching a SMART application within *PowerChart*, where the user is already logged into the system. With that in mind, we designed the system to provide a good SSO experience for the users when any SMART application is launched within *PowerChart*. As a developer, you can help us give the users the best experience possible by following the following guideline when developing your apps to be embedded within *PowerChart*.

- Due to technical limitations (see '[No Shared Cookies](#no-shared-cookies)' section below), apps should use the same embedded browser (no pop-up) to authorize and launch when embedded in *PowerChart*. We still recommend using a pop-up for authorization and authentication in other workflows outside of *PowerChart*.

- If you'd like to flex your app based on the current execution context (embedded vs stand-alone mode), please see this [section](#embedded-in-powerchart) for more information.

### Embedded Browser Control ###

There have been a lot of questions and interests around what embedded browser control Cerner's implementation uses. In this section, you'll learn more about the embedded browser control. The actual browser control that we use is [IWebBrowser2 C++ interface](https://msdn.microsoft.com/en-us/library/aa752127(v=vs.85).aspx) by Microsoft. Please take a look at the documentation for more information. With this embedded browser control, there are some limitations compared to the stand-alone IE browser. See below for these limitations.

#### No Shared Cookies ####

If your app uses a pop-up window for the authorization flow to allow users to authenticate with the system, that is fine for web and stand-alone apps.  However, if the app is going to be embedded within *PowerChart*, browser cookies will *NOT* be shared between the embedded browser and the newly popped-up browser window. What does this mean? It means that single-sign-on (SSO) will not work; the user would need to manually type in their credential when prompted, which is not the best experience for the users. It's best to perform all navigations and redirects using the embedded browser without needing to pop-up a new browser while embedding in *PowerChart*.  To learn more about the technical details of IE inner workings, please visit this [page](https://blogs.msdn.microsoft.com/ie/2008/03/11/ie8-and-loosely-coupled-ie-lcie/) and this [page](https://blogs.msdn.microsoft.com/ie/2010/03/04/tab-isolation/).

If you'd like to flex your app based on the current execution context (embedded vs stand-alone mode), please see this [section](#embedded-in-powerchart) for more information.

#### HTML5 Session Storage ####

With the introduction of HTML5, [sessionStorage](https://developer.mozilla.org/en-US/docs/Web/API/Window/sessionStorage) is a good way to persist data within a browser's session. Depending on the *Cerner Millennium PowerChart* release, `sessionStorage` may not be isolated per instances of the embedded browser. As such, if your app is going to be embedded within *PowerChart*, we do *NOT* recommend using `sessionStorage`.

If you'd like to flex your app based on the current execution context (embedded vs stand-alone mode), please see this [section](#embedded-in-powerchart) for more information.

#### Embedded in *PowerChart*? ####

If I want to flex my app based on where it's being loaded, how do I programmatically determine when my app is embedded within *PowerChart*? Good question! Check out this [method](https://github.com/cerner/fhir-client-cerner-additions/blob/main/src/js/utils.js#L14) which checks for certain conditions to exist and determine if the app is loaded within PowerChart or not.

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

See the [Scopes and Launch Content](http://hl7.org/fhir/smart-app-launch/scopes-and-launch-context) page for more information on how you can obtain the context. Generally, your app must be able to retrieve SMART context parameters such as patient id, encounter id (if available), tenant, and a few others. You can inspect the OAuth2 access_token value that is returned to see the actual context.

### SMART Apps in *MPages* ###

SMART apps can be embedded and launched from the *MPages* Workflow or Summary. In order to securely embed a SMART app within an *MPages* iframe, additional code must be included in the SMART app. Cerner provides this code for you. Head over to [cerner-smart-embeddable-lib](https://github.com/cerner/cerner-smart-embeddable-lib) on GitHub to get started!

#### iframe Cookies ####

If your SMART app uses cookies, the [P3P](https://www.w3.org/P3P/) header or meta tag must be set in order for cookies to be saved correctly while running in an *MPages* iframe.  Please see [this page](https://blogs.msdn.microsoft.com/ieinternals/2013/09/17/a-quick-look-at-p3p/) for more information on P3P.

## Testing ##

### code Console ###

For provider and patient facing apps, you can select any patient from a list of patients in our Sandbox environment to begin testing. After selecting a patient to test, you can open your app from a new web browser in [code Console](https://code.cerner.com/developer/smart-on-fhir). Testing from Code Console through the browser helps you start developing and testing your app quickly.

### PowerChart ###

Once you have your app working in code Console and you are committed to taking your app to production, contact us through the application available at [https://code.cerner.com/submit](https://code.cerner.com/submit), and we can provide access to *PowerChart* to test your app. For provider facing apps, PowerChart is the environment where providers will access apps in a production environment, so it is very important to test the apps in *PowerChart*. Access to PowerChart is a benefit only offered to members of our code program.

#### SSL Certificate ####

Your app must be reachable through an https endpoint. Also, you need a valid SSL certificate for your site to test your app in *PowerChart*. A good resource to check your server's SSL certificates is [Qualys SSL Labs](https://www.ssllabs.com/ssltest/). Ensure your server's certificate gets A grade or higher.

#### Public Access ####

In order for *PowerChart* to open and display your app in Cerner's Sandbox FHIRPLAY environment, the URL of your app needs to be publicly accessible. In other words, the URL cannot point to hosts on your internal network.

If you plan to perform tests in *PowerChart* using your organization's environment, the URL of your app does not need to be publicly accessible. However, the app's URL will need to be accessible from your organization's Citrix servers. A good way to test the connectivity is by opening IE browser from Citrix servers to your app's URL.

#### No Custom TCP Port ####

When testing your app in Cerner's Sandbox environment via *PowerChart*, your app *must* be hosted on a standard https port 443. When other non-standard ports are used, *PowerChart* will not be able to load the app's URL. This is due to an existing firewall rule set in place for security reasons.

### HealtheLife ###

Direct to consumers apps may also be launched from our patient portal, HealtheLife. Once our patient portal is available for developers, developers in our program will have the ability to launch SMART applications from HealtheLife. This is how you can test as a consumer accessing your application.

## Additional Resources ##

- [Cerner Millennium FHIR API Documentation](http://fhir.cerner.com/millennium/dstu2/)
- [Cerner Authorization Documentation](http://fhir.cerner.com/authorization/)
- [Cerner FHIR Developers Google Group](https://groups.google.com/forum/#!forum/cerner-fhir-developers)
