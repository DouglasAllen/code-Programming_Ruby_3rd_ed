U:RDoc::AnyMethod[iI"connect:EFI"UDPSocket#connect;FF:publico:RDoc::Markup::Document:@parts[
o:RDoc::Markup::Paragraph;	[I"+Connects _udpsocket_ to _host_:_port_.;Fo:RDoc::Markup::BlankLine o;
;	[I"=This makes possible to send without destination address.;Fo; o:RDoc::Markup::Verbatim;	[I"  ;FI"u1 = UDPSocket.new;FI"
;FI"  ;FI"u1.bind("127.0.0.1", 4913);FI"
;FI"  ;FI"u2 = UDPSocket.new;FI"
;FI"  ;FI""u2.connect("127.0.0.1", 4913);FI"
;FI"  ;FI"u2.send "uuuu", 0;FI"
;FI"  ;FI"Qp u1.recvfrom(10) #=> ["uuuu", ["AF_INET", 33230, "localhost", "127.0.0.1"]];FI"(udpsocket.connect(host, port) => 0
;F0[ I"(p1, p2);F