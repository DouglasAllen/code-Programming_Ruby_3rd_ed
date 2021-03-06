U:RDoc::AnyMethod[iI"recvfrom:EFI"UNIXSocket#recvfrom;FF:publico:RDoc::Markup::Document:@parts[o:RDoc::Markup::Paragraph;	[I")Receives a message via _unixsocket_.;Fo:RDoc::Markup::BlankLine o;
;	[I"8_maxlen_ is the maximum number of bytes to receive.;Fo; o;
;	[I"?_flags_ should be a bitwise OR of Socket::MSG_* constants.;Fo; o:RDoc::Markup::Verbatim;	[!I"  ;FI"&s1 = Socket.new(:UNIX, :DGRAM, 0);FI"
;FI"  ;FI"(s1_ai = Addrinfo.unix("/tmp/sock1");FI"
;FI"  ;FI"s1.bind(s1_ai);FI"
;FI"
;FI"  ;FI"&s2 = Socket.new(:UNIX, :DGRAM, 0);FI"
;FI"  ;FI"(s2_ai = Addrinfo.unix("/tmp/sock2");FI"
;FI"  ;FI"s2.bind(s2_ai);FI"
;FI"  ;FI"&s3 = UNIXSocket.for_fd(s2.fileno);FI"
;FI"
;FI"  ;FI"s1.send "a", 0, s2_ai;FI"
;FI"  ;FI";p s3.recvfrom(10) #=> ["a", ["AF_UNIX", "/tmp/sock1"]];FI"Bunixsocket.recvfrom(maxlen [, flags]) => [mesg, unixaddress]
;F0[ I"
(...);F