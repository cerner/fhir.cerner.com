---
title: Overview
layout: soarian/overview
---
# Overview

This document describes the resources that comprise Cerner’s Soarian Clinicals<sup>®</sup> implementation of the Health Level Seven<sup>®</sup> (HL7)<sup>®</sup> International Fast Healthcare Interoperability Resources<sup>®</sup> (FHIR)<sup>®</sup> standard. If you have any problems or requests, post them to our [developer group](https://groups.google.com/forum/#!forum/cerner-fhir-developers).

* TOC
{:toc}

## Supported Versions

Cerner’s Soarian Clinicals<sup>®</sup> implementation currently supports both the R4 First Normative Content (4.0.1) version and DSTU 2 Final (1.0.2) version of the HL7<sup>®</sup> FHIR<sup>®</sup> standard. Cerner’s implementation of the R4 version is ongoing and new resources and actions will be added over time.

## Determining Which Version to Use

The best version to use depends on your use case. In general, if the R4 implementation meets all of your requirements, target your development against the R4 version. To determine whether the R4 version meets your requirements, you need to consider supported resources and actions, provider access, and technical requirements. In general, R4 has more capabilities that will not be patched back to DSTU 2.

Cerner’s Soarian Clinicals<sup>®</sup> DSTU 2 implementation does not support access for provider-facing applications. Only the R4 implementation supports provider-facing applications.

Existing DSTU 2 patient-facing applications will eventually need to be migrated to the R4 implementation. For this reason, Cerner strongly recommends that you develop against R4 whenever possible.

## Supported Resources Between Versions

To determine which resources and actions our DSTU 2 and R4 implementations support, browse our documentation for both DSTU 2 and R4 and compare the capabilities of each version. You can also compare the Conformance (DSTU 2) and CapabilityStatement (R4) endpoints for the list of supported resources and actions.

The following table summarizes the resources and actions that our DSTU 2 and R4 implementations currently support for patient and provider access.

<%= render '/soarian/diff_table.*' %>
