U:RDoc::AnyMethod[iI"ip_pktinfo:EFI"%Socket::AncillaryData#ip_pktinfo;FF:publico:RDoc::Markup::Document:@parts[o:RDoc::Markup::Paragraph;	[I"HExtracts addr, ifindex and spec_dst from IP_PKTINFO ancillary data.;Fo:RDoc::Markup::BlankLine o;
;	[I" IP_PKTINFO is not standard.;Fo; o;
;	[I""Supported platform: GNU/Linux;Fo; o:RDoc::Markup::Verbatim;	[I"  ;FI"$addr = Addrinfo.ip("127.0.0.1");FI"
;FI"  ;FI"ifindex = 0;FI"
;FI"  ;FI")spec_dest = Addrinfo.ip("127.0.0.1");FI"
;FI"  ;FI"Iancdata = Socket::AncillaryData.ip_pktinfo(addr, ifindex, spec_dest);FI"
;FI"  ;FI"p ancdata.ip_pktinfo;FI"
;FI"  ;FI"<#=> [#<Addrinfo: 127.0.0.1>, 0, #<Addrinfo: 127.0.0.1>];FI"5ancdata.ip_pktinfo => [addr, ifindex, spec_dst]
;F0[ I"();F