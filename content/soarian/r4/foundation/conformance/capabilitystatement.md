---
title: CapabilityStatement | R4 API
---

# CapabilityStatement

* TOC
{:toc}

## Overview

## Metadata

### Authorization Types

Authorization is not required.

<%= authorization_types(provider: true, patient: true, system: true)%>

## Well-Known SMART<sup>®</sup> Configuration

The server uses the well-known Uniform Resource Identifier (URI) to convey the Substitutable Medical Applications and Reusable Technologies (SMART)<sup>®</sup> authorization endpoints and launch capabilities.

### Authorization Types

Authorization is not required.

<%= authorization_types(provider: true, patient: true, system: true)%>

### Request

The request is an HTTP GET operation with a URL that is formed by appending /.well-known/smart-configuration to the base URL. Soarian Clinicals<sup>®</sup> provides two versions of the well-known URI: one for consumer applications, and another for provider and bulk data or system applications.

    * Patient Persona:
        GET https://fhir-myrecord-sc.[domainname]/r4/[tenant-id]/.well-known/smart-configuration
        Example: https://fhir-myrecord-sc.devcerner.com/r4/4d8f311a-00a9-4133-a765-14e51625f5b4/.well-known/smart-configuration

    * Provider and System Persona:
        GET https://fhir-ehr-sc.[domainname]/r4/[tenant-id]/.well-known/smart-configuration
        Example: https://fhir-ehr-sc.devcerner.com/r4/4d8f311a-00a9-4133-a765-14e51625f5b4/.well-known/smart-configuration

### Response

The response differs for each persona: patient versus provider or system. The response is a JSON document of the type application/json. The response includes the following metadata:

 Metadata                             | Description                                  | Patient Persona                                            | Provider or System Persona
------------------------              |----------------------------------------------|------------------------------------------------------------|----------------------------------------------------------------------------------------------------------------------------
 authorization_endpoint               | URL to the authorization endpoint.           | Y                                                          | Y
 token_endpoint                       | URL to the token endpoint. 	                 | Y                                                          | Y
 token_endpoint_auth_methods_supported | An array of client authentication methods supported by the token endpoint.| Y                            | Y
token_endpoint_auth_signing_alg_values_supported | JSON array containing a list of the JSON web signature (JWS) signing algorithms ("alg" values) supported by the token endpoint for the signature on the JSON web token (JWT) used to authenticate the client at the token endpoint for the "private_key_jwt" and "client_secret_jwt" authentication methods.                                                              |                                                            | Y
scopes_supported	                  | An array of scopes that a client application can request. | Y                                             |	Y
response_types_supported              |	An array of OAuth2 response_type values that are supported. | Y	                                          | Y
management_endpoint                   |	An endpoint where a user can view which applications currently have access to data and make adjustments to those access rights.                                                                                       | Y	                                                      | Y
introspection_endpoint	              | The URL to a server’s introspection endpoint that can be used to validate a token.	| Y	                  | Y
Capabilities	                      | An array of strings representing SMART® capabilities that the server supports. | Y                        |	Y

### Response Example for Patient Persona

<%= headers status: 200 %>
<%= json(:SOARIAN_R4_RESPONSE_PATIENT_PERSONA) %>

### Response Example for Provider and System Personas

<%= headers status: 200 %>
<%= json(:SOARIAN_R4_RESPONSE_PROVIDER_AND_SYSTEM_PERSONA) %>







 