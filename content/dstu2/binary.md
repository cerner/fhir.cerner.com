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

## Operation $autogen-ccd-if

Retrieves the generated Binary Continuity of Care Document (CCD) for the supplied query parameters:

    GET /Binary/$autogen-ccd-if?:parameters

_Implementation Notes_

* Requires both Binary.read and DocumentReference.read OAuth2 scopes.
* Accepts `application/xml` mime type, in addition to `application/json+fhir`

### Parameters

 Name     | Required? | Type          | Description
----------|-----------|---------------|-------------------------------------------------
`patient` | Yes       | [`reference`] | A reference to a patient whose Binary CCD is required. Example: `14067892`
`period`  | No        | [`date`]      | The date range for which the Binary CCD is to be generated. Example: `ge2014-09-24T12:00:00.000Z`

Notes:   

- The `period` parameter:  
  - must be a valid [dateTime] with a time
  - may be provided once with the prefix `ge` or `le` to specify an implied date range. (e.g. `&period=ge2014-09-24T12:00:00.000Z` or `&period=le2014-09-24T12:00:00.000Z`)
  - may be provided twice with prefixes `ge` and `le` to indicate a specific date range. The date and prefix pairs must create an upper and lower bound. (e.g. `&period=ge2014-09-24T12:00:00.000Z` and `&period=le2016-10-19T12:00:00.000Z`)

### Response

Retrieving the resource with the JSON mime type

    GET: [...]/Binary/$autogen-ccd-if?patient=1316024
    Accept: application/json+fhir

<%= headers 200, 'Content-Type': 'application/json+fhir' %>
<%= json(:dstu2_binary_ccd_json_entry) %>

Retrieving the Binary resource with its native mime type

    GET: [...]/Binary/$autogen-ccd-if?patient=1316024
    Accept: application/xml

<%= headers 200, 'Content-Type': 'application/xml' %>
<%= html(:dstu2_binary_ccd_xml) %>

[DiagnosticReport]: ../diagnostic-report
[`reference`]: http://hl7.org/fhir/DSTU2/search.html#reference
[`date`]: http://hl7.org/fhir/DSTU2/search.html#date
[dateTime]: http://hl7.org/fhir/DSTU2/datatypes.html#dateTime
