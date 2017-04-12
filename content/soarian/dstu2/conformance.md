---
title: Conformance | DSTU 2 API
---

# Conformance

* TOC
{:toc}

## Metadata

Get the capabilities and configurations of this implementation and deployment of the FHIR<sup>&reg;</sup> standard:

### Headers

    Accept: application/json+fhir

### Request
    
    GET /metadata

### Response

<%= headers status: 200 %>
<%= json(:SOARIAN_METADATA) %>

