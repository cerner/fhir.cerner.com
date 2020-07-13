---
title: Overview
layout: millennium-overview
---

# Overview

This describes the resources that make up Cerner's implementation of the HL7<sup>®</sup> FHIR<sup>®</sup> standard. If 
you have any problems or requests, please post to our [developer group](https://groups.google.com/d/forum/cerner-fhir-developers).

* TOC
{:toc}

## Supported Versions

Cerner's implementation currently supports both the R4 First Normative Content (4.0.1) version and DSTU 2 Final (1.0.2) 
version of the HL7<sup>®</sup> FHIR<sup>®</sup> standard. Cerner's implementation of the R4 version is ongoing and new 
resources and actions will be added over time.

## Determining Which Version You Should Use

Determining which version you should use will depend upon your use case and, in general, if the R4 implementation meets 
all of your requirements, you should target your development against the R4 version. To determine if the R4 version 
meets your requirements, you need to consider supported resources and actions, patient access, and technical requirements. 
In general, there are more capabilities such as create and modify in R4 that will not be patched back to DSTU 2.

Cerner's R4 implementation currently does not support patient access, nor is it certified for HIT 2015 Edition Cures Act 
(formerly Meaningful Use 3). Cerner will be adding support for patient access and enhancing R4 APIs over the coming 
months in time for clients to certify. Cerner's R4 implementation will achieve a like-for-like implementation of all 
resources and actions currently supported by DSTU 2. Existing DSTU 2 apps will eventually need to be migrated to our R4 
implementation. For this reason, we highly encourage development against R4 whenever possible.

## Supported Resources Between Versions
To determine what resources and actions are supported by our DSTU 2 and R4 implementations you can browse our 
documentation for both DSTU 2 and R4 and compare between each version. You can also compare the Conformance (DSTU 2) and 
CapabilityStatement (R4) endpoints for the list of supported resources and actions.

The table below gives a live view of what resources and actions are currently supported by our DSTU 2 and R4 
implementations for system and provider access.

<%= render '/millennium_diff_table.*' %>
