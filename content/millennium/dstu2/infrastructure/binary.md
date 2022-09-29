---
title: Binary | DSTU 2 API
---

# Binary

* TOC
{:toc}

## Overview

The Binary resource can contain any clinical content such as text, images, and PDFs.  This resource is currently limited to Continuity of Care Documents (CCD), clinical documents, and diagnostic reports.

It is recommended to request all Binary resources only after obtaining a link to the resource via references from DiagnosticReport or DocumentReference. It is not recommended to start a workflow in the Binary resource.

The consumer must populate the Accept header with either application/json+fhir or the format returned in the attachment.contentType of the referring resource.  If the Accept header is application/json+fhir, a FHIR Binary resource is returned with the raw data populated in the content. Otherwise, the raw data will be returned (not contained within a FHIR resource). For more information see [the Binary Documentation](http://hl7.org/fhir/dstu2/binary.html#rest).

NOTE: To retrieve documents with application/pdf contentType, the client must have installed Cerner’s Clinical Reporting (XR) solution. For additional information about Cerner’s Clinical Reporting (XR) solution see [Clinical Reporting (XR) Reference Pages](https://wiki.ucern.com/display/reference/Clinical+Reporting+XR+Reference+Pages).

The following fields are returned if valued:

* [Binary id](http://hl7.org/fhir/DSTU2/resource-definitions.html#Resource.id){:target="_blank"}
* [Content type](http://hl7.org/fhir/DSTU2/binary-definitions.html#Binary.contentType){:target="_blank"}
* [Content](http://hl7.org/fhir/DSTU2/binary-definitions.html#Binary.content){:target="_blank"}

## Retrieve by id

List an individual Binary by its id:

    GET /Binary/:id

_Implementation Notes_

* This is usually linked from DocumentReference or DiagnosticReport and should generally be accessed using the exact link given in the referring resource. Modifying the link has undefined consequences.
* Documents containing URL sections are unsupported with contentType of `application/pdf`
* See the [headers](#headers) section for concerns about the Accept header.
* See the [authorization](#authorization-types) section for concerns about the required OAuth scopes.

### Authorization Types

The necessary OAuth scopes can be determined by checking the attachment.contentType in the referring resource. For attachments with the `application/pdf` contentType, the Binary.read and DocumentReference.read scopes are required. For attachments with the `text/html` contentType, the Binary.read and DiagnosticReport.read scopes are required.

<%= authorization_types(provider: true,  patient: true, system: true) %>

### Headers

Either `DocumentReference.content.attachment.contentType` or `DiagnosticReport.presentedForm.contentType` should be used to set the `Accept` header. An `Accept` header of `application/json+fhir` could be supplied instead, if the JSON Binary resource is desired instead of the raw data.

This resource will not accept the `application/json` mime type unless the underlying binary data is json.

<%= headers %>

### FHIR Accept Example

#### Request

<%= headers head: {'Accept': 'application/json+fhir'} %>

    GET https://fhir-open.cerner.com/dstu2/ec2458f2-1e24-41c8-b71b-0e701af7583d/Binary/TR-197198634

#### Response

<%= headers status: 200, head: {'Content-Type': 'application/json+fhir'} %>
<%= json(:dstu2_binary_json_entry) %>
<%= disclaimer %>

### Native Accept Example

#### Request

<%= headers head: {'Accept': 'text/html'} %>

    GET https://fhir-open.cerner.com/dstu2/ec2458f2-1e24-41c8-b71b-0e701af7583d/Binary/TR-197198634

#### Response

<%= headers status: 200, head: {'Content-Type': 'text/html'} %>
<%= html(:dstu2_binary_html) %>
<%= disclaimer %>

### Errors

The common [errors] and [OperationOutcomes] may be returned.

## $autogen-ccd-if

Generates the Continuity of Care Document (CCD) as a Binary for the supplied query parameters:

    GET /Binary/$autogen-ccd-if?:parameters

_Implementation Notes_

* This is usually linked from DocumentReference, and should generally be accessed using the exact link given in that resource. Modifying the link has undefined consequences.
* See the [headers](#headers-1) section for concerns about the Accept header.
* See the [authorization](#authorization-types-1) section for concerns about the required OAuth scopes.

### Authorization Types

Requires both the appropriate Binary.read and DocumentReference.read scopes to be granted to the caller.

<%= authorization_types(provider: true, patient: true, system: true) %>

### Parameters

 Name     | Required? | Type          | Description
----------|-----------|---------------|-------------------------------------------------
`patient` | Y         | [`reference`] | A reference to the patient that is the subject of the CCD. Example: `12345`
`start`   | N         | [`date`]      | The start of the date range for which the CCD is to be generated. If not provided, then all records from the beginning of time are included. Example: `2014-09-24T12:00:00.000Z`
`end`     | N         | [`date`]      | The end of the date range for which the CCD is to be generated. If not provided, then all records up to the current date are included. Example: `2016-09-24T12:00:00.000Z`

Notes:   

- The `start` and `end` parameters must be valid [dateTime]s with a time component. They must have prefixes of `eq` or nothing.

### Headers

The `DocumentReference.content.attachment.contentType` should be used to set the `Accept` header. An `Accept` header of `application/json+fhir` could be supplied instead, if the JSON Binary resource is desired insetad of the raw data.

This resource will not accept the `application/json` mime type unless the underlying binary data is json.

<%= headers %>

### FHIR Accept Example

#### Request

<%= headers head: {'Accept': 'application/json+fhir'} %>

    GET: https://fhir-open.cerner.com/dstu2/ec2458f2-1e24-41c8-b71b-0e701af7583d/Binary/$autogen-ccd-if?patient=12724066

#### Response

<%= headers status: 200, head:{'Content-Type': 'application/json+fhir'} %>
<%= json(:dstu2_binary_ccd_json_entry) %>
<%= disclaimer %>

### Native Accept Example

#### Request

<%= headers head: {'Accept': 'application/xml'} %>

    GET: https://fhir-open.cerner.com/dstu2/ec2458f2-1e24-41c8-b71b-0e701af7583d/Binary/$autogen-ccd-if?patient=12724066

#### Response

<%= headers status: 200, head:{'Content-Type': 'application/xml'} %>
<%= html(:dstu2_binary_ccd_xml) %>
<%= disclaimer %>

### Errors

The common [errors] and [OperationOutcomes] may be returned.

[DiagnosticReport]: ../../diagnostic/diagnostic-report
[`reference`]: http://hl7.org/fhir/DSTU2/search.html#reference
[`date`]: http://hl7.org/fhir/DSTU2/search.html#date
[dateTime]: http://hl7.org/fhir/DSTU2/datatypes.html#dateTime
[errors]: ../../#client-errors
[OperationOutcomes]: ../../#operation-outcomes
