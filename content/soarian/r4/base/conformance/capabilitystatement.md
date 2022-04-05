---
title: Capability Statement | R4 API
---

# Capability Statement

* TOC
{:toc}

## Overview

The CapabilityStatement resource documents the functionality implemented from the HL7<sup>®</sup> FHIR<sup>®</sup> standard. Unlike most resources, this resource is found at []:serviceRootURL/metadata](https://fhir.cerner.com/millennium/r4/foundation/#service-root-url) instead of by its resource name.

## Metadata

Get the capabilities and configurations of this implementation and deployment of the FHIR<sup>®</sup> standard.

    GET [base] URL/metadata?:parameters

_Implementation Notes_

* Authentication is not required to access the CapabilityStatement resource.
* No parameters other than the standard `_format` parameter are supported for reading CapabilityStatement

### Authorization Types

Authorization is not required. 

### Headers

    Accept: application/json+fhir,  "application/json", "application/fhir+json"

### Example

#### Request

    https://fhir-myrecord-sc.cerner.com/r4/03416cd1-2b98-4412-95ef-920e74c5194b/metadata

#### Response

A successful response includes:
* HTTP Status Code 200
* Capability Statement_Patient persona.json


Note: The examples provided here are non-normative and replaying them in the public sandbox is not guaranteed to yield the results shown on the site.





