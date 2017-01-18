---
title: OperationDefinition | DSTU 2 API
---

# OperationDefinition

* TOC
{:toc}

## Retrieve by id

List an individual OperationDefinition by its id:

    GET /OperationDefinition/:id

_List of OperationDefinitions_

* `binary-autogen-ccd-if`: Generate Continuity of Care Document (CCD)

### Response

<%= headers 200, GET: '[...]/OperationDefinition/binary-autogen-ccd-if' %>
<%= json(:dstu2_operation_definition_bundle) %>
