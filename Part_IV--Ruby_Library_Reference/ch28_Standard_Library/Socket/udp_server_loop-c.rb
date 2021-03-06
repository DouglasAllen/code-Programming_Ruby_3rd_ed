U:RDoc::AnyMethod[iI"udp_server_loop:EFI"Socket::udp_server_loop;FT:publico:RDoc::Markup::Document:@parts[o:RDoc::Markup::Paragraph;	[I"Tcreates a UDP/IP server on _port_ and calls the block for each message arrived.;FI"EThe block is called with the message and its source information.;Fo:RDoc::Markup::BlankLine o;
;	[I";This method allocates sockets internally using _port_.;FI"bIf _host_ is specified, it is used conjunction with _port_ to determine the server addresses.;Fo; o;
;	[I"The _msg_ is a string.;Fo; o;
;	[I"1The _msg_src_ is a Socket::UDPSource object.;FI"It is used for reply.;Fo; o:RDoc::Markup::Verbatim;	[I"  ;FI"# UDP/IP echo server.;FI"
;FI"  ;FI"1Socket.udp_server_loop(9261) {|msg, msg_src|;FI"
;FI"	    ;FI"msg_src.reply msg;FI"
;FI"  ;FI"};FI"qSocket.udp_server_loop(port) {|msg, msg_src| ... }
Socket.udp_server_loop(host, port) {|msg, msg_src| ... }
;FI"message, message_source;F[ I"(host=nil, port);F