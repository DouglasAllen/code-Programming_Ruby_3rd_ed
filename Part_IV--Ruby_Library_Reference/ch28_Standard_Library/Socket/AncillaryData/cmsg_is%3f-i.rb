U:RDoc::AnyMethod[iI"cmsg_is?:EFI"#Socket::AncillaryData#cmsg_is?;FF:publico:RDoc::Markup::Document:@parts[o:RDoc::Markup::Paragraph;	[I"1tests the level and type of _ancillarydata_.;Fo:RDoc::Markup::BlankLine o:RDoc::Markup::Verbatim;	[I"  ;FI"Eancdata = Socket::AncillaryData.new(:INET6, :IPV6, :PKTINFO, "");FI"
;FI"  ;FI"Jancdata.cmsg_is?(Socket::IPPROTO_IPV6, Socket::IPV6_PKTINFO) #=> true;FI"
;FI"  ;FI"5ancdata.cmsg_is?(:IPV6, :PKTINFO)       #=> true;FI"
;FI"  ;FI"6ancdata.cmsg_is?(:IP, :PKTINFO)         #=> false;FI"
;FI"  ;FI"6ancdata.cmsg_is?(:SOCKET, :RIGHTS)      #=> false;FI":ancillarydata.cmsg_is?(level, type) => true or false
;F0[ I"(p1, p2);F