U:RDoc::AnyMethod[iI"ipv6_pktinfo_addr:EFI",Socket::AncillaryData#ipv6_pktinfo_addr;FF:publico:RDoc::Markup::Document:@parts[
o:RDoc::Markup::Paragraph;	[I"4Extracts addr from IPV6_PKTINFO ancillary data.;Fo:RDoc::Markup::BlankLine o;
;	[I")IPV6_PKTINFO is defined by RFC 3542.;Fo; o:RDoc::Markup::Verbatim;	[I"  ;FI"addr = Addrinfo.ip("::1");FI"
;FI"  ;FI"ifindex = 0;FI"
;FI"  ;FI"@ancdata = Socket::AncillaryData.ipv6_pktinfo(addr, ifindex);FI"
;FI"  ;FI"5p ancdata.ipv6_pktinfo_addr #=> #<Addrinfo: ::1>;FI"'ancdata.ipv6_pktinfo_addr => addr
;F0[ I"();F