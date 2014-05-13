U:RDoc::AnyMethod[iI"ipv6_pktinfo:EFI"(Socket::AncillaryData::ipv6_pktinfo;FT:publico:RDoc::Markup::Document:@parts[
o:RDoc::Markup::Paragraph;	[I"1Returns new ancillary data for IPV6_PKTINFO.;Fo:RDoc::Markup::BlankLine o;
;	[I")IPV6_PKTINFO is defined by RFC 3542.;Fo; o:RDoc::Markup::Verbatim;	[I"  ;FI"addr = Addrinfo.ip("::1");FI"
;FI"  ;FI"ifindex = 0;FI"
;FI"  ;FI"8p Socket::AncillaryData.ipv6_pktinfo(addr, ifindex);FI"
;FI"  ;FI"C#=> #<Socket::AncillaryData: INET6 IPV6 PKTINFO ::1 ifindex:0>;FI"BSocket::AncillaryData.ipv6_pktinfo(addr, ifindex) => ancdata
;F0[ I"(p1, p2);F