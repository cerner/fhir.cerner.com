---
title: Binary | DSTU 2 API
---

# Binary

* TOC
{:toc}

## Retrieve by id

List an individual Binary by its id:

    GET /Binary/:id

_Implementation Notes - Binary for [DiagnosticReport]_

* Requires both Binary.read and DiagnosticReport.read OAuth2 scopes.
* Accepts `html`, `text/html` or `application/xhtml+xml` mime types, in addition to JSON

### Response

Retrieving the Binary resource with the JSON mime type

    GET: [...]/Binary/TR-5927259
    Accept: application/json+fhir

<%= headers 200, 'Content-Type': 'application/json+fhir' %>
<%= json(:dstu2_binary_json_entry) %>

Retrieving the Binary resource with its native mime type

    GET: [...]/Binary/TR-5927259
    Accept: text/html

<%= headers 200, 'Content-Type': 'text/html' %>
<%= html(:dstu2_binary_html) %>

[DiagnosticReport]: ../diagnostic-report
