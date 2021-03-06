U:RDoc::AnyMethod[iI"connect_nonblock:EFI"Socket#connect_nonblock;FF:publico:RDoc::Markup::Document:@parts[o:RDoc::Markup::Paragraph;	[I"JRequests a connection to be made on the given +remote_sockaddr+ after;FI":O_NONBLOCK is set for the underlying file descriptor.;FI"?Returns 0 if successful, otherwise an exception is raised.;Fo:RDoc::Markup::BlankLine S:RDoc::Markup::Heading:
leveli:	textI"Parameter;Fo:RDoc::Markup::List:
@type:BULLET:@items[o:RDoc::Markup::ListItem:@label0;	[o;
;	[I"W+remote_sockaddr+ - the +struct+ sockaddr contained in a string or Addrinfo object;Fo; S;;i;I"Example:;Fo:RDoc::Markup::Verbatim;	[5I"
     ;FI""# Pull down Google's web page;FI"
;FI"
     ;FI"require 'socket';FI"
;FI"
     ;FI"include Socket::Constants;FI"
;FI"
     ;FI"1socket = Socket.new(AF_INET, SOCK_STREAM, 0);FI"
;FI"
     ;FI"8sockaddr = Socket.sockaddr_in(80, 'www.google.com');FI"
;FI"
     ;FI"%begin # emulate blocking connect;FI"
;FI"       ;FI"&socket.connect_nonblock(sockaddr);FI"
;FI"
     ;FI"rescue IO::WaitWritable;FI"
;FI"       ;FI"?IO.select(nil, [socket]) # wait 3-way handshake completion;FI"
;FI"       ;FI"
begin;FI"
;FI"         ;FI"Asocket.connect_nonblock(sockaddr) # check connection failure;FI"
;FI"       ;FI"rescue Errno::EISCONN;FI"
;FI"       ;FI"end;FI"
;FI"
     ;FI"end;FI"
;FI"
     ;FI"+socket.write("GET / HTTP/1.0\r\n\r\n");FI"
;FI"
     ;FI"results = socket.read;FI"
;Fo;
;	[I"NRefer to Socket#connect for the exceptions that may be thrown if the call;FI"!to _connect_nonblock_ fails.;Fo; o;
;	[I"USocket#connect_nonblock may raise any error corresponding to connect(2) failure,;FI""including Errno::EINPROGRESS.;Fo; o;
;	[I",If the exception is Errno::EINPROGRESS,;FI"(it is extended by IO::WaitWritable.;FI"\So IO::WaitWritable can be used to rescue the exceptions for retrying connect_nonblock.;Fo; S;;i;I"See;Fo;;;;[o;;0;	[o;
;	[I"Socket#connect;FI"3socket.connect_nonblock(remote_sockaddr) => 0
;F0[ I"	(p1);F