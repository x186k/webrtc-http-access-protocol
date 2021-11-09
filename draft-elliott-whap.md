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

WebRTC is a set of APIs and protocols which enable real-time audio, video and data commnications. WebRTC was purposely designed without complete end-to-end signaling protcols for creating WebRTC sessions. WHAP stands for WebRTC HTTP/S Access Protocol. WHAP is intended to provide a simple HTTP/S based signaling method to setup one-way media and data sessions between two WebRTC participants. While inspired by and sharing some similarities with WHIP [@I-D.ietf-wish-whip], in constrast to WHIP, WHAP media receivers dial out to senders, and WHAP supports HTTP in trusted environments for cloud-native scaling of SFUs.


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

A simple HTTP/S signaling protocol for WebRTC can be beneficial for different applications. One application is that of end-user media viewer access. In this case a person might be watching real-time audio/video material via WebRTC. Another example application is composing clusters of selective forwarding units (SFUs) in order to enable large-scale real-time WebRTC broadcasting beyond the capacity of single SFU limits.  Finally, even bidirectional real-time conferencing scenarios may benefit from HTTP/S signalling: if setting up one-way audio/video streams is very simple, there may be use cases where setting up two one-way streams solves bi-directional remote viewing needs.

End-users can benefit by using a browser and HTTPS signaling to view real-time media from different media providers as long as their browser application supports the same signaling protocol as the different vendors offering the real-time audio/video feeds. 

Real-time audio/video media providers of course benefit by being able to more easily provide media feeds to media viewers and receiving systems.

Developers and dev-ops persons could benefit by chaining SFUs together using HTTP signaling in trusted environments in order to create clusters of SFUs able to support large-scale real-time broadcasting.

Developers of AI and machine learning systems consuming audio/video can benefit by using a common HTTP/S signaling protocol, as they can now ingest media from cameras and even audio/video pre-processors that might be sources from 3rd parties.

For further information on WebRTC and how signaling protocols fit into the overall scheme of WebRTC, a good place to start is [@RFC8825], "Overview: Real-Time Protocols for Browser-Based Applications"

# Conventions and Definitions

The key words "MUST", "MUST NOT", "REQUIRED", "SHALL", "SHALL NOT", "SHOULD",
"SHOULD NOT", "RECOMMENDED", "NOT RECOMMENDED", "MAY", and "OPTIONAL" in this
document are to be interpreted as described in BCP 14 [@!RFC2119] [@RFC8174]
when, and only when, they appear in all capitals, as shown here.

# Comparison to WHIP: WebRTC HTTP Ingress Protocol

WHIP is the WebRTC HTTP Ingress Protocol, described in the IETF draft: [@I-D.ietf-wish-whip]. 
It is natural to ask what is the different between WHIP and WHAP? 
We believe that WHIP and WHAP are complementary, and mostly do not compete for the same use-cases. WHAP was partly inspired by WHIP. 

## WHIP is for Cloud Ingest, WHAP is for Cloud Egress

The WHIP draft [@I-D.ietf-wish-whip, section Abstract] states that WHIP is for the "WebRTC based ingest of content into streaming servics and/or CDNs." 
So, let's imagine an end-to-end real-time broadcast originating in Madrid and terminating in Los Angeles. The broadcast might start in a browser in Madrid where audio/video is carried using WebRTC. This WebRTC session could be setup to a cloud-based SFU using WHIP. Viewers could then use WHAP to connect from their browsers to the cloud-based SFU to receive and consume the audio/video media.


# Use Cases {#usecases}

There a are number of different use cases for WHAP.

## Content Distribution Network (CDN) to Media Viewer Access 

If a WebRTC broadcast is originating in Madrid, and being sent (using WHIP) to a WebRTC CDN in Berlin, viewers in Los Angeles might directly access the broadcast using WHAP by dialing directly into the SFU(s) in Berlin.

## CDN to CDN WHAP Media Access

WHAP could facilitate SFU to SFU streaming using an on-demand model. Let's say a broadcaster in a town in Spain initiates a WebRTC broadcast. The broadcaster might connect using WHIP to an SFU that is part of a CDN in Madrid. If the broadcast has a large number of viewers, and the CDN has many global points of presence, the CDN could direct viewers in the western US to connect to their local WHAP SFU (in say, Los Angeles), which could then WHAP-ingress-dial the SFU in Madrid in order to forward real-time media.

## Chaining of SFUs to Scale WebRTC Broadcasts

If a single SFU is receiving a broadcast via WHIP, it might be desirable to re-transmit that broadcast to multiple SFUs to increase the number of viewers possible. If the root receiving SFU is able to handle WHAP signaling for output streams then additional SFUs can be chained to the root SFU by using WHAP to connect to the root SFU for their ingress stream.

## WebRTC Based Video Routing Switching

Just as SDI video routing switchers are common in live video production facilities today, WebRTC video routing switchers could be very useful. One might imagine two sets of SFUs: the ingress-SFUs and the egress-SFUs. Stream senders connect (via WHIP) to the ingress of the ingress-SFUs, stream viewers would connect (via WHAP) to the egress of the egress-SFUs. Then routing connections could be made between the ingress and egress SFUs, which would change what stream viewers are receiving. These routing connections could be made with WHIP or WHAP. By using WHAP, the typical model of having multiple receivers connect to their sources is followed. This is usually done to simplify operations.


# Protocol Operation

## SDP Exchange Basics

## Interactive Connectivity Establishment (ICE) Rules
## Network address translation (NAT) 



# Security Considerations {#security-considerations}

Coming soon.


# IANA Considerations

This document has no IANA actions.

# Implementation Status

Coming soon.

# Manageability Considerations

This document has no Manageability Considerations yet.



{backmatter}








<reference anchor='obs' target='https://obsproject.com/'>
  <front>
    <title>Open Broadcaster Software</title>
    <author/>
    <date/>
  </front>
</reference>