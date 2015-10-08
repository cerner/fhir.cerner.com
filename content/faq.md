---
title: FHIR FAQs
---

# Frequently Asked Questions

* TOC
{:toc}

## FHIR Developer FAQs

### What is Cerner's roadmap for FHIR implementation?

Currently, resources published on [Cerner's FHIR Development](http://fhir.cerner.com/) web site use May2015 and are available to partners. Part of the roadmap is moving the May2015 resources forward to general availability, migrating to the recently released final Draft Standard for Trial Use 2, and helping provide feedback to the current draft of FHIR. Additionally, our roadmap is prioritized depending on maturity of the resources in FHIR (in other words, how stable they are considered), as well as the needs of our business partners. Some external forces, like Meaningful Use, also help determine the priorities and order for the FHIR resources we implement. If you would like to create a business partnership with us and help guide our roadmap, please complete the [SMART on FHIR Collaboration Request form](http://www.cerner.com/Smart_on_FHIR_Collaboration_Request_Form/?LangType=1033).

### What is Cerner's Millennium Web Services toolkit?

Millennium Web Services is an application programming interface (API) that exposes a set of Cerner Millennium business and application logic through person-centric web interfaces. Cerner's Millennium Web Services toolkit includes web services that provide access to a range of the clinical services that are available on the Cerner Millennium platform. These services include concepts around patient demographics, clinical results, clinical documentation, reporting, and scheduling. The Millennium Web Services are exposed using standard protocols (for example, SOAP, REST, and HTTPS).

### What is the future of Millennium Web Services?

With the emergence of the FHIR (Fast HealthCare Interoperability Resources) standard, we expect to migrate Millennium Web Services to the FHIR standard for all services that have a FHIR resource equivalent. Cerner expects that some of the services may never have FHIR equivalents, and so we will maintain those services in addition to the FHIR suite.

### How will Cerner implement FHIR?

Cerner is currently in the process of implementing FHIR to expose Cerner Millennium data to our clients and third-party developers. Cerner believes FHIR will become the public API that the JASON report and the JASON Task Force have called for. We believe FHIR, along with SMART and OAuth2, will enable Cerner Millennium to become an open electronic healthe record (EHR) platform that supports innovative developers.

### With the FHIR implementation, what service and protocol is supported?

The current FHIR implementation supports the REST API through the HTTPS protocol. Any application capable of making an HTTPS call can consume Cerner's FHIR resource suite. In testing, we have desktop, web, and mobile applications that consume our FHIR resource suite. We will support the SMART platform, OAuth2 authentication, and authorization profiles.

### What are SMART apps and what is Cerner's position on usage with FHIR?

The SMART (Substitutable Medical Apps & Reusable Technology) platform defines a specification for an EHR to safely and securely open other applications with context. These SMART applications are commonly web applications but may also be native mobile applications and will use FHIR to read and write data from the EHR. With SMART, Cerner can embed a SMART app in the EHR. Cerner believes that SMART applications will be a major user of FHIR resources. We will also support FHIR access through mobile SMART applications, as those specifications emerge from the [SMART](http://smartplatforms.org/) web site.

### Where can I ask a question?

A developer can post a question to the community using the [Cerner FHIR Developers](https://groups.google.com/forum/#!forum/cerner-fhir-developers) group.
