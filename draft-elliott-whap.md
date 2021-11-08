%%%
title = "WebRTC HTTPS Access Protocol"
area = "General"
#workgroup = "Network Working Group"

[seriesInfo]
name = "Internet-Draft"
value = "draft-elliott-whap-00"
stream = "IETF"
status = "informational"

date = 2021-11-06T00:00:00Z

# from kramdown examples
ipr = "trust200902"
area = "General"
#workgroup = "TODO Working Group"
keyword = ["Internet-Draft"]

[pi]
toc = "yes"

[[author]]
initials = "C."
surname = "Elliott"
fullname = "Cameron Elliott"
organization = "Elliott Consulting"
  [author.address]
   email = "cameron@cameronelliott.com"


[[author]]
initials="S."
surname="DuBois"
fullname="Sean DuBois"
organization = "Twitch Interactive"
  [author.address]
  email = "sean@pion.ly"
%%%



.# Abstract

WebRTC is a set of APIs and protocols which enables real-time audio, video and data commnications. WebRTC was purposely designed lacking end-to-end signaling protcols for creating WebRTC sessions. WHAP stands for WebRTC HTTP/S Access Protocol. WHAP is intended to provide a simple HTTP/S based signaling method for sending one-way media and data between two WebRTC participants. While inspired by and sharing some similarities with WHIP [@I-D.ietf-wish-whip], in constrast to WHIP, WHAP media receivers dial out to senders, and WHAP supports HTTP in trusted environments for cloud-native scaling of SFUs.


{mainmatter}

# Introduction

<!--
model: https://datatracker.ietf.org/doc/html/rfc8825
goal
background
benefits
comparison/why not whip?
-->

This document is intended to define a signaling protocol for WebRTC for one-way audio, video and data sessions based upon HTTP or HTTPS: WebRTC HTTP Access Protocol or "WHAP". 

While WebRTC specifies the usage of SDPs [@RFC8866] and an Offer/Answer model [@RFC3264] for creating connections, WebRTC does not define the precise signaling protocols over which SDPs should be exchanged [@RFC8825]. In order to establish a WebRTC session between two WebRTC entities, a signaling protocol is usually used to exchange SDPs. 

A simple HTTP/S signaling protocol for WebRTC can be beneficial for different applications. One application is that of end-user media viewer access. In this case a person might be watching real-time audio/video material via WebRTC. Another example application is composing clusters of selective forwarding units (SFUs) in order to enable large-scale real-time WebRTC broadcasting beyond the capacity of single SFU limits.  Finally, even bidirectional real-time conferencing scenarios may benefit from HTTP/S signalling: if setting up one-way audio/video streams if very simple, there may be use cases where setting up two one-way streams solves bi-directional remote viewing needs.

End-users could benefit by using a browser and HTTPS signaling to view real-time media from different media providers as long as their browser application supports the same signaling protocol as the different vendors offering the real-time audio/video feeds. 

Real-time audio/video media providers of course benefit by being able to more easily provide media feeds to media viewers and receiving systems.

Developers and dev-ops persons could benefit by chaining SFUs together using HTTP signaling in trusted environments in order to create clusters of SFUs able to support large-scale real-time broadcasting.

Developers of AI and machine learning systems consuming audio/video can benefit by using a common HTTP/S signaling protocol, as they can now ingest media from cameras and even audio/video pre-processors that might be sources from 3rd parties.

For further information on WebRTC and how signaling protocols fit into the overall scheme of WebRTC, a good place to start is [@RFC8825], "Overview: Real-Time Protocols for Browser-Based Applications"

# Conventions and Definitions

The key words "MUST", "MUST NOT", "REQUIRED", "SHALL", "SHALL NOT", "SHOULD",
"SHOULD NOT", "RECOMMENDED", "NOT RECOMMENDED", "MAY", and "OPTIONAL" in this
document are to be interpreted as described in BCP 14 [@!RFC2119] [@RFC8174]
when, and only when, they appear in all capitals, as shown here.

# Background

This is some background text

# Use Cases {#usecases}

This section will include some use cases for our new protocol. The use
cases conform to the guidelines found in [@!RFC7268]. (Demonstrating a
normative reference inline.)

Note that the section heading also includes an anchor name that can be
referenced in a cross reference later in the document, as is done in
(#security-considerations) of this document. (Demonstrating using a
reference to a heading without writing an actual anchor, but rather using
the heading name in lowercase and with dashes.)

## First use case

Some text about the first use case. (And an example of using a second level
heading.)

## Second use case

This example includes a list:

- first item
- second item
- third item

And text below the list.

## Third use case

This use case includes some ascii art.  The format for this art is as follows:

~~~ ascii-art
        0
       +-+
       |A|
       +-+
~~~

# Security Considerations

WHAP requires the use of HTTPS,

[RFC8826]
Rescorla, E., "Security Considerations for WebRTC", RFC 8826, DOI 10.17487/RFC8826, January 2021, <https://www.rfc-editor.org/info/rfc8826>.
[RFC8827]
Rescorla, E., "WebRTC Security Architecture", RFC 8827, DOI 10.17487/RFC8827, January 2021, <https://www.rfc-editor.org/info/rfc8827>.


# IANA Considerations

This document has no IANA actions.

# Implementation Status

Coming soon.

# Manageability Considerations

This document has no Manageability Considerations yet.



{backmatter}







