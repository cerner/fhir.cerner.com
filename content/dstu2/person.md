---
title: Person | DSTU 2 API
---

# Person

* TOC
{:toc}

## Terminology Bindings

<%= terminology_table(:person, :dstu2) %>

## Search

Search for Persons that meet supplied query parameters:

    GET /Person?:parameters

### Parameters

 Name         | Required?                                                    | Type       | Description
--------------|--------------------------------------------------------------|------------|------------------------------------------------------------------------------------
 `_id`        | No, if populated all other parameters are ignored            | [`token`]  | The logical resource id associated with the resource.
 `identifier` | Yes, or `_id`                                                | [`token`]  | The person identifier.  Example: `urn:oid:2.16.840.1.113883.3.13.6|01022228`

Notes:
 
- `identifier` value must include both a system and a code. Example: `identifier=urn:oid:2.16.840.1.113883.3.13.6|URN:CERNER:...:PI98N2FK5TN`

### Response

<%= headers 200, GET: '[...]/Person/14149269' %>
<%= json(:dstu2_person_bundle) %>

## Retrieve by id

List an individual Person by its id:

    GET /Person/:id

### Response

<%= headers 200, GET: '[...]/Person?identifier=urn:oid:2.16.840.1.113883.3.13.6|URN:CERNER:IDENTITY-FEDERATION:REALM:AC193C1A-9763-45E1-9FA2-C1C3AA4BA16D:PRINCIPAL:R53HZ5ZL8ZX' %>
<%= json(:dstu2_person_entry) %>

[`token`]: http://hl7.org/fhir/DSTU2/search.html#token
