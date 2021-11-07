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

WebRTC is a set of APIs and protocols which enables real-time audio, video and data commnications. WebRTC was purposely designed lacking end-to-end signaling protcols for creating WebRTC sessions. WHAP stands for WebRTC HTTPS Access Protocol. WHAP is intended to provide a simple HTTPS based signaling method for sending one-way media and data between two WebRTC participants. WHAP is unique from WHIP, another HTTPS based WebRTC signaling protocol, in that WHAP HTTPS sessions are initiated by media/data receivers, not media/data senders.



{mainmatter}

# Introduction

<!--
- short problem statement
- what webrtc is
- sdp, answer/offer
- lack of last-mile signaling in webrtc
- whip
- whap 

this draft is a guide (problem statement)
the objective of this
the benefit of having
comparison/why not whip?
-->

This document is intended to define a signaling protocol for WebRTC based upon HTTP and HTTPS.



WebRTC is a set of APIs and protocols which enables real-time audio, video and data commnications. Implementation of WebRTC in browsers is enabling a great number of new applications which require real-time exchange of audiovisual media. WebRTC also provides facilities for real-time data communication.

WebRTC provides mechanisms to facilitate creating connections between WebRTC entities. In order to enable connections, WebRTC defines the use of Session Description Protocol (SDP) [@RFC8866] messages, and an Offer/Answer Model for exchanging SDPs [@RFC3264].

While WebRTC specifies the usage of SDPs and an Offer/Answer model for creating connections, WebRTC does not define the precise signaling protocols over which SDPs should be exchanged [@RFC8825]. A long list of protocols have been suggested, and are in use for WebRTC signalling: SIP [@RFC3261], XMPP [@RFC6120], MQTT [@MQTT], Websockets [@RFC6455], HTTPS [@RFC2818], and others.


   either a standards-based or proprietary protocol could be used
   between the browser and the w

tocols (e.g., SIP or the Extensible Messaging and Presence Protocol (XMPP)
) could be used between servers, while either a standards-based or proprietary
protocol could be used b





# Conventions and Definitions

The key words "MUST", "MUST NOT", "REQUIRED", "SHALL", "SHALL NOT", "SHOULD",
"SHOULD NOT", "RECOMMENDED", "NOT RECOMMENDED", "MAY", and "OPTIONAL" in this
document are to be interpreted as described in BCP 14 [@!RFC2119] [@RFC8174]
when, and only when, they appear in all capitals, as shown here.

The reader may wish to note that one of the two RFC references in the
preceding paragraph was normative; the other was informative. These will
be correctly identified as such in the References section below.

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







<reference anchor="MQTT" target="http://docs.oasis-open.org/mqtt/mqtt/v5.0/os/mqtt-v5.0-os.html">
   <front>
      <title>OASIS Standard MQTT Version 5.0</title>
      <author initials="A." surname="Banks" role="editor">
         <organization>IBM</organization>
      </author>
      <author initials="E." surname="Briggs" role="editor">
         <organization>Microsoft</organization>
      </author>
      <author initials="K." surname="Borgendale" role="editor">
         <organization>IBM</organization>
      </author>
      <author initials="R." surname="Gupta" role="editor">
         <organization>IBM</organization>
      </author>
      <date year="2017" />
   </front>
</reference>