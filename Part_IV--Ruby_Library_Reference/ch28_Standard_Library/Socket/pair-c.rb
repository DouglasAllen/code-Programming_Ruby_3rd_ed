U:RDoc::AnyMethod[iI"	pair:EFI"Socket::pair;FT:publico:RDoc::Markup::Document:@parts[o:RDoc::Markup::Paragraph;	[I"4Creates a pair of sockets connected each other.;Fo:RDoc::Markup::BlankLine o;
;	[I"S_domain_ should be a communications domain such as: :INET, :INET6, :UNIX, etc.;Fo; o;
;	[I"L_socktype_ should be a socket type such as: :STREAM, :DGRAM, :RAW, etc.;Fo; o;
;	[I";_protocol_ should be a protocol defined in the domain.;FI"*0 is default protocol for the domain.;Fo; o:RDoc::Markup::Verbatim;	[I"  ;FI"+s1, s2 = Socket.pair(:UNIX, :DGRAM, 0);FI"
;FI"  ;FI"s1.send "a", 0;FI"
;FI"  ;FI"s1.send "b", 0;FI"
;FI"  ;FI"p s2.recv(10) #=> "a";FI"
;FI"  ;FI"p s2.recv(10) #=> "b";FI"�Socket.pair(domain, type, protocol)       => [socket1, socket2]
Socket.socketpair(domain, type, protocol) => [socket1, socket2]
;F0[ I"
(...);F