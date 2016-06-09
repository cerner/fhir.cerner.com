---
title: Conformance | MAY 2015 BALLOT API
---

# Conformance

* TOC
{:toc}

## Metadata

Get the capabilities and configurations for this implementation and deployment of the FHIR<sup>®</sup> standard:

    GET /metadata

### Response (Open Endpoint)

<%= headers 200 %>
<%= json(:may2015_open_metadata) %>

### Response (Closed Endpoint)

<%= headers 200 %>
<%= json(:may2015_auth_metadata) %>