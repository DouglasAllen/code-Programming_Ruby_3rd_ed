U:RDoc::AnyMethod[iI"udp_server_recv:EFI"Socket::udp_server_recv;FT:publico:RDoc::Markup::Document:@parts[o:RDoc::Markup::Paragraph;	[I"5Receive UDP/IP packets from the given _sockets_.;FI"3For each packet received, the block is called.;Fo:RDoc::Markup::BlankLine o;
;	[I",The block receives _msg_ and _msg_src_.;FI"C_msg_ is a string which is the payload of the received packet.;FI"E_msg_src_ is a Socket::UDPSource object which is used for reply.;Fo; o;
;	[I"LSocket.udp_server_loop can be implemented using this method as follows.;Fo; o:RDoc::Markup::Verbatim;	[I"  ;FI".udp_server_sockets(host, port) {|sockets|;FI"
;FI"	    ;FI"loop {;FI"
;FI"      ;FI"(readable, _, _ = IO.select(sockets);FI"
;FI"      ;FI"4udp_server_recv(readable) {|msg, msg_src| ... };FI"
;FI"	    ;FI"};FI"
;FI"  ;FI"};FI";Socket.udp_server_recv(sockets) {|msg, msg_src| ... }
;FI"jmsg, UDPSource.new(sender_addrinfo, ai) {|reply_msg| r.sendmsg reply_msg, 0, sender_addrinfo, pktinfo;F[ I"(sockets);F