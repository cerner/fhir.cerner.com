---
title: ResourceExample | DSTU 2 API
---

# ResourceExample
[//]: # (Ensure that the Resource is moved under the appropriate folder per http://hl7.org/fhir/dstu2/resourceguide.html)

* TOC
{:toc}

## Overview

[//]: # (Overview is a required section. A brief description of the resource)

## Terminology Bindings

[//]: # (Add the terminology table for the resource here. Terminology Bindings is a required field.)

<%= terminology_table(:resource_example, :dstu2) %>

### Contained Resource(if any, remove if not present.) Bindings

<%= terminology_table(:contained_resource_example, :dstu2) %>

### Contained Resource2(if any, remove if not present.) Bindings

<%= terminology_table(:contained_resource_example2, :dstu2) %>

## Extensions

[//]: # (Extensions is not required, but should be listed if present.)

* Link relevant extensions here.
* [Time of day of birth]

### Custom Extensions

[//]: # (Custom Extensions are not required, but should be listed if present, and linked from Extensions list above. Use the correct type for the Value and link)

All URLs for custom extensions are defined as `https://fhir-ehr.cerner.com/dstu2/StructureDefinition/{id}`

ID             | Value\[x] Type    | Description
---------------|-------------------|----------------------------------------------------------------------------------
`some-id`      | [`type`]          | Describe what the extension value represents, and what fields it's used on.

## Search

[//]: # (Required if the resource supports search.)

Search for ResourceExamples that meet supplied query parameters:

    GET /ResourceExample?:parameters

_Implementation Notes_

* Add any search implementation notes here.

### Authorization Types

[//]: # (Update to include correct authorization types supportted for this action.)

<%= authorization_types(practitioner: false, patient: false, system: false) %>
 
### Parameters

[//]: # (Required section. A table for the supported search parameters)

 Name         | Required?                             | Type          | Description
--------------|---------------------------------------|---------------|------------------------------------------------------------------------------------
 `param1`     | Is param1 required?                   | param1's type | The description of param1 and an example. 2 examples of params are given below.
 `subject`    | This, or `param1`                     | [`reference`] | The subject of the Resource. Must represent a Patient resource. May use the `:Patient` modifier. Example: `subject=Patient/1316020` or `subject:Patient=1316020`
 `date`       | N                                     | [`date`]      | The date/time when the Resource was performed. Must use the `ge` and/or `le` prefixes. Example: `date=le2017-02-01T10:30:00Z`

Notes:

  - Add any notes about the search parameters here. The description should be short

### Headers

[//]: # (Required. Add all the required headers for the request, if anything besides accept and auth headers)

 <%= headers %>

### Example

[//]: # (Required section. Please populate the fields below with an example.)

#### Request

    GET add example request here.

#### Response
<%= headers status: 200 %>
<%= json(:dstu2_resource_example_bundle) %>

### Errors

[//]: # (Errors is a required field. Must point to the common errors at least. Should include any OperationOutcomes or special errors. Make sure errors link is correct)

The common [errors] may be returned. In addition, [OperationOutcomes] may be returned in the following scenarios:
                                                                                                            
 HTTP Status | Cause                              | Severity  | Code
-------------|------------------------------------|-----------|---------------
 422         | Body contained ...                 | error     | unsupported

## Retrieve by id

[//]: # (Required if the resource supports retrieve by id.)

List an individual ResourceExample by its id:

    GET /ResourceExample/:id

_Implementation Notes_

* Add any retrieve by id implementation notes here.

### Authorization Types

[//]: # (Update to include correct authorization types supportted for this action.)

<%= authorization_types(practitioner: false, patient: false, system: false) %>

### Headers

[//]: # (Required. Add all the required headers for the request, if anything besides accept and auth headers)

<%= headers %>

### Example

[//]: # (Required section. Please populate the fields below with an example.)

#### Request

    GET add example request here.

#### Response

<%= headers status: 200 %>
<%= json(:dstu2_recource_example_entry) %>

### Errors

[//]: # (Errors is a required field. Must point to the common errors at least. Should include any OperationOutcomes or special errors. Make sure errors link is correct)

The common [errors] may be returned. In addition, [OperationOutcomes] may be returned in the following scenarios:
                                                                                                                                                
 HTTP Status | Cause                              | Severity  | Code
-------------|------------------------------------|-----------|---------------
 422         | Body contained ...                 | error     | unsupported


## Create

[//]: # (Required if the resource supports create.)

Create a new ResourceExample.

    POST /ResourceExample

_Implementation Notes_

* Add any create implementation notes here.

### Authorization Types

[//]: # (Update to include correct authorization types supportted for this action.)

<%= authorization_types(practitioner: false, patient: false, system: false) %>

### Headers

[//]: # (Required. Add all the required headers for the request. Below will add Auth, Accept, and Content-Type)

<%= headers head: {Authorization: '&lt;OAuth2 Bearer Token>', Accept: 'application/json+fhir', 'Content-Type': 'application/json+fhir'} %>

### Body Fields

Notes:

  - Any special considerations for these fields

<%= definition_table(:resource_example, :create, :dstu2) %>

#### Contained Resource(if any) Body Fields

<%= definition_table(:contained_resource_example, :create, :dstu2) %>

### Example

[//]: # (Required section. Please populate the fields below with an example.)

#### Request

    POST add example request here.

#### Body

<%= json(:dstu2_resource_example_create) %>

#### Response

<%= headers status: 201 %>
<pre class="terminal">
    #TODO: Replace with headers from successful create to your resource.
    Connection → Keep-Alive
    Content-Encoding → gzip
    Content-Length → 20
    Content-Type → text/html; charset=UTF-8
    Date → Wed, 13 Jan 2016 21:45:47 GMT
    Keep-Alive → timeout=15, max=100
    Last-Modified → Tue, 15 Dec 2015 19:13:20 GMT
    Status → 201 Created
    access-control-allow-methods → DELETE, GET, POST, PUT, OPTIONS, HEAD
    access-control-allow-origin → *
    access-control-expose-headers → ETag, Content-Location, Location, X-Request-Id, WWW-Authenticate, Date
    access-control-max-age → 0
    cache-control → no-cache
    etag → W/"0"
    location → 'url to created resource example'
    server-response-time → 1260.984596
    strict-transport-security → max-age=631152000
    vary → Origin,User-Agent,Accept-Encoding
    x-content-type-options → nosniff
    x-frame-options → SAMEORIGIN
    x-request-id → 682c633c-b20f-4f6f-8fae-c58b3aeffe04
    x-runtime → 1.260940
    x-xss-protection → 1; mode=block
</pre>

The `ETag` response header indicates the current `If-Match` version to use on subsequent updates.

### Errors

[//]: # (Errors is a required field. Must point to the common errors at least. Should include any OperationOutcomes or special errors. Make sure errors link is correct)

The common [errors] may be returned. In addition, [OperationOutcomes] may be returned in the following scenarios:
                                    
 HTTP Status | Cause                              | Severity  | Code
-------------|------------------------------------|-----------|---------------
 422         | Body contained modifier extensions | error     | extension
 422         | Body contained implicit rules      | error     | unsupported

## Update

[//]: # (Required if the resource supports update.)

Update a ResourceExample.

    PUT /ResourceExample

_Implementation Notes_

* Add any update implementation notes here.

### Authorization Types

[//]: # (Update to include correct authorization types supportted for this action.)

<%= authorization_types(practitioner: false, patient: false, system: false) %>

### Headers

[//]: # (Required. Add all the required headers for the request.)

<%= headers head: {Authorization: '&lt;OAuth2 Bearer Token>', Accept: 'application/json+fhir', 
                   Content-Type: 'application/json+fhir', If-Match: 'W/"&lt;Current version of the MedicationStatement resource>"'} %>

### Body fields

Notes:

  - Any special considerations for these fields
  
<%= definition_table(:resource_example, :update, :dstu2) %>

### Example

[//]: # (Required section. Please populate the fields below with an example.)

#### Request

    PUT add example request here.

#### Body

<%= json(:dstu2_resource_example_update) %>

### Response

<%= headers status: 200 %>
<pre class="terminal">
    #TODO: Replace with headers from a successful update to a ResourceExample
    Connection → Keep-Alive
    Content-Encoding → gzip
    Content-Length → 20
    Content-Type → text/html; charset=UTF-8
    Date → Wed, 13 Jan 2016 21:50:53 GMT
    Keep-Alive → timeout=15, max=100
    Last-Modified → Tue, 15 Dec 2015 19:13:20 GMT
    Status → 200 OK
    access-control-allow-methods → DELETE, GET, POST, PUT, OPTIONS, HEAD
    access-control-allow-origin → *
    access-control-expose-headers → ETag, Content-Location, Location, X-Request-Id, WWW-Authenticate, Date
    access-control-max-age → 0
    cache-control → no-cache
    etag → W/"1"
    server-response-time → 653.7616069999999
    strict-transport-security → max-age=631152000
    vary → Origin,User-Agent,Accept-Encoding
    x-content-type-options → nosniff
    x-frame-options → SAMEORIGIN
    x-request-id → 9dba8326-899a-406f-a125-3fc3d6605dad
    x-runtime → 0.653722
    x-xss-protection → 1; mode=block
</pre>

The `ETag` response header indicates the current `If-Match` version to use on subsequent updates.

### Errors

[//]: # (Errors is a required field. Must point to the common errors at least. Should include any OperationOutcomes or special errors. Make sure errors link is correct)

The common [errors] may be returned. In addition, [OperationOutcomes] may be returned in the following scenarios:
                                    
 HTTP Status | Cause                              | Severity  | Code
-------------|------------------------------------|-----------|---------------
 422         | Body contained modifier extensions | error     | extension
 422         | Body contained implicit rules      | error     | unsupported

[//]: # (Add your links here)

[`date`]: http://hl7.org/fhir/DSTU2/search.html#date
[`reference`]: http://hl7.org/fhir/DSTU2/search.html#reference
[Time of day of birth]: http://hl7.org/fhir/DSTU2/extension-patient-birthtime.html
[errors]: ../../#client-errors
[OperationOutcomes]: http://hl7.org/fhir/DSTU2/operationoutcome.html

