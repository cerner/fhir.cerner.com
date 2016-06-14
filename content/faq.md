---
title: FAQs
---

# Frequently Asked Questions

* TOC
{:toc}

## FAQs on Cerner's implementation of the HL7<sup>®</sup> FHIR<sup>®</sup> Standard

### What is Cerner's roadmap for FHIR<sup>®</sup> standard implementation?

Currently, resources documented on this web site use May2015 and are available to partners. Part of the roadmap is moving the May2015 resources forward to general availability, migrating to the Draft Standard for Trial Use 2, and helping provide feedback to the current draft of the FHIR<sup>®</sup> standard. Additionally, our roadmap is prioritized depending on maturity of the resources in the FHIR<sup>®</sup> standard (in other words, how stable they are considered), as well as the needs of our business partners. Some external forces, like Meaningful Use, also help determine the priorities and order for the FHIR<sup>®</sup> standard resources we implement. If you would like to create a business partnership with us and help guide our roadmap, please complete the [Collaboration Request form](http://www.cerner.com/Smart_on_FHIR_Collaboration_Request_Form/?LangType=1033).

### What is Cerner's Millennium Web Services toolkit?

Millennium Web Services is an application programming interface (API) that exposes a set of Cerner Millennium business and application logic through person-centric web interfaces. Cerner's Millennium Web Services toolkit includes web services that provide access to a range of the clinical services that are available on the Cerner Millennium platform. These services include concepts around patient demographics, clinical results, clinical documentation, reporting, and scheduling. The Millennium Web Services are exposed using standard protocols (for example, SOAP, REST, and HTTPS).

### What is the future of Millennium Web Services?

With the emergence of the FHIR<sup>®</sup> (Fast HealthCare Interoperability Resources) standard, we expect to migrate Millennium Web Services to the FHIR<sup>®</sup> standard for all services that have a standard resource equivalent. Cerner expects that some of the services may never have standard equivalents, and so we will maintain those services in addition to the Cerner FHIR<sup>®</sup> implementation.

### How will Cerner implement the FHIR<sup>®</sup> standard?

Cerner is currently in the process of implementing the FHIR<sup>®</sup> standard to expose Cerner Millennium data to our clients and third-party developers. Cerner believes the FHIR<sup>®</sup> standard will become the public API that the JASON report and the JASON Task Force have called for. We believe the FHIR<sup>®</sup> standard, along with SMART and OAuth2, will enable Cerner Millennium to become an open electronic health record (EHR) platform that supports innovative developers.

### With Cerner's implementation of the FHIR<sup>®</sup> standard, what service and protocol is supported?

The current FHIR<sup>®</sup> standard implementation supports the REST API through the HTTPS protocol. Any application capable of making an HTTPS call can consume Cerner's implementation of the FHIR<sup>®</sup> standard. In testing, we have desktop, web, and mobile applications that consume our resources. We will support the SMART platform, OAuth2 authentication, and authorization profiles.

### What are SMART apps and what is Cerner's position on usage with the FHIR<sup>®</sup> standard?

The SMART (Substitutable Medical Apps & Reusable Technology) platform defines a specification for an EHR to safely and securely open other applications with context. These SMART applications are commonly web applications but may also be native mobile applications and will use the FHIR<sup>®</sup> standard to read and write data from the EHR. With SMART, Cerner can embed a SMART app in the EHR. Cerner believes that SMART applications will be a major user of implementations of the FHIR<sup>®</sup> standard resources. We will also support access through mobile SMART applications, as those specifications emerge from the [SMART](http://smartplatforms.org/) web site.

### Where can I ask a question?

A developer can post a question to the community using [our google group](https://groups.google.com/forum/#!forum/cerner-fhir-developers).
