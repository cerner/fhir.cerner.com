---
title: TLS Usage Guidance
layout: authorization
---

# Guidance for the use of TLS with Cerner Ignite

## Introduction

All HL7 FHIR and HL7 SMART endpoints offered by Cerner utilize the Secure HyperText Transfer Protocol ("https") to ensure the confidentiality and integrity of data transmissions.  Cerner strongly __RECOMMENDS__ that application developers also utilize https for protecting their own application endpoints.

The https protocol relies upon public key infrastructure ("PKI") as the means by which client applications can verify the authenticity of each remote service endpoint.  This document provides Cerner's guidance to developers on how to utilize https and PKI in conjunction with Cerner's services as to guarantee interoperability of https connections.

## Establishing TLS Connections to Cerner

The following requirements and recommendations apply to any software connecting to Cerner's implementation of HL7 FHIR or HL7 SMART.

### Supported versions of HTTP

Cerner currently supports the HTTP 1.1 protocol.  Connectivity to certain endpoints using newer versions __MAY__ be technically possible, but are not guaranteed to be available in all service deployments.

### TLS Versions and Cipher Suites

Cerner ascribes to follow all best current practices "BCPs" published by the IETF, which currently includes:

- [RFC 7525 Recommendations for Secure Use of Transport Layer Security (TLS) and Datagram Transport Layer Security (DTLS)](https://datatracker.ietf.org/doc/html/rfc7525)
- [RFC 8996 Deprecating TLS 1.0 and TLS 1.1](https://datatracker.ietf.org/doc/html/rfc8996)

As of this writing, these best current practices dictate the use of TLS versions 1.2 and 1.3, along with a recommneded suite of minimum encryption cipher suites.  Cerner __RECOMMENDS__ developers either:

- Utilize an "evergreen" TLS implementation that similarly implements best current practices.  For example, most operating systems provide implementations that maintain best practices through automated patching.  Simiarly, browser-based applications benefit from the browser's built-in TLS implementation, in which most browsers are delivered in an evergreen fashion to end users.
- Maintain patching of the application's TLS implementation to stay current with best practices.

### Certificate Chain Validation Process

Developers writing software that interoperates with Cerner's HL7 FHIR and HL7 SMART components should utilize https implementations that implement [RFC 6125](https://datatracker.ietf.org/doc/html/rfc6125) for certificate validation.

### Trusted Certificate Authorities

Cerner relies on public PKI systems (specifically, certificate authorities participating in the [CA/Browser Forum](https://cabforum.org/)), as the means by which it identifies its services to customers and third-party applications.  Multiple vendors of operating systems, browsers, and other layered software components publish their own vetted list of certificate authorities that participtate in CA/Browser Forum.  

Cerner __REQUIRES__ developers to choose one or more vetted sources of certificate authorities that participate in CA/Browser Forum to trust within their application, as Cerner does not guarantee it will source certificates from any one specific certificate authority.


Cerner __RECOMMENDS__ the use of any of the following programs that provide vetted certificate authority lists:

- [Common CCADB](https://www.ccadb.org/policy)
- [Microsoft Trusted Root Program](https://docs.microsoft.com/en-us/security/trusted-root/participants-list)
- [Chrome Root Program](https://www.chromium.org/Home/chromium-security/root-ca-policy/)
- [Oracle Java Root Certificate Program](https://www.oracle.com/java/technologies/javase/carootcertsprogram.html)
- [Apple Root Certificate Program](https://www.apple.com/certificateauthority/ca_program.html)

## Developed-Operated TLS Endpoints

Most applications integrating with Cerner's implementations of HL7 FHIR and HL7 SMART will have endpoints that receive communication from browsers or Cerner software.  Examples include, but are not limited to:

- Web-based SMART Launch applications that render markup to a user's browser via an https endpoint.
- SMART Backend Services applications that publish their JSON Web Key Sets via an https endpoint.
- CDS Hooks services that receive publications from Cerner's CDS Hooks infrastructure via an https endpoint.

### Supported versions of HTTPS

Cerner __REQUIRES__ developers support the HTTPS 1.1 protocol.  

### TLS Versions and Cipher Suites

Cerner __RECOMMENDS__ developers utilize an evergreen TLS implementation to protect https endpoints.  Developers __MUST__ use an implementation that supports current IETF best practices for TLS in order to guarantee interoperability with browsers and Cerner infrastructure.  Cerner __RECOMMENDS__ developers utilize public testing tools, such as [Qualsys SSL Labs](https://www.ssllabs.com/) to verify proper functioning of their https implementation.

### Trusted Certificate Authorities

To guarantee interoperability with customer deployments and Cerner infrastructure, Cerner __RECOMMENDS__ developers utilize certificates from public certificate authorities that participate in the CA/Browser Forum and that have been generally accepted into root certificate programs of the major browser vendors (Google, Apple, Microsoft, Mozilla).
