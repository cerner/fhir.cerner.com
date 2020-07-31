---
title: Conformance | DSTU 2 API
---

# Conformance

* TOC
{:toc}

## Overview

The Conformance resource documents the functionality implemented from the HL7<sup>®</sup> FHIR<sup>®</sup> standard. Unlike most resources,
this resource is found at [`:serviceRootURL/metadata`] instead of by its resource name.

## Metadata

Get the capabilities and configurations of this implementation and deployment of the FHIR standard.

    GET /metadata?:parameters

_Implementation Notes_

* Authentication is not required to access the Conformance resource
* No parameters other than the standard `_format` parameter are supported for reading Conformance

### Authorization Types

Authorization is not required.

<%= authorization_types(practitioner: true, patient: true, system: true) %>

### Open Endpoint Example

#### Request

    curl -i -H "Accept: application/json+fhir" "https://fhir-open.sandboxcerner.com/dstu2/0b8a0111-e8e6-4c26-a91c-5069cbc6b1ca/metadata"

<%= RequestButton.get('open', :dstu2, 'metadata', 200, :dstu2_open_metadata) %>

### Closed Endpoint Example

#### Request

    curl -i -H "Accept: application/json+fhir" "https://fhir-ehr.sandboxcerner.com/dstu2/0b8a0111-e8e6-4c26-a91c-5069cbc6b1ca/metadata"

<%= RequestButton.get('ehr', :dstu2, 'metadata', 200, :dstu2_auth_metadata) %>

[`:serviceRootURL/metadata`]: ../../#service-root-url
