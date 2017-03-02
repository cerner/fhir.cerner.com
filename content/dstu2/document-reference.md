---
title: DocumentReference | DSTU 2 API
---

# DocumentReference

* TOC
{:toc}

## Terminology Bindings

<%= terminology_table(:document_reference, :dstu2) %>

## Create

Create new documents. Currently limited to unstructured clinical notes or documentation. For example, a document with display formatting or styling can be written, but a CCD cannot.

    POST /DocumentReference

### Headers

To successfully POST a document, the following headers must be provided. Document creation is supported from the closed endpoint only.

    Content-Type: application/json+fhir
    Authorization: <OAuth2 Bearer Token>

### Body fields

_Implementation Notes_   

* The modifier elements [implicitRules], [modifierExtension] and [relatesTo] are not supported and will be rejected if
present.
* Currently only XHTML formatted documents are supported. You can validate your document using any available XHTML validator like the one linked [here].

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
   location → https://fhir-ehr.sandboxcerner.com/dstu2/0b8a0111-e8e6-4c26-a91c-5069cbc6b1ca/DocumentReference/5789254
   server-response-time → 5497.564885
   strict-transport-security → max-age=631152000
   vary → Origin,User-Agent,Accept-Encoding
   x-content-type-options → nosniff
   x-frame-options → SAMEORIGIN
   x-request-id → 9c7510c0-0bb5-4148-b37e-51a774c4091b
   x-runtime → 5.497541
   x-xss-protection → 1; mode=block
</pre>

## Operation: docref

Argonaut operation for querying DocumentReferences for the supplied parameters:

    GET /DocumentReference/$docref?:parameters

_Implementation Notes_

* The [DocumentReference.relatesTo] modifier element is not supported and will not be returned.

### Terminology Bindings

<%= terminology_table(:document_reference_docref, :dstu2) %>

### Parameters

 Name     | Required? | Type          | Description
----------|-----------|---------------|-------------------------------------------------
`patient` | Y         | [`reference`] | A reference to the patient whose document references are required. Example: `14067892`
`type`    | Y         | [`token`]     | The document reference type, can be a list of comma separated values. Example: `http://loinc.org|34133-9`
`start`   | N         | [`date`]      | The start of the date range from which document reference records should be included. If not provided, then all records from the beginning of time are included. Example: `2014-09-24T12:00:00.000Z`
`end`     | N         | [`date`]      | The end of the date range till which document reference records should be included. If not provided, then all records up to the current date are included. Example: `2016-09-24T12:00:00.000Z`

Notes:   

- The `type` parameter must include both a system and a code. (e.g. `&type=http://loinc.org|34133-9`)
- The `start` and `end` parameters must be valid [dateTime]s with a time component. They must have prefixes of `eq` or nothing.

### Response

<%= headers 200, GET: '[...]/DocumentReference/$docref?patient=1316035&type=http://loinc.org|34133-9' %>
<%= json(:dstu2_document_reference_docref_bundle) %>

[implicitRules]: http://hl7.org/fhir/DSTU2/resource-definitions.html#Resource.implicitRules
[modifierExtension]: http://hl7.org/fhir/DSTU2/domainresource-definitions.html#DomainResource.modifierExtension
[relatesTo]: http://hl7.org/fhir/DSTU2/documentreference-definitions.html#DocumentReference.relatesTo
[here]: https://html5.validator.nu/
[`reference`]: http://hl7.org/fhir/DSTU2/search.html#reference
[`token`]: http://hl7.org/fhir/DSTU2/search.html#token
[`date`]: http://hl7.org/fhir/DSTU2/search.html#date
[dateTime]: http://hl7.org/fhir/DSTU2/datatypes.html#dateTime
[DocumentReference.relatesTo]: http://hl7.org/fhir/DSTU2/documentreference-definitions.html#DocumentReference.relatesTo
