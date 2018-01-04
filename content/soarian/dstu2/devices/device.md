---
title: Device | Soarian DSTU 2 API
---
 
# Device

* TOC
{:toc}

## Overview

For the Device resource query, the API returns a list of charted procedures that include Unique Device Identifiers (UDIs) for the patient.  The list represents the most current procedure with UDI list that has been charted in Soarian.

Note that traditional charting practices have procedures resolved and charted in coding/billing systems and not interfaced back to the EMR, therefore, the procedure record in Soarian may not be complete nor precise to a procedure list provided as part of a patient's billing record.  The list of procedures in completed or aborted state with UDIs will be as charted in Soarian but may not represent a comprehensive state of implanted devices for a variety of operational reasons.  The charting process flow for UDIs, both their implantation and ongoing status, is not fully mature and the charting at the point of care, material management and interventional/surgical systems is evolving.  Clients may continue to chart patient devices outside a UDI process flow and the UDI list will not represent a comprehensive view of patient's devices.  Therefore, the Soarian Clinicals UDI information may not be complete nor representative of the current state of a patient's implanted devices. 

Note that the data returned with the UDI may be incomplete or inconsistent because the FDA (Food and Drug Administration) requirement for UDI labelling, effective 2017, states that manufacturers are responsible for populating an FDA database (GUDID) with information related to their devices; this UDI labelling and GUDID population is a new process and inconsistencies and gaps may exist in the data available. Soarian Clinicals has an ability to enter / scan and parse a UDI, query the FDA database (GUDID), and store information returned from the query.  If the GUDID database is not available, empty, or partially populated, Soarian will store the UDI itself and any available information from the GUDID.  The storage format, and therefore API response format is standardized, but GUDID-available data translated and stored may be inconsistent.  The Soarian documentation defines any translation that is performed.  

The FHIR definition of device is broader than the ONC definition of implantable device.  The API Device response is per the ONC definition of those devices that are implanted and have a UDI.  They are charted per encounter, per procedure where a patient may have:

* 1 or more visits, where each visit may have:
* 0 or more procedures charted in completed or aborted state, where each procedure may have:
* 0 or more devices with UDIs charted.

## Terminology Bindings

<%= terminology_table(:soarian_device, :dstu2) %>

## Extensions

The [bundle extension] can be returned, see possible codes in the [errors section] below.


## Search 

	GET /Device?:parameters
	
_Implementation Notes_

* The API returns the most current device list.
* The Narrative includes additional information pertaining to the device, and should be shown to the user to ensure completeness of clinical content and context. The structured component of the FHIR Device resource response will primarily contain the UDI and issuing authority for any entries in the list returned in the Narrative. This portion of the response may not be relevant to the user and should not be displayed. 

### Parameters

 Name      | Required? | Type          | Description
-----------|-----------|---------------|------------------------------------------------------------------------
 patientId | Y         | [`reference`] | The patient identifier provided in a pre-requisite authorization step.

### Headers

<%= headers %>

### Example

#### Request
	
	GET https://fhir-myrecord.sandboxcerner.com/dstu2/123abc/Device?patientId=7568F2F3-FC76-4185-A540-1DB56331A387

#### Response
  
<%= headers status: 200 %>
<%= json(:SOARIAN_DEVICE_BUNDLE) %>

### Errors and Informational messages

The common [errors and informational messages] can be returned.

These additional informational messages may be returned within the [bundle extension]:

 Code    | Message
---------|----------------------------------------------------------------
 papi014 | No implantable medical devices are associated with this query.

[bundle extension]: ../../#bundle-message-extension
[errors section]: #errors-and-informational-messages
[`reference`]: http://hl7.org/fhir/dstu2/search.html#reference
[errors and informational messages]: ../../common-errors
