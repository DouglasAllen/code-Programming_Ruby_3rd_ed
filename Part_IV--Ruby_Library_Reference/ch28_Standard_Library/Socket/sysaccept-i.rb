U:RDoc::AnyMethod[iI"sysaccept:EFI"Socket#sysaccept;FF:publico:RDoc::Markup::Document:@parts[o:RDoc::Markup::Paragraph;	[I"OAccepts an incoming connection returning an array containing the (integer);FI"Efile descriptor for the incoming connection, _client_socket_fd_,;FI"(and an Addrinfo, _client_addrinfo_.;Fo:RDoc::Markup::BlankLine S:RDoc::Markup::Heading:
leveli:	textI"Example;Fo:RDoc::Markup::Verbatim;	[EI"
     ;FI"&# In one script, start this first;FI"
;FI"
     ;FI"require 'socket';FI"
;FI"
     ;FI"include Socket::Constants;FI"
;FI"
     ;FI"3socket = Socket.new( AF_INET, SOCK_STREAM, 0 );FI"
;FI"
     ;FI"<sockaddr = Socket.pack_sockaddr_in( 2200, 'localhost' );FI"
;FI"
     ;FI"socket.bind( sockaddr );FI"
;FI"
     ;FI"socket.listen( 5 );FI"
;FI"
     ;FI"2client_fd, client_addrinfo = socket.sysaccept;FI"
;FI"
     ;FI"/client_socket = Socket.for_fd( client_fd );FI"
;FI"
     ;FI">puts "The client said, '#{client_socket.readline.chomp}'";FI"
;FI"
     ;FI"0client_socket.puts "Hello from script one!";FI"
;FI"
     ;FI"socket.close;FI"
;FI"
;FI"
     ;FI"+# In another script, start this second;FI"
;FI"
     ;FI"require 'socket';FI"
;FI"
     ;FI"include Socket::Constants;FI"
;FI"
     ;FI"3socket = Socket.new( AF_INET, SOCK_STREAM, 0 );FI"
;FI"
     ;FI"<sockaddr = Socket.pack_sockaddr_in( 2200, 'localhost' );FI"
;FI"
     ;FI"socket.connect( sockaddr );FI"
;FI"
     ;FI"'socket.puts "Hello from script 2.";FI"
;FI"
     ;FI"7puts "The server said, '#{socket.readline.chomp}'";FI"
;FI"
     ;FI"socket.close;FI"
;Fo;
;	[I"MRefer to Socket#accept for the exceptions that may be thrown if the call;FI"to _sysaccept_ fails.;Fo; S;;i;I"See;Fo:RDoc::Markup::List:
@type:BULLET:@items[o:RDoc::Markup::ListItem:@label0;	[o;
;	[I"Socket#accept;FI"=socket.sysaccept => [client_socket_fd, client_addrinfo]
;F0[ I"();F