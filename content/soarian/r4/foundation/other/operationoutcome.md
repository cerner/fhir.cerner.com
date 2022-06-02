---
title: OperationOutcome | R4 API
---

# OperationOutcome

* TOC
{:toc}

## Overview

The Soarian Clinicals<sup>®</sup> Application Programming Interface (API) may return an OperationOutcome to provide more granular context for an error than the HTTP response codes provide.

## Terminology Bindings

[%s] is included in every statement. Replace it with the relevant text value.

For example, if the user is searching for results in the Patient resource, then in the statement More than 499 search results qualify for [%s] resource. Please narrow the search., replace the [%s] with `patient`.

## Scenarios

Note: If the severity is Error, then the accompanying HTTP status code is 4xx. If the severity is Fatal, then the accompanying HTTP status code is 5xx. If the severity is Information, the accompanying HTTP status code is 200. Although the majority of error messages have the 400 HTTP status for bad requests, a few explicitly defined cases can fall under the 404 HTTP status.

The following tables describe OperationOutcomes for its corresponding scenarios.

When the value of the parameter in the request does not meet the expected expression:

Element                                   | Value                                    
------------------------------------------|------------------------------------------------------------------------------------------------------
OperationOutcome.issue.__severity__	      | error
OperationOutcome.issue.__code__	          | structure
OperationOutcome.issue.__details__	      | Invalid format of [%s]. The value [%s] does not match the expected format [%s].

When an unsupported special character is encountered, (that is, an attempt at an operation, parameter combining, and so forth):

Element                                   | Value                                    
------------------------------------------|------------------------------------------------------------------------------------------------------
OperationOutcome.issue.__severity__	      | error
OperationOutcome.issue.__code__	          | structure
OperationOutcome.issue.__details__	      | Invalid value [%s] for parameter [%s]. If a value contains special characters - pipe (\|), comma (,), dollar ($), or backslash (\\) - escape these characters using the backslash (\\) character.

When the request is malformed or has bad syntax:

Element                                   | Value                                    
------------------------------------------|------------------------------------------------------------------------------------------------------
OperationOutcome.issue.__severity__	      | error
OperationOutcome.issue.__code__	          | structure
OperationOutcome.issue.__details__	      | Badly formed URL. See the CapabilityStatement for the correct URL format.

When a required parameter is missing from the request:

Element                                   | Value                                    
------------------------------------------|------------------------------------------------------------------------------------------------------
OperationOutcome.issue.__severity__	      | error
OperationOutcome.issue.__code__	          | required
OperationOutcome.issue.__details__	      | [%s] is required and is missing.

When no parameters are on the request [for a non-patient-centered resource]:

Element                                   | Value                                    
------------------------------------------|------------------------------------------------------------------------------------------------------
OperationOutcome.issue.__severity__	      | error
OperationOutcome.issue.__code__	          | required
OperationOutcome.issue.__details__	      | No search parameter was received. At least one parameter must be passed to perform the search. See the CapabilityStatement for the list of supported parameters.

When a code value or coding system is not supported for a parameter:

Element                                   | Value                                    
------------------------------------------|------------------------------------------------------------------------------------------------------
OperationOutcome.issue.__severity__	      | error
OperationOutcome.issue.__code__	          | not-supported
OperationOutcome.issue.__details__	      | [code value \| code system] not supported for [%s].

When a parameter that can be included only n times on the request is on the request more than n times:

Element                                   | Value                                    
------------------------------------------|------------------------------------------------------------------------------------------------------
OperationOutcome.issue.__severity__	      | error
OperationOutcome.issue.__code__	          | not-supported
OperationOutcome.issue.__details__	      | The system does not support more than [%s] [%s] parameters. Received number of [%s] parameters are: [%s].

When one match is expected and more than one match is found:

Element                                   | Value                                    
------------------------------------------|------------------------------------------------------------------------------------------------------
OperationOutcome.issue.__severity__	      | error
OperationOutcome.issue.__code__	          | multiple-matches
OperationOutcome.issue.__details__	      | Multiple results found for the given ID: [%s].

