---
title: DocumentReference | MAY 2015 BALLOT API
---

# DocumentReference

* TOC
{:toc}

## Terminology Bindings

<%= terminology_table(:document_reference, :may2015) %>

## Create

Create new documents. Only documents that would be classified as notes are currently supported.

    POST /DocumentReference

### Headers

To successfully POST a document, the following headers must be provided. Document creation is supported from the closed endpoint only.

    Content-Type: application/json+fhir
    Authorization: <OAuth2 Bearer Token>

### Body fields

<%= definition_table(:document_reference, :create, :may2015) %>

### Implementation Notes

* The [relatesTo](http://hl7.org/fhir/2015May/documentreference-definitions.html#DocumentReference.relatesTo) Is-Modifier field is not supported and will be ignored if present.

#### Example Body

    {
       "resourceType": "DocumentReference",
       "subject": {"reference":"Patient/36920071"},
       "type": {"coding": [{"system":"http://loinc.org", "code":"34840-9"}]},
       "author": [{"reference": "Practitioner/2044324"}],
       "indexed": "2016-01-06T09:10:14Z",
       "status": "current",
       "docStatus": {"coding": [{"system": "http://hl7.org/fhir/composition-status", "code": "final"}]},
       "description": "Rheumatology Note",
       "content": [{"contentType": "application/xhtml+xml; charset=utf-8","data": "<snipped for brevity>"}],
       "context": {"related": [{"ref": {"reference": "Encounter/33419091"}}]}
    }

### Response

<%= headers 201 %>
<pre class="terminal">
   Connection → Keep-Alive
   Content-Encoding → gzip
   Content-Length → 20
   Content-Type → text/html; charset=UTF-8
   Date → Wed, 06 Jan 2016 22:15:12 GMT
   Keep-Alive → timeout=15, max=100
   Status → 201 Created
   access-control-allow-methods → DELETE, GET, POST, PUT, OPTIONS, HEAD
   access-control-allow-origin → *
   access-control-expose-headers → ETag, Content-Location, Location, X-Request-Id, WWW-Authenticate, Date
   access-control-max-age → 0
   cache-control → no-cache
   location → https://fhir.sandboxcernerpowerchart.com/may2015/d075cf8b-3261-481d-97e5-ba6c48d3b41f/DocumentReference/5789258
   server-response-time → 3751.0383859999997
   strict-transport-security → max-age=631152000
   vary → Origin,User-Agent,Accept-Encoding
   x-content-type-options → nosniff
   x-frame-options → SAMEORIGIN
   x-request-id → cef31d49-a952-4711-8aa8-5fee359cd91f
   x-runtime → 3.751004
   x-xss-protection → 1; mode=block
</pre>
