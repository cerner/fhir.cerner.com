---
title: Conformance | FHIR MAY 2015 BALLOT API
---

# Conformance

* TOC
{:toc}

## Metadata

Get the capabilities and configurations for the FHIR server:

    GET /metadata

### Response (Open Endpoint)

<%= headers 200 %>
<%= json(:may2015_open_metadata) %>

### Response (Closed Endpoint)

<%= headers 200 %>
<%= json(:may2015_auth_metadata) %>