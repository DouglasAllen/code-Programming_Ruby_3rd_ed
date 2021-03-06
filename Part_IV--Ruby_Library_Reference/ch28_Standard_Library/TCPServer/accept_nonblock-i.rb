U:RDoc::AnyMethod[iI"accept_nonblock:EFI"TCPServer#accept_nonblock;FF:publico:RDoc::Markup::Document:@parts[o:RDoc::Markup::Paragraph;	[I"9Accepts an incoming connection using accept(2) after;FI":O_NONBLOCK is set for the underlying file descriptor.;FI"BIt returns an accepted TCPSocket for the incoming connection.;Fo:RDoc::Markup::BlankLine S:RDoc::Markup::Heading:
leveli:	textI"Example;Fo:RDoc::Markup::Verbatim;	[ I"
     ;FI"require 'socket';FI"
;FI"
     ;FI"serv = TCPServer.new(2202);FI"
;FI"
     ;FI"$begin # emulate blocking accept;FI"
;FI"       ;FI" sock = serv.accept_nonblock;FI"
;FI"
     ;FI"*rescue IO::WaitReadable, Errno::EINTR;FI"
;FI"       ;FI"IO.select([serv]);FI"
;FI"       ;FI"
retry;FI"
;FI"
     ;FI"end;FI"
;FI"
     ;FI""# sock is an accepted socket.;FI"
;Fo;
;	[I"MRefer to Socket#accept for the exceptions that may be thrown if the call;FI"(to TCPServer#accept_nonblock fails.;Fo; o;
;	[I"VTCPServer#accept_nonblock may raise any error corresponding to accept(2) failure,;FI""including Errno::EWOULDBLOCK.;Fo; o;
;	[I"^If the exception is Errno::EWOULDBLOCK, Errno::AGAIN, Errno::ECONNABORTED, Errno::EPROTO,;FI"(it is extended by IO::WaitReadable.;FI"[So IO::WaitReadable can be used to rescue the exceptions for retrying accept_nonblock.;Fo; S;;i;I"See;Fo:RDoc::Markup::List:
@type:BULLET:@items[o:RDoc::Markup::ListItem:@label0;	[o;
;	[I"TCPServer#accept;Fo;;0;	[o;
;	[I"Socket#accept;FI",tcpserver.accept_nonblock => tcpsocket
;F0[ I"();F