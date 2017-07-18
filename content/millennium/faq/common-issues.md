---
title: Common Issues
layout: faq
---

The topics below are the most common issues that we identify when
validating apps to run on our platform.  We suggest you work through
each of these before submitting an app for validation.

# Common Issues

* TOC
{:toc}

## API Usage

### Avoid Multiple Resource Calls

Ensure that your app is efficient in the way it makes API calls.
Duplicate API calls should be removed to avoid additional performance
load on the system and improve application load time. As part of the
technical review process, we will review logs to see if calls are
identical each time and if they are retrieving the same data set.


### Implement Paging

To be compatible with a wide variety of FHIR services and for future-
proofing, we require that you implement a paging data retrieval scheme
as defined by the [HL7 FHIR specification](https://www.hl7.org/fhirhttp.html#paging).
Your app should handle paging for all resources, even if our FHIR server
does not support it yet. This ensures your app is compatible with more
FHIR servers and for ours if we add paging in the future for
performance.

You can view the default and max page sizes by following the links
below. Queries on these resources can result in large data sets. If you
do not implement paging logic, the application can miss relevant
information because the system will not load more than just the initial
page. This creates potential for the system to not account for the
entire patient dataset.  There are two ways we recommend that you test
your logic once implemented.  First, you can set page size to a lower
value using the `_count` parameter in the API calls.  Another way is to
make calls for a patient named Timothy Peters in the Sandbox domain.
This patient has a very large data set and will often return more than
the max page size.

### Posting Documents Using DocumentReference Resource

If your app uses the [DocumentReference resource](http://fhir.cerner.com/millennium/dstu2/infrastructure/document-reference/)
to post clinical notes back to the system, the following provides some
additional parameters to follow to ensure that your document is
displayed as intended.

- **Document Type:** We accept HTML5 conventions and only XHTML
  formatted documents are supported. Our system converts them to RTF
  because that is the current requirement for posting to the Cerner EMR.
  Since documents are being converted from one format type to another,
  there is potential for loss of fidelity.
  - A common error we have seen is with the use of `<br>` tags.  In
    XHTML, they need to be self-closed as follows: `<br />`. This
    greatly enhances the accuracy our internal conversion tools.
  - Some sanitization is run on provided XHMTL. For example: `Applet`,
    `iframe`, `link`, `script`, and `style` tags will be removed
    completely. Other tags (`a`, `button`, `form`, `frame`, `frameset`,
    `input`, `object`, `option`, `select`, `textarea`) may be removed
    but the text within will remain.
  - Table styling is not fully supported

- **Modifier Elements:** [implicitRules](http://hl7.org/fhir/DSTU2/resource-definitions.html#Resource.implicitRules),
  [modifierExtension](https://www.hl7.org/FHIR/DSTU2/domainresource.html)
  and [relatesTo](https://www.hl7.org/FHIR/DSTU2/domainresource.html) are
  not supported and will be rejected if present.

- **Special Formatting:** Please do not use specialized formatting
  dependent on CSS or JavaScript. This will be stripped out of your
  document. It is also not recommended that you support multiple
  languages within your documents, as this has proven to be error prone
  with our current conversion tools.
  - If special formatting is needed, we recommend that you post your
    formatted text as image files within the HTML.

- **Images:** If posting images within your documents or as the documents themselves, external image links will not function as intended. All images must be embedded Base64 encoded files using web-safe image formats due to file size. Examples are as follows:

  ```
  <img alt="image" src='data:image/png;base64, <-ENCODED IMAGE-> ' /> 
  ```

- **Testing:** There are several XHTML validators that can be used to
  test your document. We suggest using XHTML 1.0 strict as the document
  type to run your validation with. Try using:
  - [validator.w3.org/#validate_by_upload+with_options](http://validator.w3.org/#validate_by_upload+with_options)
  - [html5.validator.nu](https://html5.validator.nu/)

### Requests by Specific LOINC Codes

Cerner creates concept mappings as part of our SMART on FHIR
implementation that follow the [concept map](https://www.hl7.org/fhir/conceptmap.html)
specification defined by HL7. The specification maps proprietary codes
used in client systems with standardized [LOINC codes](https://www.hl7.org/fhir/loinc.html).
In some cases, these mappings do not cover all the possible variances in
the ways hospitals have implemented their EHRs. When EHRs were
originally implemented, it was common to use proprietary codes to
document labs and measurements that don’t map directly to the LOINC
codes defined by the FHIR specification.

For the [Observation resource](http://fhir.cerner.com/millennium/dstu2/diagnostic/observation/),
we have seen apps developed that use a set of LOINC codes as a filter to
get specific results. If your app uses specific codes to query for data,
you should determine if the request should be broader and include more
possible codes to account for different ways data might be coded or work
with us to determine the best way to return the information you need.

For example, lead can be performed on blood, capillary blood, or venous blood.

- **Hospital A** uses a proprietary code for lead which maps to LOINC code `5671-3` - `(Lead [Mass/volume] in Blood)`
- **Hospital B** uses a proprietary code for lead which maps to LOINC code `77307-71` - `(Lead [Mass/volume] in Venous blood)`

If you are using a specific code to query for lead and use code
`5671-3`, then your app would only return results when installed at
**Hospital A**.  Your app would return nothing if installed at
**Hospital B**. You need to ensure that all codes are accounted for in
order for the app to work at all sites.

Another scenario is where hospitals have different tests and codes setup
for different methodologies. An example is when a separate test and code
is created to document blood lead collected by venipuncture versus a
capillary draw, which is a common collection method for children. On
occasion, client proprietary codes may not map directly to any LOINC
code. For special cases where we discover a proprietary code that does
not map cleanly to any standard, we will work with you to figure out the
best option for that mapping during deployment.

For each of these scenarios, it is one thing to validate against our
sandbox to adhere to the FHIR specification, but we also need to
validate your app at each client site to ensure that there aren’t any
hospital-specific considerations to be aware of. We will do this when we
connect your app to a hospital domain. We will work with you to resolve
any of these hospital-specific considerations.

The above examples use lead, but similar considerations could exist for
virtually any lab or measurement where concept mapping and specific
LOINC codes are used.  If your app uses specific LOINC codes to query
for information, reach out to us and we will help you work through any
considerations that might exist.

### Review Filtering Options

In the Cerner EMR, if a medication or result is documented erroneously
in the system and then is deleted by a user, it is commonly represented
in the system as In Error. In Error results are frequently filtered out
and are not displayed by native Cerner applications.

You should review your app’s status filtering logic to ensure that the
appropriate results are displayed. For Cerner’s implementation of the
HL7 FHIR standard (based on DSTU 2 Final (1.0.2)), it is particularly
recommended for the [MedicationOrder](http://fhir.cerner.com/millennium/dstu2/medications/medication-order/)
or [Observation](http://fhir.cerner.com/millennium/dstu2/diagnostic/observation/)
resources. It would be a patient safety issue if an uncharted value was
displayed to a user. Please double-check the status codes you use from
the FHIR [MedicationOrderStatus](http://hl7.org/fhir/DSTU2/valueset-medication-order-status.html)
or [ObservationStatus](https://www.hl7.org/fhir/valueset-observation-status.html)
value sets.

Typically, for MedicationOrder, only medications in `Active`, `On-Hold`, or
`Completed` statuses are displayed.  For Observation, only results in
`Final` and `Amended` statuses are displayed.

In our sandbox domain, Amber Read, PATIENT_ID 4614008, has some entered-
in-error results on multiple blood pressures values, one blood pressure
with an unknown status, and one entered-in-error CO2 and glucose value
for you to review and test with.

## Cerner Client Deployment

### Single Patient and Multi-Patient Views

Cerner’s EMR, PowerChart, has two main views that can be used to view
patient information: Patient Chart view and Organizer view.  It is
critical that you distinguish which of these views works best for the
functionality of your app and design your app accordingly.

*Organizer Views*

The MPages worklist framework allows hospitals to use multi-patient and
multi-item views at the organizer level of PowerChart. These views
assist clinicians in organizing and prioritizing their work by providing
key information about a population of patients or items and in some
cases, allowing quick access to patients' medical records, improving
their efficiency and productivity.  The most common worklist layout type
currently available is the Patient Organizer View which supports the
display of multiple patients along with key information about the status
and care of those patients.

*Patient Chart View*

The Patient Chart view in PowerChart displays information for a single
patient. It is accessed by selecting a patient from one of the Organizer
views or from Patient Search. Multiple patient charts can be open at the
same time, and you can easily move between open charts by clicking the
patient's name in the Patient Context toolbar. The Patient Chart view is
made up of two panes - the Table of Contents and the Workspace. The
Table of Contents is displayed on the left side of the window and allows
you to quickly navigate to any area of the patient's chart. Clicking a
PowerChart component in the Table of Contents, such as a SMART app,
opens that component's Workspace view. The Workspace view displays and
changes based on which PowerChart component is selected from the Table
of Contents. Each view can include multiple windows, that are accessed
by clicking tabs or buttons in that view. If you open your SMART app
from the Table of Contents, information for the patient is displayed in
the Workspace view.

If your app is best used for managing a population of patients, then it
should be optimized to be used at the Organizer view level. If your app
is best used in the context of a single patient, it is critical that the
user should not be able to access Organizer level information, such as
patient lists or other patient’s data. This could be hazardous in the
context of the single-patient Patient Chart view because users could
become confused as to which patient’s information they are viewing. This
is especially critical if you are porting your app to be used within the
SMART on FHIR framework.  We have seen a few examples where developers
didn’t remove functionality such as patient search and we had to have
them restart their validation process once that functionality was
removed.

### Session Bleed Issue
 
When you are running a SMART app in multiple open charts in PowerChart,
there is potential that the app instance will share patient context and
show same patient’s data on two separate charts.
 
The application needs to avoid session bleed issue identified with fhir-
client.js library.  Review the changes in the latest version of the
[fhir-client.js]( https://github.com/smart-on-fhir/client-js/tree/v0.1.10)
and pull in an additional [project released by Cerner](https://github.com/cerner/fhir-client-cerner-additions)
to override a setting.
 
Open source fhir-client.js file uses HTML5 sessionStorage parameter.
This causes an issue within the EMR when two instances of a SMART
application are opened on two patients.  After discovering this issue,
we worked through the open source community to contribute the change
back to fhir-client.js.

*Note:* This cannot be properly tested until you are beginning
validation and we are running your app directly in PowerChart. The
following recreation steps are for your information once you have access
to PowerChart.

To recreate the issue:

1. Open the chart for Patient A and launch an app.
2. Go back to the Patient List and open an additional chart (Patient B),
   then launch an app for that patient.
3. On Patient A’s chart, click As Of in the upper right corner to
   refresh the content of PowerChart. If the application displays the
   information for Patient B within the chart for Patient A, then you
   need to implement the change mentioned above.
