---
title: Binary | R4 API
---

# Binary

* TOC
{:toc}

## Overview

The Binary resource can contain any clinical content such as text, images, and PDFs. This resource is currently limited to Continuity of Care Documents (CCD), clinical documents and diagnostic reports. The diagnostic reports are currently limited to Anatomic Pathology and Radiology.

It is recommended to request Binary resources only after obtaining links to the resources via references from DiagnosticReport or DocumentReference. It is not recommended to start a workflow with Binary resources.

The consumer must populate the Accept header with either `application/fhir+json` or the format returned in the `attachment.contentType` of the referring resource. If the Accept header is `application/fhir+json`, a FHIR Binary resource is returned with the raw data populated in `Binary.data`. If the Accept header is anything else, the raw data will be returned instead of a FHIR Binary resource. For more information, see the HL7<sup>®</sup> FHIR<sup>®</sup> [Binary documentation](http://hl7.org/fhir/r4/binary.html#rest).

Note: in order to retrieve documents with the `application/pdf` content type, Cerner's Clinical Reporting (XR) solution must be installed for the client site you are loading data from. For additional information about Cerner's Clinical Reporting (XR) solution see Cerner's [Clinical Reporting (XR) Reference Pages](https://wiki.ucern.com/display/reference/Clinical+Reporting+XR+Reference+Pages).

The following fields are returned if valued:

* [Binary id](http://hl7.org/fhir/r4/resource-definitions.html#Resource.id){:target="_blank"}
* [Content type](http://hl7.org/fhir/r4/binary-definitions.html#Binary.contentType){:target="_blank"}
* [Content](http://hl7.org/fhir/r4/binary-definitions.html#Binary.data){:target="_blank"}

## Retrieve by id

List an individual Binary by its id:

    GET /Binary/:id

_Implementation Notes_

* This is usually linked from DocumentReference or DiagnosticReport and should generally be accessed using the exact link given in the referring resource. Modifying the link has undefined consequences.
* Documents containing URL sections are unsupported with contentType of `application/pdf`
* See the [headers](#headers) section for concerns about the Accept header.
* See the [authorization](#authorization-types) section for concerns about the required OAuth scopes.

### Authorization Types

<%= authorization_types(provider: true, patient: true, system: true) %>

_Implementation Notes_

* The `Binary.read` scope and either the `DiagnosticReport.read` or the `DocumentReference.read` scope is required.

### Headers

`DocumentReference.content.attachment.contentType` should be used to set the `Accept` header. An `Accept` header of `application/fhir+json` could be supplied instead, if the JSON Binary resource is desired instead of the raw data.

This resource will not accept the `application/json` mime type unless the underlying binary data is json.

<%= headers fhir_json: true %>

### FHIR Accept Example

#### Request

<%= headers head: {'Accept': 'application/fhir+json'} %>

    GET https://fhir-open.cerner.com/r4/ec2458f2-1e24-41c8-b71b-0e701af7583d/Binary/TR-21961261

#### Response

<%= headers status: 200 %>
<%= json(:r4_binary_tr_json_entry) %>

<%= disclaimer %>

### Native Accept Example

#### Request

<%= headers head: {'Accept': 'text/html'} %>

    GET https://fhir-open.cerner.com/r4/ec2458f2-1e24-41c8-b71b-0e701af7583d/Binary/TR-21961261

#### Response

<%= headers status: 200 %>
<%= html(:r4_binary_tr_html_entry) %>

<%= disclaimer %>

#### Patient Authorization Request

### Example

#### Request

    GET https://fhir-ehr.cerner.com/r4/ec2458f2-1e24-41c8-b71b-0e701af7583d/Binary/XR-197198634

#### Response

<%= headers status: 200 %>
<%= json(:r4_binary_entry) %>

<%= disclaimer %>

### Errors

The common [errors] and [OperationOutcomes] may be returned.

## $autogen-ccd-if

Generates the Continuity of Care Document (CCD) as a Binary for the supplied query parameters:

  GET /Binary/$autogen-ccd-if?:parameters

_Implementation Notes_

* This is usually linked from DocumentReference, and should generally be accessed using the exact link given in that resource. Modifying the link has undefined consequences.
* See the [headers](#headers) section for concerns about the Accept header.
* See the [authorization](#authorization-types) section for concerns about the required OAuth scopes.

### Authorization Types

Requires both the appropriate Binary.read and DocumentReference.read scopes to be granted to the caller.

<%= authorization_types(provider: true, patient: true, system: true) %>

### Headers

An `Accept` header of `application/xml` could be supplied instead, if the XML Binary resource is desired insetad of the JSON data.

<%= headers fhir_json: true %>

### Example

#### Request

    GET https://fhir-open.cerner.com/r4/ec2458f2-1e24-41c8-b71b-0e701af7583d/Binary/$autogen-ccd-if?patient=1694010

#### Response

<%= headers status: 200 %>
<%= json(:r4_binary_ccd_entry) %>

<%= disclaimer %>

#### Patient Authorization Request

### Example

#### Request

    GET https://fhir-ehr.cerner.com/r4/ec2458f2-1e24-41c8-b71b-0e701af7583d/Binary/$autogen-ccd-if?patient=1694010

#### Response

<%= headers status: 200 %>
<%= json(:r4_binary_ccd_entry) %>

<%= disclaimer %>

### Errors

The common [errors] and [OperationOutcomes] may be returned.

[`token`]: http://hl7.org/fhir/r4/search.html#token
[errors]: ../../#client-errors
[OperationOutcomes]: ../../#operation-outcomes
