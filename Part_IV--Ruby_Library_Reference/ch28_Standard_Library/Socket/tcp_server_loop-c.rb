U:RDoc::AnyMethod[iI"tcp_server_loop:EFI"Socket::tcp_server_loop;FT:publico:RDoc::Markup::Document:@parts[o:RDoc::Markup::Paragraph;	[I"Xcreates a TCP/IP server on _port_ and calls the block for each connection accepted.;FI"RThe block is called with a socket and a client_address as an Addrinfo object.;Fo:RDoc::Markup::BlankLine o;
;	[I"VIf _host_ is specified, it is used with _port_ to determine the server addresses.;Fo; o;
;	[I"7The socket is *not* closed when the block returns.;FI"/So application should close it explicitly.;Fo; o;
;	[I".This method calls the block sequentially.;FI"OIt means that the next connection is not accepted until the block returns.;FI"gSo concurrent mechanism, thread for example, should be used to service multiple clients at a time.;Fo; o;
;	[
I"UNote that Addrinfo.getaddrinfo is used to determine the server socket addresses.;FI"=When Addrinfo.getaddrinfo returns two or more addresses,;FI"'IPv4 and IPv6 address for example,;FI"all of them are used.;FI"HSocket.tcp_server_loop succeeds if one socket can be used at least.;Fo; o:RDoc::Markup::Verbatim;	[DI"  ;FI"# Sequential echo server.;FI"
;FI"  ;FI"-# It services only one client at a time.;FI"
;FI"  ;FI";Socket.tcp_server_loop(16807) {|sock, client_addrinfo|;FI"
;FI"	    ;FI"
begin;FI"
;FI"      ;FI"IO.copy_stream(sock, sock);FI"
;FI"	    ;FI"ensure;FI"
;FI"      ;FI"sock.close;FI"
;FI"	    ;FI"end;FI"
;FI"  ;FI"};FI"
;FI"
;FI"  ;FI"# Threaded echo server;FI"
;FI"  ;FI".# It services multiple clients at a time.;FI"
;FI"  ;FI"4# Note that it may accept connections too much.;FI"
;FI"  ;FI";Socket.tcp_server_loop(16807) {|sock, client_addrinfo|;FI"
;FI"	    ;FI"Thread.new {;FI"
;FI"      ;FI"
begin;FI"
;FI"        ;FI"IO.copy_stream(sock, sock);FI"
;FI"      ;FI"ensure;FI"
;FI"        ;FI"sock.close;FI"
;FI"      ;FI"end;FI"
;FI"	    ;FI"};FI"
;FI"  ;FI"};F0I"socket, client_addrinfo;F[ I"(host=nil, port);F