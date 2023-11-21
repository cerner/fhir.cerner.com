---
title: CapabilityStatement | R4 API
---

# CapabilityStatement

* TOC
{:toc}

## Overview

The CapabilityStatement resource documents the functionality implemented from the HL7<sup>®</sup> FHIR<sup>®</sup> standard. Unlike most resources,
this resource is found at [`:serviceRootURL/metadata`] instead of by its resource name.

## Metadata

Get the capabilities and configurations of this implementation and deployment of the FHIR standard.

    GET /metadata?:parameters

_Implementation Notes_

* Authentication is not required to access the Conformance resource
* No parameters other than the standard `_format` parameter are supported for reading CapabilityStatement
* Resource actions that are still under development will be returned in the CapabilityStatement with documentation on the interaction explaining that the resource action is still under development and should not be used in production. These resource actions are listed as 'beta' on fhir.cerner.com.

### Authorization Types

Authorization is not required.

<%= authorization_types(provider: true, patient: true, system: true) %>

### Open Endpoint Example

#### Request

    curl -i -H "Accept: application/fhir+json" "https://fhir-open.cerner.com/r4/ec2458f2-1e24-41c8-b71b-0e701af7583d/metadata"

<%= RequestButton.get('open', :r4, 'metadata', 200, :r4_open_metadata) %>

### Closed Endpoint Example

#### Request

    curl -i -H "Accept: application/fhir+json" "https://fhir-ehr.cerner.com/r4/ec2458f2-1e24-41c8-b71b-0e701af7583d/metadata"

<%= RequestButton.get('ehr', :r4, 'metadata', 200, :r4_auth_metadata) %>

[`:serviceRootURL/metadata`]: ../../#service-root-url

## Well-Known SMART Configuration

Get the SMART authorization endpoints and launch capabilities.

    GET /.well-known/smart-configuration?:parameters

_Implementation Notes_

* Authentication is not required to access the configuration information
* No parameters other than the standard `_format` parameter are supported for reading
* The configuration information is not accessible through the Open Endpoint

### Authorization Types

Authorization is not required.

<%= authorization_types(provider: true, patient: true, system: true) %>

### Example

#### Request

    curl -i -H "Accept: application/json" "https://fhir-ehr.cerner.com/r4/ec2458f2-1e24-41c8-b71b-0e701af7583d/.well-known/smart-configuration"

<%= RequestButton.get('ehr', :r4, '.well-known/smart-configuration', 200, :r4_well_known) %>
