U:RDoc::AnyMethod[iI"	bool:EFI"Socket::Option::bool;FT:publico:RDoc::Markup::Document:@parts[o:RDoc::Markup::Paragraph;	[I"HCreates a new Socket::Option object which contains boolean as data.;FI"$Actually 0 or 1 as int is used.;Fo:RDoc::Markup::BlankLine o:RDoc::Markup::Verbatim;	[I"  ;FI"<p Socket::Option.bool(:INET, :SOCKET, :KEEPALIVE, true);FI"
;FI"  ;FI"3#=> #<Socket::Option: INET SOCKET KEEPALIVE 1>;FI"
;FI"
;FI"  ;FI"=p Socket::Option.bool(:INET, :SOCKET, :KEEPALIVE, false);FI"
;FI"  ;FI"6#=> #<Socket::Option: AF_INET SOCKET KEEPALIVE 0>;FI"BSocket::Option.bool(family, level, optname, bool) => sockopt
;F0[ I"(p1, p2, p3, p4);F