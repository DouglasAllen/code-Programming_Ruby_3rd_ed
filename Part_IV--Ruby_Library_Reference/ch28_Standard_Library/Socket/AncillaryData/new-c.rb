U:RDoc::AnyMethod[iI"new:EFI"Socket::AncillaryData::new;FT:publico:RDoc::Markup::Document:@parts[o:RDoc::Markup::Paragraph;	[I"9_family_ should be an integer, a string or a symbol.;Fo:RDoc::Markup::List:
@type:BULLET:@items[o:RDoc::Markup::ListItem:@label0;	[o;
;	[I"8Socket::AF_INET, "AF_INET", "INET", :AF_INET, :INET;Fo;;0;	[o;
;	[I"8Socket::AF_UNIX, "AF_UNIX", "UNIX", :AF_UNIX, :UNIX;Fo;;0;	[o;
;	[I"	etc.;Fo:RDoc::Markup::BlankLine o;
;	[I"=_cmsg_level_ should be an integer, a string or a symbol.;Fo;;;;[
o;;0;	[o;
;	[I"HSocket::SOL_SOCKET, "SOL_SOCKET", "SOCKET", :SOL_SOCKET and :SOCKET;Fo;;0;	[o;
;	[I"%Socket::IPPROTO_IP, "IP" and :IP;Fo;;0;	[o;
;	[I"+Socket::IPPROTO_IPV6, "IPV6" and :IPV6;Fo;;0;	[o;
;	[I"(Socket::IPPROTO_TCP, "TCP" and :TCP;Fo;;0;	[o;
;	[I"	etc.;Fo; o;
;	[I"<_cmsg_type_ should be an integer, a string or a symbol.;FI"OIf a string/symbol is specified, it is interpreted depend on _cmsg_level_.;Fo;;;;[	o;;0;	[o;
;	[I"TSocket::SCM_RIGHTS, "SCM_RIGHTS", "RIGHTS", :SCM_RIGHTS, :RIGHTS for SOL_SOCKET;Fo;;0;	[o;
;	[I">Socket::IP_RECVTTL, "RECVTTL" and :RECVTTL for IPPROTO_IP;Fo;;0;	[o;
;	[I"BSocket::IPV6_PKTINFO, "PKTINFO" and :PKTINFO for IPPROTO_IPV6;Fo;;0;	[o;
;	[I"	etc.;Fo; o;
;	[I"$_cmsg_data_ should be a string.;Fo; o:RDoc::Markup::Verbatim;	[I"  ;FI";p Socket::AncillaryData.new(:INET, :TCP, :NODELAY, "");FI"
;FI"  ;FI"6#=> #<Socket::AncillaryData: INET TCP NODELAY "">;FI"
;FI"
;FI"  ;FI"=p Socket::AncillaryData.new(:INET6, :IPV6, :PKTINFO, "");FI"
;FI"  ;FI"8#=> #<Socket::AncillaryData: INET6 IPV6 PKTINFO "">;FI"ZSocket::AncillaryData.new(family, cmsg_level, cmsg_type, cmsg_data) -> ancillarydata
;F0[ I"(p1, p2, p3, p4);F