U:RDoc::AnyMethod[iI"udp_server_sockets:EFI"Socket::udp_server_sockets;FT:publico:RDoc::Markup::Document:@parts[o:RDoc::Markup::Paragraph;	[I"-Creates UDP/IP sockets for a UDP server.;Fo:RDoc::Markup::BlankLine o;
;	[I"7If no block given, it returns an array of sockets.;Fo; o;
;	[I"?If a block is given, the block is called with the sockets.;FI"(The value of the block is returned.;FI"5The sockets are closed when this method returns.;Fo; o;
;	[I"-If _port_ is zero, some port is choosen.;FI"6But the choosen port is used for the all sockets.;Fo; o:RDoc::Markup::Verbatim;	[I"  ;FI"# UDP/IP echo server;FI"
;FI"  ;FI",Socket.udp_server_sockets(0) {|sockets|;FI"
;FI"	    ;FI"8p sockets.first.local_address.ip_port     #=> 32963;FI"
;FI"	    ;FI"7Socket.udp_server_loop_on(sockets) {|msg, msg_src|;FI"
;FI"      ;FI"msg_src.reply msg;FI"
;FI"	    ;FI"};FI"
;FI"  ;FI"};FI".Socket.udp_server_sockets([host, ] port)
;FI"sockets;F[ I"(host=nil, port);F