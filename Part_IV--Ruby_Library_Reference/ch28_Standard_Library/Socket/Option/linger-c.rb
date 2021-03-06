U:RDoc::AnyMethod[iI"linger:EFI"Socket::Option::linger;FT:publico:RDoc::Markup::Document:@parts[o:RDoc::Markup::Paragraph;	[I"BCreates a new Socket::Option object for SOL_SOCKET/SO_LINGER.;Fo:RDoc::Markup::BlankLine o;
;	[I"/_onoff_ should be an integer or a boolean.;Fo; o;
;	[I",_secs_ should be the number of seconds.;Fo; o:RDoc::Markup::Verbatim;	[
I"  ;FI"&p Socket::Option.linger(true, 10);FI"
;FI"  ;FI"9#=> #<Socket::Option: UNSPEC SOCKET LINGER on 10sec>;FI"3Socket::Option.linger(onoff, secs) => sockopt
;F0[ I"(p1, p2);F