When a record is not found because the patient associated with the record does not match the patient identified in the _id parameter because of a Merge Record action:

Element                                   | Value                                    
------------------------------------------|------------------------------------------------------------------------------------------------------
OperationOutcome.issue.__severity__	      | error
OperationOutcome.issue.__code__	          | not-found
OperationOutcome.issue.__details__	      | No records are associated with the ID : [%s] because of a patient merge action. Target patient ID: [%s].

When too many search results qualify for a given search criteria:

Element                                   | Value                                    
------------------------------------------|------------------------------------------------------------------------------------------------------
OperationOutcome.issue.__severity__	      | error
OperationOutcome.issue.__code__	          | business-rule
OperationOutcome.issue.__details__	      | More than 499 search results qualify for [%s] resource. Narrow the search.

When a parameter that does not support combining values has more than one value:

Element                                   | Value                                    
------------------------------------------|------------------------------------------------------------------------------------------------------
OperationOutcome.issue.__severity__	      | error
OperationOutcome.issue.__code__	          | not-supported
OperationOutcome.issue.__details__	      | System does not support more combining values for [%s] parameter(s).

When a date parameter prefix included in the request is not supported:

Element                                   | Value                                    
------------------------------------------|------------------------------------------------------------------------------------------------------
OperationOutcome.issue.__severity__	      | error
OperationOutcome.issue.__code__	          | not-supported
OperationOutcome.issue.__details__	      | Invalid date comparator [%s] for [%s] parameter. Supported comparators are eq, gt, lt, ge, and le.

When an interaction other than GET (read or search) or a POST based search is requested:

Element                                   | Value                                    
------------------------------------------|------------------------------------------------------------------------------------------------------
OperationOutcome.issue.__severity__	      | error
OperationOutcome.issue.__code__	          | not-supported
OperationOutcome.issue.__details__	      | [%s] interaction is not supported. Supported interactions are: [%s].

When an operation is requested that Soarian Clinicals<sup>®</sup> does not support:

Element                                   | Value                                    
------------------------------------------|------------------------------------------------------------------------------------------------------
OperationOutcome.issue.__severity__	      | error
OperationOutcome.issue.__code__	          | not-supported
OperationOutcome.issue.__details__	      | [%s] operation is not supported.

When the request includes an unsupported or unknown parameter:

Element                                   | Value                                    
------------------------------------------|------------------------------------------------------------------------------------------------------
OperationOutcome.issue.__severity__	      | error
OperationOutcome.issue.__code__	          | not-supported
OperationOutcome.issue.__details__	      | Unsupported parameter(s) [%s] for the resource [%s]. See the CapabilityStatement for supported parameters.

When no results are found:

http status: 404

Element                                   | Value                                    
------------------------------------------|------------------------------------------------------------------------------------------------------
OperationOutcome.issue.__severity__	      | error
OperationOutcome.issue.__code__	          | not-supported
OperationOutcome.issue.__details__	      | No matching results are found.

When a persona is missing in the JWT validation claims:

Element                                   | Value                                    
------------------------------------------|------------------------------------------------------------------------------------------------------
OperationOutcome.issue.__severity__	      | error
OperationOutcome.issue.__code__	          | security
OperationOutcome.issue.__details__	      | Incorrect persona.

When a user requests a resource that they cannot access:

Element                                   | Value                                    
------------------------------------------|------------------------------------------------------------------------------------------------------
OperationOutcome.issue.__severity__	      | error
OperationOutcome.issue.__code__	          | security
OperationOutcome.issue.__details__	      | Expected scope does not match the URL.

When a catastrophic failure occurs (for example, the database is corrupt) or when a required configuration setting is missing or invalid:

Element                                   | Value                                    
------------------------------------------|------------------------------------------------------------------------------------------------------
OperationOutcome.issue.__severity__	      | fatal
OperationOutcome.issue.__code__	          | exception
OperationOutcome.issue.__details__	      | Unable to process the request. Internal server error occurred.


