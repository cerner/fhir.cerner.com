---
title: Health Cards | R4 API
---

# Health-Cards

* TOC
{:toc}

## Overview

Health Cards are TBD

## Terminology Bindings

TBD
<%= terminology_table(:verifiable_credentials_health_cards, :r4) %>

## $health-cards-issue 

Issue a  Health Card for a patient that meet the supplied request:

    POST /Patient/{Patient.id}/$health-cards-issue

_Implementation Notes_

* Only the body fields mentioned below are supported. Unsupported fields will be ignored.

### Authorization Types

<%= authorization_types(provider: false, patient: true, system: false) %>

### Supported Credential Types

TBD - May need to be put in the [Body Fields](#Body-Fields)

### Headers

<%= headers fhir_json: true %>

### Body Fields

TBD

### Example

#### Request

    POST https://fhir-open.stagingcerner.com/beta/ec2458f2-1e24-41c8-b71b-0e701af7583d/Patient/12724065/$health-cards-issue

#### Body

<%= json(:r4_health_cards_issue_request) %>

#### Response

TBD
<%= headers status: 200 %>
<%= json(:r4_health_cards_response) %>

<%= disclaimer %>

### Errors

The common [errors] and [OperationOutcomes] may be returned.