U:RDoc::AnyMethod[iI"ipv6_pktinfo_ifindex:EFI"/Socket::AncillaryData#ipv6_pktinfo_ifindex;FF:publico:RDoc::Markup::Document:@parts[
o:RDoc::Markup::Paragraph;	[I"7Extracts ifindex from IPV6_PKTINFO ancillary data.;Fo:RDoc::Markup::BlankLine o;
;	[I")IPV6_PKTINFO is defined by RFC 3542.;Fo; o:RDoc::Markup::Verbatim;	[I"  ;FI"addr = Addrinfo.ip("::1");FI"
;FI"  ;FI"ifindex = 0;FI"
;FI"  ;FI"@ancdata = Socket::AncillaryData.ipv6_pktinfo(addr, ifindex);FI"
;FI"  ;FI")p ancdata.ipv6_pktinfo_ifindex #=> 0;FI"*ancdata.ipv6_pktinfo_ifindex => addr
;F0[ I"();F