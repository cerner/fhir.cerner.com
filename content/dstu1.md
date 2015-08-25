---
title: FHIR API DSTU 1
---

# Overview

This describes the resources that make up Cerner's implementation of the FHIR API. If you have any problems or requests,
please post to our [developer group](https://groups.google.com/d/forum/cerner-fhir-developers).

* TOC
{:toc}

## Current Version

Cerner currently supports the DSTU 1 version of the FHIR API.
This API will eventually be replaced by the DSTU 2 version. For the current DSTU 2 version of the FHIR API, which is based on the May DSTU 2 ballot, see [here](/may2015).

## Schema

All API access is over HTTPS, and accessed from the `fhir.sandboxcernerpowerchart.com/fhir`
domain.  All data is sent and received as JSON.

<pre class="terminal">
$ curl -i -H "Accept: application/json+fhir" https://fhir.sandboxcernerpowerchart.com/fhir/open/d075cf8b-3261-481d-97e5-ba6c48d3b41f/metadata

HTTP/1.1 200 OK
Date: Wed, 01 Apr 2015 20:14:19 GMT
X-Frame-Options: SAMEORIGIN
X-XSS-Protection: 1; mode=block
X-Content-Type-Options: nosniff
Cache-Control: no-cache
X-Request-Id: 29232f0f-12fc-4140-8069-8816aca818e6
X-Runtime: 0.011165
Status: 200 OK
Vary: User-Agent
Content-Type: application/json+fhir; charset=utf-8
Transfer-Encoding: chunked

{"resourceType":"Conformance","text":{"status":"generated","div":"Generated Conformance Statement"},"identifier":"https://fhir.sandboxcernerpowerchart.com/fhir/open/d075cf8b-3261-481d-97e5-ba6c48d3b41f/Conformance","name":"SMART on FHIR Conformance Statement","publisher":"Cerner","description":"Describes capabilities of this server","status":"draft","date":"2015-04-01T20:14:19.891+00:00","fhirVersion":"0.0.82","acceptUnknown":false,"format":["json"],"rest":[{"mode":"server","documentation":"All the functionality defined in FHIR","security":{"cors":true}}]}
</pre>

Blank fields are omitted.

All timestamps are returned in <a href="http://www.hl7.org/implement/standards/fhir/datatypes.html#date">FHIR date/dateTime format</a>.

### Media Types

Cerner supports standard FHIR media types for JSON content:

    application/json+fhir
    application/json

We encourage you to explicitly request one of these types via the `Accept` header.

## Root Endpoint

The FHIR URL takes the form `fhir.sandboxcernerpowerchart.com/fhir/open/:ehr_source_id/:resource`.

### Open Endpoint

The presence of `/open` in the path allows developers to experiment with the service without requiring
authentication.

### Source

The `:ehr_source_id` represents the tenant for which data should be retrieved.

### Resource

`:resource` represent the FHIR resource to access. Example: <a href="/dstu1/patient/">`Patient`</a>

## Parameters

Many API methods take optional parameters. For GET requests, any parameters not
specified as a segment in the path can be passed as an HTTP query string
parameter:

<pre class="terminal">
$ curl -i https://fhir.sandboxcernerpowerchart.com/fhir/open/d075cf8b-3261-481d-97e5-ba6c48d3b41f/MedicationPrescription?patient=2744010
</pre>

In this example, the 'd075cf8b-3261-481d-97e5-ba6c48d3b41f' value is provided for the `:ehr_source_id` parameter in the path
while `:patient` is passed in the query string.

## Client Errors

There are four possible types of client errors on API calls that
receive request bodies:

1. Requested a media type other than JSON will result in a `406 Not Acceptable` response.

        HTTP/1.1 406 Not Acceptable
        Content-Length: 0

2. Failing to send a required query parameter will result in a `400 Bad
   Request` response.

        HTTP/1.1 400 Bad Request

        no supported search parameters provided

3. Requesting the authenticated endpoint (non-`open`) without valid credentials will result in a `401 Unauthorized`
   response.

        HTTP/1.1 401 Unauthorized

4. Requesting an invalid or unauthorized `:ehr_source_id` will result in a `403 Forbidden` response.

        HTTP/1.1 403 Forbidden

        Tenant [:ehr_source_id] not valid or accessible

## HTTP Verbs

Where possible, FHIR strives to use appropriate HTTP verbs for each action.

Verb | Description
-----|-----------
`GET` | Used for retrieving resources.
`POST` | Coming soon!

## Authentication

We have an endpoint secured with [OAuth 2.0](http://oauth.net/2/) with support for [SMART Applications](http://docs.smarthealthit.org/).
Refer to the extensions on the `Conformance.rest.security` element in our server [metadata](conformance/).

Please [contact us](https://groups.google.com/d/forum/cerner-fhir-developers) for application registration.

## Pagination

The pagination links are included in the Bundle when a resource returns multiple items. It is important to
follow these Link header values instead of constructing your own URLs.

    {
        "resourceType": "Bundle",
        "title": "Search results for resource type Patient",
        "id": "962a50b1-a367-475f-b9c9-810c1b3c6b35",
        "link": [
            {
                "rel": "self",
                "href": "https://fhir.sandboxcernerpowerchart.com/fhir/open/d075cf8b-3261-481d-97e5-ba6c48d3b41f/Patient?name=Jones&start=0&max=20"
            },
            {
                "rel": "next",
                "href": "https://fhir.sandboxcernerpowerchart.com/fhir/open/d075cf8b-3261-481d-97e5-ba6c48d3b41f/Patient?name=Jones&start=20&max=20"
            }
        ],
        ...
    }

The possible `rel` values are:

Name | Description
-----------|-----------|
`self` |Shows the URL of the current page of results.
`next` |Shows the URL of the immediate next page of results.

## Cross Origin Resource Sharing

The API supports Cross Origin Resource Sharing (CORS) for AJAX requests from
any origin.
You can read the [CORS W3C Recommendation](http://www.w3.org/TR/cors), or
[this intro](http://code.google.com/p/html5security/wiki/CrossOriginRequestSecurity) from the
HTML 5 Security Guide.

Here's a sample request sent from the origin `http://example.com`:

<pre class="terminal">
$ curl -i -H "Origin: http://example.com" https://fhir.sandboxcernerpowerchart.com/fhir/open/d075cf8b-3261-481d-97e5-ba6c48d3b41f/metadata"
HTTP/1.1 200 OK
Access-Control-Allow-Origin: http://example.com
Access-Control-Allow-Methods: DELETE, GET, POST, PUT, OPTIONS, HEAD
Access-Control-Max-Age: 0
Access-Control-Allow-Credentials: true
</pre>

This is what a CORS preflight request looks like:

<pre class="terminal">
$ curl -X OPTIONS -i -H "Origin: http://example.com" https://fhir.sandboxcernerpowerchart.com/fhir/open/d075cf8b-3261-481d-97e5-ba6c48d3b41f/metadata
HTTP/1.1 204 No Content
Access-Control-Allow-Origin: http://example.com
Access-Control-Allow-Methods: DELETE, GET, POST, PUT, OPTIONS, HEAD
Access-Control-Max-Age: 0
Access-Control-Allow-Credentials: true
</pre>