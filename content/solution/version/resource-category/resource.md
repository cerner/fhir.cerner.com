---
title: Resource | Solution Version API
---

# TODO-new-solution

* TOC
{:toc}

## Overview

Update this file. Rename parent directories appropriately.

Resource overview.

The following fields are returned if valued:

* [Resource id](http://hl7.org/fhir/R4/resource-definitions.html#Resource.id){:target="_blank"}
* [Other field](http://hl7.org/fhir/R4/resource-definitions.html#Resource.field){:target="_blank"}

## Terminology Bindings

<%= terminology_table(:resource, :version) %>

## Search

Search for Resources that meet supplied query parameters:

    GET /Resource?:parameters

_Implementation Notes_

* Implementation note.

### Authorization Types

<%= authorization_types(provider: ?, system: ?) %>

### Parameters

 Name        | Required? | Type      | Description
-------------|-----------|-----------|-----------------------------------------------------------------------
 `_id`       | ?         | [`token`] | The logical resource id associated with the Resource. Example: `7890`
 `parameter` | ?         | [`date`]  | Description

Notes:

* Note.

### Headers

<%= headers fhir_json: ? %>

### Example

#### Request

    GET url/Resource?parameters

#### Response

<%= headers status: 200 %>
<%= json(:version_resource_bundle) %>

<%= disclaimer %>

### Errors

The common [errors] and [OperationOutcomes] may be returned.

## Retrieve by id

List an individual Resource by its id:

    GET /Resource/:id

### Authorization Types

<%= authorization_types(provider: ?, system: ?) %>

### Headers

<%= headers fhir_json: ? %>

### Example

#### Request

    GET url/Resource/id

#### Response

<%= headers status: 200 %>
<%= json(:version_resource_entry) %>

<%= disclaimer %>

## Patch

Patch an existing Resource.

    PATCH /Resource/:id

_Implementation Notes_

* Implementation note.

### Authorization Types

<%= authorization_types(provider: ?, system: ?) %>

### Headers

<%= headers head: {Authorization: '&lt;OAuth2 Bearer Token>', 'Accept': 'application/fhir+json', 'Content-Type': 'application/json-patch+json', 'If-Match': 'W/"&lt;Current version of the Resource resource>"'} %>

### Patch Operations

<%= patch_definition_table(:resource_patch, :version) %>

### Example

#### Request

    PATCH url/Resource/id

#### Body

<%= json(:version_resource_patch) %>

#### Response

<%= headers status: 200 %>
<pre class="terminal">
Relevant: headers
</pre>

The `ETag` response header indicates the current `If-Match` version to use on subsequent updates.

<%= disclaimer %>

## Create

Create a new Resource.

    POST /Resource

_Implementation Notes_

* Implementation note.

### Authorization Types

<%= authorization_types(provider: ?, system: ?) %>

### Headers

<%= headers head: {Authorization: '&lt;OAuth2 Bearer Token>', 'Content-Type': 'application/fhir+json'} %>

### Body Fields

<%= definition_table(:resource, :create, :version) %>

### Example

#### Request

    POST url/Resource

#### Body

<%= json(:version_resource_create) %>

#### Response

<%= headers status: 201 %>
<pre class="terminal">
Relevant: headers
</pre>

The `ETag` response header indicates the current `If-Match` version to use on subsequent updates.

<%= disclaimer %>

[Necessary]: links
