---
title: Appointment | DSTU 2 API
---

# Appointment

* TOC
{:toc}

## Terminology Bindings

<%= terminology_table(:appointment, :dstu2) %>

## Search

Search for Appointments that meet supplied query parameters:

    GET /Appointment?:parameters

### Parameters

 Name                                                    | Required? | Type                                                     | Description
---------------------------------------------------------|----------------------------------------------------------|-----------------------------------------------------------------------------------
`_id`                                                    | Yes, or one of `patient`, `practitioner`, or `location`. | [`token`](http://hl7.org/fhir/DSTU2/search.html#token)  | The logical resource id associated with the Appointment. Example: `1234`
`date`                                                   | Yes when using `patient`, `practitioner`, or `location`. | [`date`](http://hl7.org/fhir/DSTU2/search.html#date) | The Appointment date/time. Example: `2016`
`patient`                                                | Yes, or `_id` | [`reference`](http://hl7.org/fhir/DSTU2/search.html#reference) | A single or comma separated list of Patient references. Example: `12345`
`practitioner`                                           | Yes, or `_id` | [`reference`](http://hl7.org/fhir/DSTU2/search.html#reference) | A single or comma separated list of Practitioner references. Example: `12345`
`location`                                               | Yes, or `_id` | [`reference`](http://hl7.org/fhir/DSTU2/search.html#reference) | A single or comma separated list of Location references. Example: `12345`
`status`                                                 | No | [`token`](http://hl7.org/fhir/DSTU2/search.html#token) | A single or comma separated list of appointment statuses. Example: `arrived`
[`_count`](http://hl7.org/fhir/DSTU2/search.html#count)| No | [`number`](http://hl7.org/fhir/DSTU2/search.html#number)| The maximum number of results to return. Defaults to `50`.

Notes:   

- The `patient`, `practitioner`, and `location` parameters may be included only once and may not be used in combination with the others.
  For example, `patient=1234,9876` is supported but `patient=1234&patient=9876` and `patient=1234&location=9876` are not.

- The `date` parameter may be provided:  
  - once without a prefix or time component to imply a date range. (e.g. `&date=2016`, `&date=2016-07`, `&date=2016-07-04`)   
  - once without a prefix and with a time component to indicate a specific date/time. (e.g `&date=2016-07-04T13:00:00.000-05:00`)   
  - twice with the prefixes `ge`, `gt`, `le`, or `lt` to indicate a specific range. The date and prefix pairs must define
    an upper and lower bound. (e.g. `&date=ge2014&date=lt2016`, `&date=ge2014-03-15&date=le2017`)   

### Response

<%= headers 200 %>
<%= json(:dstu2_appointment_bundle) %>

## Retrieve by id

List an individual Appointment by its id:

    GET /Appointment/:id

### Response

<%= headers 200 %>
<%= json(:dstu2_appointment_read) %>
