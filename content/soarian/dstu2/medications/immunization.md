---
title: Immunization | Soarian DSTU 2 API
---

# Immunization

* TOC
{:toc}

## Overview

For the Immunization resource query, the API returns a consolidated list of immunizations charted as complete (administered, not administered or historical) for the patient. The list may include immunizations administered internally and/or those externally reported as administered, including records reconciled from external sources such as the patient, state registries and/or consolidated clinical document architecture (C-CDA) documents. The API does not return immunizations that may be ordered or scheduled but not yet administered.

The information available for immunization records may vary depending on their source; for example, immunizations administered locally or as reconciled from a registry record may include ingredient details, codes, precise administration dates, etc. while an immunization reported by a patient or as received in a C-CDA may not. The API will return the level of detail charted.

The dates associated with immunizations may reflect both charted dates and administration dates which are most likely the same for internally administered records but will vary for externally sourced records. Further, administration dates may vary in precision and accuracy depending on the source; specifically patient expressed dates may be fuzzy dates. To avoid ambiguity of intended date context, the API will always return all configured and charted records; no date/date range parameters are supported.

## Terminology Bindings

<%= terminology_table(:soarian_immunization, :dstu2) %>

## Custom Extensions

The [bundle extension] can be returned, see possible codes in the [errors section] below.

## Search

	GET /Immunization?:parameters

_Implementation Notes_

* The API returns the most current immunization list.

* The API returns immunizations that are marked as `complete`. It will not return immunizations that are marked as `entered-in-error`.

* The Narrative includes additional information pertaining to the immunization, and should be shown to the user to ensure completeness of clinical content and context.

### Parameters

 Name      | Required? | Type          | Description
-----------|-----------|---------------|------------------------------------------------------------------------
 patientId | Y         | [`reference`] | The patient identifier provided in a pre-requisite authorization step.

### Headers

<%= headers %>

### Example

#### Request

	GET https://fhir-myrecord.sandboxcerner.com/dstu2/123abc/Immunization?patientId=52930295-B52D-4685-B922-DC5F181CF786

#### Response

<%= headers status: 200 %>
<%= json(:SOARIAN_IMMUNIZATION_BUNDLE) %>

### Errors and Informational messages

The common [errors and informational messages] [common-errors] can be returned.

These additional informational messages may be returned within the [bundle extension]:

 Code    | Message
---------|----------------------------------------------------------------------------------------------------------------------------
 papi009 | This is the most current, known Immunization list and may not reflect the state of immunizations known at a previous date.
 papi010 | No relevant immunizations exist.
 papi030 | No immunization information could be retrieved.

[bundle extension]: ../../#bundle-message-extension
[errors section]: #errors-and-informational-messages
[common-errors]: ../../common-errors
[`reference`]: http://hl7.org/fhir/DSTU2/search.html#reference
