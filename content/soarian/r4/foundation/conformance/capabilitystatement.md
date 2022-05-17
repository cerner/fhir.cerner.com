---
title: Capability Statement | R4 API
---

# Capability Statement

* TOC
{:toc}

## Overview

The CapabilityStatement resource documents the functionality implemented from the HL7<sup>®</sup> FHIR<sup>®</sup> standard. Unlike most resources, this resource is found at [`:serviceRootURL/metadata`] instead of by its resource name.

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

<%= headers status: 200 %>
<%= json(:r4_metadata) %>

[`:serviceRootURL/metadata`]: ../../#service-root-url

Note: The examples provided here are non-normative and replaying them in the public sandbox is not guaranteed to yield the results shown on the site.

## Well-Known SMART<sup>®</sup> Configuration

The server uses the well-known Uniform Resource Identifier (URI) to convey the Substitutable Medical Applications and Reusable Technologies (SMART)<sup>®</sup> authorization endpoints and launch capabilities.

### Authorization Types

Authorization is not required.

<%= authorization_types(provider: true, patient: true, system: true) %>

#### Request

The request is an HTTP GET operation with a URL formed by appending /.well-known/smart-configuration to the base URL. Soarian Clinicals<sup>®</sup> provides two versions of the well-known URI: one for consumer applications, and another for provider and bulk data or system applications.

* Patient Persona:

GET https://fhir-myrecord-sc.[domainname]/r4/[tenant-id]/.well-known/smart-configuration

Example: https://fhir-myrecord-sc.devcerner.com/r4/4d8f311a-00a9-4133-a765-14e51625f5b4/.well-known/smart-configuration

* Provider and System Persona:

GET https://fhir-ehr-sc.[domainname]/r4/[tenant-id]/.well-known/smart-configuration

Example: https://fhir-ehr-sc.devcerner.com/r4/4d8f311a-00a9-4133-a765-14e51625f5b4/.well-known/smart-configuration

#### Response

The response differs for each persona: patient versus provider or system. The response is a JSON document of the type application/json. The response includes the following metadata:

 Metadata                                          | Description 																																																																									| Patient Persona   | Provider or System Persona
---------------------------------------------------|----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|-------------------|-----------------------------------------------------------
 authorization_endpoint                            | URL to the authorization endpoint. 																																																																			| 		Y     		| 		Y
 token_endpoint                                    | URL to the token endpoint.         																																																																			| 		Y      		| 		Y
 token_endpoint_auth_methods_supported             | An array of client authentication methods supported by the token endpoint. 																																																									| 		Y 			| 		Y
 token_endpoint_auth_signing_alg_values_supported  | JSON array containing a list of the JSON web signature (JWS) signing algorithms ("alg" values) supported by the token endpoint for the signature on the JSON web token (JWT) used to authenticate the client at the token endpoint for the "private_key_jwt" and "client_secret_jwt" authentication methods. 	| 		     		| 		Y
 scopes_supported                                  | An array of scopes that a client application can request.        																																																												| 		Y    		| 		Y
 response_types_supported                          | An array of supported OAuth2 response_type values.       																																																											| 		Y     		| 		Y
 management_endpoint                               | An endpoint where a user can view which applications currently have access to data and make adjustments to those access rights. 																																												| 		Y     		| 		Y
 introspection_endpoint                            | The URL to a server's introspection endpoint that can validate a token.       																																																					| 		Y    		| 		Y
 Capabilities                                      | An array of strings representing SMART<sup>®</sup> capabilities that the server supports.        																																																				| 		Y     		| 		Y

####Response Example for Patient Persona

<%= json(:R4_WELLKNOWN_PATIENT_PERSONA) %>

####Response Example for Provider and System Personas

<%= json(:R4_WELLKNOWN_PROVIDER_SYSTEM_PERSONA) %>

