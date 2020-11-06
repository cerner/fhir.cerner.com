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

Your app should handle [paging](https://www.hl7.org/fhir/dstu2/http.html#paging) for all resources,
even if our server does not support it yet. This ensures your app is compatible with more
implementations (including future versions of our server if we add paging to improve
performance of resources that do not currently page).

Queries on some resources can result in large data sets. If you
do not implement paging logic, the application can miss relevant
information because the system will not load more than just the initial
page. This creates potential for the system to not account for the
entire patient dataset.

In addition, if your application is showing results directly to the user, it probably
does not want to show hundreds of records at a time to a user. It's also possible your application
may not have the memory available to hold all data at one time. These are
all factors that you should consider when determining a page size that is
right for your application.

There are two ways we recommend that you test
your logic once implemented.  First, you can set page size to a lower
value using the `_count` parameter in the API calls.  Another way is to
make calls for a patient with a lot of data in the Sandbox domain. You can read
about our [available sandbox test patients](https://groups.google.com/d/msg/cerner-fhir-developers/edPUbVPIag0/LgD4mGTXBAAJ)
to find a patient who has sufficient data for paging.

### Posting Documents Using DocumentReference Resource

If your app uses the [DocumentReference resource](../../dstu2/infrastructure/document-reference/)
to post clinical notes back to the system, the following provides some
additional parameters to follow to ensure that your document is
displayed as intended.

- **Document Type:** We accept HTML5 conventions and only XHTML
  formatted documents are supported. Our system converts them to RTF
  because that is the current requirement for posting to the Cerner EMR.
  Since documents are being converted from one format type to another,
  there is potential for loss of fidelity.
  - A common error we have seen is with the use of `<br>` tags.  In
    XHTML, they need to be self-closed as follows: `<br />`. This
    greatly enhances the accuracy our internal conversion tools.
  - Some sanitization is run on provided XHMTL. For example: `Applet`,
    `iframe`, `link`, `script`, and `style` tags will be removed
    completely. Other tags (`a`, `button`, `form`, `frame`, `frameset`,
    `input`, `object`, `option`, `select`, `textarea`) may be removed
    but the text within will remain.
  - Table styling is not fully supported

- **Modifier Elements:** [implicitRules](https://www.hl7.org/FHIR/DSTU2/resource-definitions.html#Resource.implicitRules),
  and [modifierExtension](https://www.hl7.org/FHIR/DSTU2/domainresource-definitions.html#DomainResource.modifierExtension)
  are not supported and will be rejected if present. In addition, each resource
  will call out modifier elements that are not supported. For example: [DocumentReference create](../../dstu2/infrastructure/document-reference/#create)
  calls out all unsupported modifiers within the implementation notes section.

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

Cerner maps proprietary codes to standard terminologies as part of our
implementation process. For example, [LOINC codes](https://www.hl7.org/fhir/dstu2/loinc.html) are
exposed within some resources. In some cases, these mappings do not cover all the possible
variances in the ways hospitals have implemented their EHRs. When EHRs were
originally implemented, it was common to use proprietary codes to
document labs and measurements that don’t map directly to the LOINC
codes defined by the FHIR specification.

For the [Observation resource](../../dstu2/diagnostic/observation/),
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
**Hospital A**.  Your app would return nothing if installed at
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
LOINC codes are used.  If your app uses specific LOINC codes to query
for information,
[contact us](https://groups.google.com/d/forum/cerner-fhir-developers)
and we will help you work through any considerations that might exist.

### Leverage Query Parameters

We have seen a lot of instances of developers performing post-query
filtering rather than leveraging the
[query parameters](https://www.hl7.org/fhir/dstu2/search.html#table)
defined by the API.  We recommend using the available query parameters, such as
[this example for the Patient resource](../../dstu2/individuals/patient/#parameters).
Query parameters make the dataset more predictable, speed up your searches, and
are more reliable than relying on post-query filtering.

### Review Filtering Options

Using query parameters is recommended over post-query filtering (when possible).
Regardless of the method used to filter results, ensure that your application handles
resources that have been marked in error or invalid using the appropriate status field(s)
for each resource.

You should review your app’s status filtering logic to ensure that the
appropriate results are displayed. For Cerner’s implementation of the
HL7 FHIR<sup>®</sup> standard (based on DSTU 2 Final (1.0.2)), it is particularly
recommended for the [MedicationOrder](../../dstu2/medications/medication-order/)
or [Observation](../../dstu2/diagnostic/observation/)
resources. It would be a patient safety issue if an uncharted value was
displayed to a user. Please double-check the status codes you use from
the [MedicationOrderStatus](http://hl7.org/fhir/DSTU2/valueset-medication-order-status.html)
or [ObservationStatus](https://www.hl7.org/fhir/dstu2/valueset-observation-status.html)
value sets.

Typically, for MedicationOrder, only medications in `Active`, `On-Hold`, or
`Completed` statuses are displayed.  For Observation, only results in
`Final` and `Amended` statuses are displayed.

You can read about our [available sandbox test patients](https://groups.google.com/d/msg/cerner-fhir-developers/edPUbVPIag0/LgD4mGTXBAAJ)
to find a patient that has some entered-in-error results to test with.

The [Condition](../../dstu2/general-clinical/condition/),
[MedicationStatement](../../dstu2/medications/medication-statement/),
and [Observation](../../dstu2/diagnostic/observation/)
resources do not support filtering by the encounter parameter in
the current implantation of Ignite APIs for Millennium. If you do
use these resources, your app may need to implement a post-filter
to display only the current encounter.

### Why do I not see the same data for different users or applications?

Data can be filtered for a variety of reasons. Resources with a status of “entered-in-error” and sensitive data are
filtered out for patient personas. Providers, systems, and applications may have data filtered for encounter and
organization security reasons and privilege and preference build in the domain.

If your app is accessing data with a patient persona, your app should handle
[Filtered Data](../../dstu2/#filtered-data-for-patient-or-proxy-access).

### Using Appropriate Scopes for SMART Launch

[SMART on FHIR defines OAuth2 access scopes](http://hl7.org/fhir/smart-app-launch/scopes-and-launch-context)
that correspond directly to FHIR resource types. We define read and write
permissions for patient-specific and user-level access. Patient-specific scopes
allow access to specific data about a single patient. User-level scopes
allow access to specific data that a user can access.

We have seen some situations where it is appropriate to use user-level
scopes, but in most cases with a patient in context, you should be using
patient-centric scopes.

### Registering More Scopes than App Uses

Ensure you are only requesting scopes that are used. We will ask you
to remove unused scopes from registration if you do not use those resources
or actions.

### Authorization Durations Longer than 10 Minutes

The default duration of access received through the authorization
grant workflow is a single token that is valid for 570 seconds
(~10 minutes). For apps that need access to services for longer
durations, some apps we have validated request a new token each
time, but there is a more streamlined method available.

By requesting the `online_access` scope, the system grants a
[refresh token](/authorization/#refresh_tokens)
that can be used for duration of a user’s authenticated session.
Such refresh tokens are valid until either the user explicitly logs out,
the session is terminated by an administrator, or other risk mechanisms
(timeouts, etc.) require a user to be re-authenticated.

## Cerner Client Deployment

### Using Video in Your App

Most Cerner clients deploy Cerner Millennium user apps as a Citrix XenApp<sup>®</sup>
session connected from a shared server-based computing environment. If your
app uses videos, we have found this can challenge the Citrix connection because
only so much bandwidth can be assigned to each Citrix connection.

We determined that the preferred method for your app to play video is to open
a new window using a custom code and load the web page containing video.  
This way the video opens using the hospital’s network and the Citrix
connection is not affected.

Also, when the app is deployed, the hospital’s IT staff need to ensure that:

-	The device running the video has the correct video codec installed
-	A proper speaker or headset is connected for sound

To open a new window through content redirection, the underlying Cerner platform
supports the following “APPLINK” routine for launching a new window through
content redirection instead of 'window.open' through JavaScript.
If content redirection is enabled and the URL is accessible by the local device,
the video is played locally. If neither of those conditions are met, it is
opened on the Citrix server.

For this routine to work, the following META tag must be included in the
HEAD of the HTML file: `<META content='APPLINK' name='discern'>`

The following example illustrates opening a web page through a shell execute.
When Citrix is configured for server-to-client redirection and the link is
clicked, your local default web browser opens and is directed to the link provided.  

`<a href='javascript:APPLINK(100," "http://www.cerner.com","">Launch "http://www.cerner.com" in local web browser</a>`


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

The Patient Chart view in PowerChart displays information for a single
patient. It is accessed by selecting a patient from one of the Organizer
views or from Patient Search. Multiple patient charts can be open at the
same time, and you can easily move between open charts by clicking the
patient's name in the Patient Context toolbar. The Patient Chart view is
made up of two panes - the Table of Contents and the Workspace. The
Table of Contents is displayed on the left side of the window and allows
you to quickly navigate to any area of the patient's chart. Clicking a
PowerChart component in the Table of Contents, such as a SMART app,
opens that component's Workspace view. The Workspace view displays and
changes based on which PowerChart component is selected from the Table
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
show same patient’s data on two separate charts. In order to avoid this,
please read our [SMART topic on sessionStorage](/smart/#html5-session-storage).

If your application uses the open source fhir-client.js library, please
read the [section on minimum required version and additional code](/smart/#open-source-fhir-client-libraries)
that must be added in order to fix a session bleed issue.

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

## Security

During application validation, we do a security review. We've gathered some common
topics that are covered which should help you think through the security of your application.
There are also examples of tools that can guide secure development of your application.

### Static Analysis

An automated security analysis of the app must be completed prior to
the security review. There are many tools available for this including
paid and free offerings. If available, producing a report from tools
such as [HP Fortify](http://www.ndm.net/sast/hp-fortify), [IBM AppScan](https://www.ibm.com/security/application-security/appscan)
and [Veracode](https://www.veracode.com/) are preferred.

[OpenVAS](http://www.openvas.org/), [BurpSuite](https://portswigger.net/burp),
[FindSecBugs](http://find-sec-bugs.github.io/) and [ZAP](http://www.zaproxy.org/) can also be used to produce a
report if the above analysis tools are not available to the development team.

The reports should produce results that are free of critical and high
results. In the event that medium results are found, the submitter will
be asked for a mitigation plan and timelines to resolve the found
vulnerabilities.

### TLS Configuration

It is required that you test your app’s SSL/TLS status against
[SSLLabs](https://www.ssllabs.com/ssltest/) during a security review.
The app must at least score an A on SSLLabs to pass the security review.
To assist in reaching this score, the items below should be taken into
consideration:

-	Disable all SSL versions
-	Disable TLS version 1.0
-	Review the list of cipher suites and remove any insecure cipher suites
-	Ensure that the handshake simulation user agents that are relevant to the app are functional
-	Enable forward secrecy, if practical
-	Ensure that TLS_FALLBACK_SCSV is enabled

### Data Flow Diagram

Ensure that the data flow diagram displays the flow of data, including
PHI (protected health information), during the course of normal usage.
 The data flow diagram should also display the authentication and
 authorization decisions that are being made.

### Threat Model

The threat model should make use of a tool like
[Microsoft Threat Model 2016](https://www.microsoft.com/en-us/download/details.aspx?id=49168)
or similar. The threat model must show the assets that the app uses during
runtime as well as the other apps and systems that it connects to or
accepts connections from.

The threat model must also include the following:

- Authentication interactions with external sources (for example, the Cerner OAuth service)
- Information related to the hosting environment that the app is hosted in (for example, AWS, Azure, third-party, or a self-run data center)
- Define the trust boundaries crossed during runtime

If using the MS Threat Model 2016 tool, the found threats must be responded to in the Analysis view.

### Third-Party Tools and Libraries

The use of a tool like
[OWASP’s Dependency Check](https://www.owasp.org/index.php/OWASP_Dependency_Check)
greatly reduces the exposure to malicious dependencies prior to deploying your app.
Dependency Check is a utility that identifies project dependencies
and checks if there are any known, publicly disclosed, vulnerabilities.

We recommend that you use this tool to reveal any issues with the
libraries that are used by the app and assist with the manual review
of the list of third party libraries that are requested during
a security review. If using Dependency Check, you should submit
a report during security review.

### Patching Policy

The patching policy must include how the app owner plans to patch
its software in the event that a critical vulnerability is discovered.
The patching policy must include timeframes for when a vulnerability
will be patched (for example, within 48 hours of knowledge of
a critical vulnerability, within seven days of a high vulnerability,
and so on).
