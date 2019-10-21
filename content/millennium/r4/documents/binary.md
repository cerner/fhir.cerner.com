---
title: Binary | R4 API
---

# Binary

* TOC
{:toc}

## Overview

The Binary resource can contain any clinical content such as text, images, and PDFs.  This resource is currently limited to clinical documents and diagnostic reports.  The diagnostic reports are currently limited to Anatomic Pathology and Radiology.

It is recommended to request all Binary resources only after obtaining a link to the resource via references from DiagnosticReport or DocumentReference. It is not recommended to start a workflow in the Binary resource. 

The consumer must populate the Accept header with either application/fhir+json or the format returned in the attachment.contentType of the referring resource.  If the Accept header is application/fhir+json, a FHIR Binary resource is returned with the raw data populated in the content. Otherwise, the raw data will be returned (not contained within a FHIR resource). For more information, see [the Binary Documentation](http://hl7.org/fhir/r4/binary.html#rest).

NOTE: To retrieve documents with application/pdf contentType, the client must have installed Cerner’s Clinical Reporting (XR) solution. For additional information about Cerner’s Clinical Reporting (XR) solution see [Clinical Reporting (XR) Reference Pages](https://wiki.ucern.com/display/reference/Clinical+Reporting+XR+Reference+Pages).

The following fields are returned if valued:

* [Binary id](http://hl7.org/fhir/r4/resource-definitions.html#Resource.id){:target="_blank"}
* [Content type](http://hl7.org/fhir/r4/binary-definitions.html#Binary.contentType){:target="_blank"}
* [Content](http://hl7.org/fhir/r4/binary-definitions.html#Binary.content){:target="_blank"}

## Retrieve by id

List an individual Binary by its id:

    GET /Binary/:id

_Implementation Notes_

* This is usually linked from DocumentReference or DiagnosticReport and should generally be accessed using the exact link given in the referring resource. Modifying the link has undefined consequences.
* Documents containing URL sections are unsupported with contentType of `application/pdf`
* See the [headers](#headers) section for concerns about the Accept header.
* See the [authorization](#authorization-types) section for concerns about the required OAuth scopes.

### Authorization Types

  The Binary.read scope and either the DocumentReference.read or DiagnosticReport.read scopes are required.
  Practitioner | System
