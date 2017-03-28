---
title: Conformance | DSTU 2 API
---

# Conformance

* TOC
{:toc}

## Metadata

Get the capabilities and configurations of this implementation and deployment of the FHIR<sup>®</sup> standard:

    GET /metadata

### Response (Open Endpoint)

<%= headers status: 200 %>
<%= json(:dstu2_open_metadata) %>

### Response (Closed Endpoint)

<%= headers status: 200 %>
<%= json(:dstu2_auth_metadata) %>
