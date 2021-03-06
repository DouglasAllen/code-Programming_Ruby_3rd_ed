U:RDoc::AnyMethod[iI"udp_server_loop_on:EFI"Socket::udp_server_loop_on;FT:publico:RDoc::Markup::Document:@parts[
o:RDoc::Markup::Paragraph;	[I"1Run UDP/IP server loop on the given sockets.;Fo:RDoc::Markup::BlankLine o;
;	[I"SThe return value of Socket.udp_server_sockets is appropriate for the argument.;Fo; o;
;	[I"2It calls the block for each message received.;FI">Socket.udp_server_loop_on(sockets) {|msg, msg_src| ... }
;FI"msg, msg_src;F[ I"(sockets);F