U:RDoc::AnyMethod[iI"recvfrom_nonblock:EFI" UDPSocket#recvfrom_nonblock;FF:publico:RDoc::Markup::Document:@parts[o:RDoc::Markup::Paragraph;	[I"KReceives up to _maxlen_ bytes from +udpsocket+ using recvfrom(2) after;FI":O_NONBLOCK is set for the underlying file descriptor.;FI"8If _maxlen_ is omitted, its default value is 65536.;FI"3_flags_ is zero or more of the +MSG_+ options.;FI"DThe first element of the results, _mesg_, is the data received.;FI"YThe second element, _sender_inet_addr_, is an array to represent the sender address.;Fo:RDoc::Markup::BlankLine o;
;	[I" When recvfrom(2) returns 0,;FI">Socket#recvfrom_nonblock returns an empty string as data.;FI"It means an empty packet.;Fo; S:RDoc::Markup::Heading:
leveli:	textI"Parameters;Fo:RDoc::Markup::List:
@type:BULLET:@items[o:RDoc::Markup::ListItem:@label0;	[o;
;	[I">+maxlen+ - the number of bytes to receive from the socket;Fo;;0;	[o;
;	[I"1+flags+ - zero or more of the +MSG_+ options;Fo; S;;i;I"Example;Fo:RDoc::Markup::Verbatim;	[/I"
     ;FI"require 'socket';FI"
;FI"
     ;FI"s1 = UDPSocket.new;FI"
;FI"
     ;FI"s1.bind("127.0.0.1", 0);FI"
;FI"
     ;FI"s2 = UDPSocket.new;FI"
;FI"
     ;FI"s2.bind("127.0.0.1", 0);FI"
;FI"
     ;FI"(s2.connect(*s1.addr.values_at(3,1));FI"
;FI"
     ;FI"(s1.connect(*s2.addr.values_at(3,1));FI"
;FI"
     ;FI"s1.send "aaa", 0;FI"
;FI"
     ;FI"&begin # emulate blocking recvfrom;FI"
;FI"       ;FI"fp s2.recvfrom_nonblock(10)  #=> ["aaa", ["AF_INET", 33302, "localhost.localdomain", "127.0.0.1"]];FI"
;FI"
     ;FI"rescue IO::WaitReadable;FI"
;FI"       ;FI"IO.select([s2]);FI"
;FI"       ;FI"
retry;FI"
;FI"
     ;FI"end;FI"
;Fo;
;	[I"ORefer to Socket#recvfrom for the exceptions that may be thrown if the call;FI""to _recvfrom_nonblock_ fails.;Fo; o;
;	[I"ZUDPSocket#recvfrom_nonblock may raise any error corresponding to recvfrom(2) failure,;FI""including Errno::EWOULDBLOCK.;Fo; o;
;	[I"<If the exception is Errno::EWOULDBLOCK or Errno::AGAIN,;FI"(it is extended by IO::WaitReadable.;FI"]So IO::WaitReadable can be used to rescue the exceptions for retrying recvfrom_nonblock.;Fo; S;;i;I"See;Fo;;;;[o;;0;	[o;
;	[I"Socket#recvfrom;FI"‡udpsocket.recvfrom_nonblock(maxlen) => [mesg, sender_inet_addr]
udpsocket.recvfrom_nonblock(maxlen, flags) => [mesg, sender_inet_addr]
;F0[ I"
(...);F