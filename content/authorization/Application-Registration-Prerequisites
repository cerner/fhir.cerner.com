# Application Registration Prerequisites / Developer Guide

## Audience

This technical specification is targeted at software developers building applications on top of Cerner's Ignite application platform as part of the [Cerner CODE ecosystem](https://code.cerner.com/).

## Overview & Purpose

This technical specification outlines a series of security best practices that, if followed, enable Cerner to provide more detailed information about your application to end users. The goal of these best practices is to encourage the use of existing internet security features and standards. In particular, we want users to:

- be assured that their data is being securely transmitted using modern transport layer security and encryption protocols
- understand what legal entity they're sharing their data with

These best practices should be considered as strongly-recommended prerequisites that software developers address during the application registration process, prior to making their applications available for general use.  Failure to comply with these prerequisites will result in Cerner describing your application as an "Unknown Application" to users during the OAuth authorization workflow.

### Glossary of Terms

* eTLD - Effective Top Level Domain is the base domain. eTLD values are defined in the [Public Suffix List](https://publicsuffix.org/list/public_suffix_list.dat).  Examples include: .com, .edu, .org, and .co.uk.
* eTLD+1 - "Effective top level domain plus 1" describes a domain name that is one level deeper than the effective top level domain (eTLD). Examples include examplehealth.com, cerner.com and cerner.co.uk.
* OV - Organization Validated - a certificate issuance process that involves the certificate authority validating the organization (business entity) requesting the certificate.
* EV - Extended Validation - a certificate issuance process that involves the certificate authority performing extended validation of the organization (business entity) requesting the certificate.
* DV - Domain Validated - a certificate issuance process that involves the certificate authority validating the requester owns the domain. No validation of the business entity is performed.
* TLS - Transport Layer Security
* DNS TXT record - a "text" record in the Domain Name System (DNS).  TXT records usually take form of name=value.

### Technical Requirements

The following technical requirements are stated using RFC-2119 terminology. These requirements focus on the security best practices that Cerner expects application developers to adhere to in order for Cerner to provide the best description of your application to end users:

* Web applications MUST support the HTTPS 1.1 protocol.
* Application SHOULD support TLS.  (Please refer to the Cerner CODE Program's TLS guidance document for further detailed practices related to TLS.)
* Application SHOULD use (only) port 443 for TLS.
* Application SHOULD support and prefer TLS 1.2 or higher.
* Application SHOULD have a valid, non-expired TLS certificate issued from a trusted authority.
* Application SHOULD use an OV or EV certificate, if possible, instead of a DV certificate.
* Application's web site SHOULD host a DNS TXT record containing the Cerner-issued client identifier for the application (also referred to as a "system account ID" in CernerCentral or a "client identifier" in the [OAuth 2 specification](https://datatracker.ietf.org/doc/html/rfc6749#page-15) ).
* Application's name SHOULD ideally align with the name of the website hosting it and/or the legal entity operating it.
* Mobile/Native applications SHOULD (as suggested by [RFC-8252](https://datatracker.ietf.org/doc/html/rfc8252) ) use [claimed "https" Scheme URI redirection](https://datatracker.ietf.org/doc/html/rfc8252#section-7.2) instead of private-use URI scheme redirection.


Adhering to all the above requirements ensures that Cerner can convey the most meaningful, descriptive information about your application to end users. Failure to follow recommended (SHOULD) requirements will result in users seeing less information about your application. When Cerner is unable to determine information about your application because one or more of the requirements above have not been implemented, Cerner will display "unknown" when describing your application to users.  See the "Information Displayed to Users" section below for more details.

If you'd like to better understand why Cerner has these technical requirements, please see the "*Information Displayed to Users*" and "*FAQ*" sections below.

NOTE:  Please consider the [Cerner CODE Validation Program](https://code.cerner.com/apiaccess) if you would like Cerner to perform a deeper security assessment of your application.

### Steps to Verify Your Application's Compliance

**The steps outlined below show you how you can check to see if your application complies with the technical requirements listed above.**

<details><summary>Determine your eTLD+1</summary>
<p>

The eTLD+1 is the effective TLD and the part of the domain just before it. For example, given a URL of https://my-project.github.io , the eTLD is .github.io and the eTLD+1 is my-project.github.io, which is considered a "site". This domain will be shown to end-users.

To determine eTLD+1 please check public domains that are defined in the Public Suffix List.
</p>
</details>
<details><summary>Querying DNS for your TXT record</summary>

TXT records are a type of Domain Name System (DNS) record that contains text information for sources outside of your domain. You add these records to your domain settings for further domain ownership verification by Cerner.

To follow the security best practices the DNS TXT record of your application must match the following key-value format:

    "cerner-client-id={value}" where value = Cerner-issued client identifier for your application
    in the case when multiple apps are registered for the same domain, cerner-client-ids will be stored in the same TXT record in the format:

    "cerner-client-id={value 1}"
    "cerner-client-id={value 2}"

    ...
    "cerner-client-id={value N}"

[EPAM Millennium and Consumer&Employer Engagement > Application Registration Prerequisites / Developer Guide (In Review) > image2022-2-7_20-18-54.png]

You can use the following commands and tools to check the DNS TXT records:

    Using the Windows CLI:
        “nslookup” → e.g.: “nslookup -type=TXT examplehealth.com”
    Using the Mac/Linux terminal:
        “dig” → e.g.: dig examplehealth.com TXT
    Using the following online resources:
        https://mxtoolbox.com/txtlookup.aspx
        https://gf.dev/dns-lookup
</p>
</details>
<details><summary>Inspect your TLS Certificate</summary>

TLS certificates are used to protect both the end users' information while it's in transfer, and to authenticate the website's organization identity to ensure users are interacting with legitimate website owners.

To follow the security best practices you should utilize TLS implementations that support current IETF best practices for TLS (please refer to this documentation for more details). Cerner RECOMMENDS you utilize public testing tools, such as Qualsys SSL Labs, to verify proper functioning of your https implementation.

Please follow one of below approaches to check TLS Certificates for your application:

    Using OpenSSL Mac/Linux:
        https://www.feistyduck.com/library/openssl-cookbook/online/ch-testing-with-openssl.html

    Using the following online resources:
        https://www.ssllabs.com/ssltest/index.html
        https://ssltools.digicert.com/checker/
        https://www.thesslstore.com/ssltools/ssl-checker.php

What you should pay attention to:

    Supported TLS Certificates types:
        Domain Validated (DV),
        Organization Validated (OV),
        Extended Validation (EV).
    Supported TLS protocols:
        TLS 1.2
        TLS 1.3
    The Certificate Revoked/not Revoked status
    The Certificate “Valid from” date
    The Certificate expiration date
    The Certificate issued by one of the public Certificate Authorities.

Example

Using online resource https://www.ssllabs.com TLS certificate result may be as on example below:
![Example Image](https://myoctocat.com/assets/images/base-octocat.svg)
</p>
</details>

# Information Displayed to Users
### Application / Business Details

The following table explains how following the security practices above result in users getting more information about your application and the business/organization offering it.  The table shows what information Cerner displays to end users, where it's sourced from, and under what conditions it's used.

|Information | Example | Source | Conditions |
| ------------- | ------------- |------------- |------------- |
|  Application Name  | Example Health App  | Cerner CODE Portal - Application Registration  | 	Application name is only displayed to users if a legal entity can be associated with the application's website via the use of a valid, trusted EV or OV certificate.  |
| Organization Name  | Example Health Corporation  | EV or OV TLS Certificate  | rganization Name	Example Health Corporation	EV or OV TLS Certificate	Organization name is only displayed to users if a legal entity can be associated with the application's website via the use of a valid, trusted EV or OV certificate.   |
| Organization Location | US, MO, Kansas City  | EV or OV TLS Certificate  | Organization Location is only displayed to users if a legal entity can be associated with the application's website via the use of a valid, trusted EV or OV certificate. |
| Website Domain (eTLD+1)  | examplehealth.com | Cerner CODE Portal - Application Registration	  | The eTLD+1 portion of the host domain of the redirect URI will always be displayed to the end user. |

### Labels

The following table explains labeling Cerner applies to applications in certain conditions. 

| Label  | Conditions |
| ------------- | ------------- |
| "Validated"  | The "Validated" label is displayed when an application has been formally Validated through the Cerner CODE program.  |
| "Not Validated"  | The "Not Validated" label is displayed when an application has not been formally Validated through the Cerner CODE program.   |
| "Unknown App"  | This is a catch-all fall back mechanism that Cerner uses when an application doesn't employ enough of the security best practices listed in the Technical Requirements section above for Cerner to describe the application.  |
	

# FAQ

**Are these security requirements required of all Cerner Ignite applications?**

The security requirements outlined in this document are currently only required for all Ignite applications targeting the patient persona. Though, Cerner encourages the use of these best practices for all end user facing applications.

**Why are OV/EV certificates preferred by Cerner?**

Organization-Validated (OV) and/or Extended-Validation (EV) certificates ensure that the certificate is being issued to an official business entity (with a name and address). This helps provide transparency to users (patients) about who they are sharing their data with.  Cerner does not perform validation of the incorporation of your business. By utilizing an OV or EV certificate, Cerner trusts that the certificate authority has performed such validation and will correspondingly display your organization's name in association with the application.

**Is either an OV or EV certificate acceptable?**

Yes, at the time of writing Cerner does not distinguish OV and EV certificates, so either is acceptable. However, some web browsers might give preferential treatment to EV certificates.

**Are self-signed certificates acceptable?**

No. Cerner does not support the use of self-signed certificates.

**What Certificate Authorities (CAs) does Cerner trust?**

Refer to this documentation for a summary of the CAs that Cerner trusts.

**How/when does Cerner use eTLD+1 values?**

In some situations where Cerner cannot determine the business entity providing an application, Cerner falls back to using the domain name of the application's primary redirect URI to describe the application. For brevity/consistency, the eTLD+1 value will be used in these situations.

**Why does Cerner only display the eTLD+1 portion of the domain name?**

This is done to help avoid confusing users (patients). Google has a [good write-up explaining the security benefits of this practice](https://sites.google.com/a/chromium.org/dev/Home/chromium-security/enamel).

**How do I get a Cerner client identifier for my application?**

Cerner assigns your application a unique client identifier for your application as part of the registration process at the Cerner CODE Console (https://code-console.cerner.com/).  This Cerner client identifier is also referred to as a System Account ID in some Cerner Central tooling (https://cernercentral.com/system-accounts/).

**Why is a DNS TXT record recommended?**

The DNS TXT record helps prove that the website intends to host your application. Cerner does not automatically directly assume that URLs provided by a developer are associated with the website operator. By publishing a DNS TXT record, Cerner can verify that the party that controls the website address intends to associate itself with the your registered application.

**Where should the DNS TXT record be placed?**

The DNS TXT record should be located on the DNS record for fully qualified domain name of your application's primary redirect URI.

**What happens if I don't provide the DNS TXT record?**

Cerner is unable to determine if the website intends to host your application. Therefore, Cerner will label the application as "Unknown App" and no information about your application except the domain name (ETLD+1) will be displayed to the user.  It will not prevent the user from using your application if he/she is comfortable with it.

**Why does Cerner recommend that an application's name align with the name of the website hosting it and/or the legal entity operating it?**

As mentioned in the overview, the goal of the practices outlined in this document is to enable users (patients) to have a better understanding of who/what they're considering sharing the protected health information (PHI) with.  Having a series of seemingly unrelated names (for application name, organization name, and website name) makes it more difficult to achieve this goal.

**If I make changes to my application's TLS certificate and/or DNS TXT record, how long before the Cerner workflow will recognize/display these changes?**

It may take up to 12 hours before the Cerner workflow will recognize TLS certificate/or DNS TXT record changes.

### References

* RFC-8252: https://datatracker.ietf.org/doc/html/rfc8252
* RFC-2119: https://datatracker.ietf.org/doc/html/rfc2119
* RFC-6749: https://datatracker.ietf.org/doc/html/rfc6749
* Cerner CODE Program:  https://code.cerner.com/
* Cerner CODE Validation Program:  https://code.cerner.com/apiaccess
* Cerner CODE Console: https://code-console.cerner.com/
* Cerner CODE TLS Guidance: http://fhir.cerner.com/authorization/tls-guidance/ 
