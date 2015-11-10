---
title: Conformance | FHIR DSTU 2 API
---

# Conformance

* TOC
{:toc}

## Metadata

Get the capabilities and configurations for the FHIR server:

    GET /metadata

### Response (Open Endpoint)

<%= headers 200 %>
<%= json(:dstu2_open_metadata) %>

### Response (Closed Endpoint)

<%= headers 200 %>
<%= json(:dstu2_auth_metadata) %>
