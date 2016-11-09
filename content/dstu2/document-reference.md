---
title: DocumentReference | DSTU 2 API
---

# DocumentReference

* TOC
{:toc}

## Terminology Bindings

<%= terminology_table(:document_reference, :dstu2) %>

## Create

Create new documents. Currently only XHTML formatted documents are supported. Only documents that need to be associated to the patient's chart should be written. Please validate your document is valid XHTML using any available validator like the one linked [here]. 

    POST /DocumentReference

### Headers

To successfully POST a document, the following headers must be provided. Document creation is supported from the closed endpoint only.

    Content-Type: application/json+fhir
    Authorization: <OAuth2 Bearer Token>

### Body fields

_Implementation Notes_   

* The [relatesTo] modifier element is not supported and will be ignored if present.

<%= definition_table(:document_reference, :create, :dstu2) %>

#### Example Body

    {
      "resourceType": "DocumentReference",
      "subject": {
        "reference": "Patient/53663272"
      },
      "type": {
        "coding": [
          {
            "system": "http://loinc.org",
            "code": "34840-9"
          }
        ]
      },
      "author": [
        {
          "reference": "Practitioner/21500981"
        }
      ],
      "indexed": "2015-11-18T18:00:00Z",
      "status": "current",
      "docStatus": {
        "coding": [
          {
            "system": "http://hl7.org/fhir/composition-status",
            "code": "final"
          }
        ]
      },
      "description": "Rheumatology Note",
      "content": [
        {
          "attachment": {
            "contentType": "application/xhtml+xml;charset=utf-8",
            "data": "<snipped for brevity>"
          }
        }
      ],
      "context": {
        "encounter": {
          "reference": "Encounter/4208059"
        },
        "period": {
          "end": "2015-08-20T09:10:14Z"
        }
      }
    }

### Response

<%= headers 201 %>
<pre class="terminal">
   Connection → Keep-Alive
   Content-Encoding → gzip
   Content-Length → 20
   Content-Type → text/html; charset=UTF-8
   Date → Wed, 06 Jan 2016 18:09:18 GMT
   Keep-Alive → timeout=15, max=100
   Status → 201 Created
   access-control-allow-methods → DELETE, GET, POST, PUT, OPTIONS, HEAD
   access-control-allow-origin → *
   access-control-expose-headers → ETag, Content-Location, Location, X-Request-Id, WWW-Authenticate, Date
   access-control-max-age → 0
   cache-control → no-cache
   location → https://fhir.sandboxcernerpowerchart.com/dstu2/d075cf8b-3261-481d-97e5-ba6c48d3b41f/DocumentReference/5789254
   server-response-time → 5497.564885
   strict-transport-security → max-age=631152000
   vary → Origin,User-Agent,Accept-Encoding
   x-content-type-options → nosniff
   x-frame-options → SAMEORIGIN
   x-request-id → 9c7510c0-0bb5-4148-b37e-51a774c4091b
   x-runtime → 5.497541
   x-xss-protection → 1; mode=block
</pre>

[relatesTo]: http://hl7.org/fhir/DSTU2/documentreference-definitions.html#DocumentReference.relatesTo
[here]: https://html5.validator.nu/
