---
title: Conformance | FHIR API
---

# Conformance

* TOC
{:toc}

## Metadata

Get the capabilities and configurations for the FHIR server:

    GET /metadata

### Response (Open Endpoint)

<%= headers 200 %>
<%= json(:open_metadata) %>

### Response (Closed Endpoint)

<%= headers 200 %>
<%= json(:auth_metadata) %>