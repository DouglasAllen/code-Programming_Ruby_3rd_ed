U:RDoc::AnyMethod[iI"socketpair:EFI"UNIXSocket::socketpair;FT:publico:RDoc::Markup::Document:@parts[o:RDoc::Markup::Paragraph;	[I"4Creates a pair of sockets connected each other.;Fo:RDoc::Markup::BlankLine o;
;	[I"L_socktype_ should be a socket type such as: :STREAM, :DGRAM, :RAW, etc.;Fo; o;
;	[I";_protocol_ should be a protocol defined in the domain.;FI"*0 is default protocol for the domain.;Fo; o:RDoc::Markup::Verbatim;	[I"  ;FI"s1, s2 = UNIXSocket.pair;FI"
;FI"  ;FI"s1.send "a", 0;FI"
;FI"  ;FI"s1.send "b", 0;FI"
;FI"  ;FI"p s2.recv(10) #=> "ab";FI"�UNIXSocket.pair([type [, protocol]])       => [unixsocket1, unixsocket2]
UNIXSocket.socketpair([type [, protocol]]) => [unixsocket1, unixsocket2]
;F0[ I"
(...);F