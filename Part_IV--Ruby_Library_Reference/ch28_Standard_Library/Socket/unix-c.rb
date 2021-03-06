U:RDoc::AnyMethod[iI"	unix:EFI"Socket::unix;FT:publico:RDoc::Markup::Document:@parts[o:RDoc::Markup::Paragraph;	[I"Ecreates a new socket connected to path using UNIX socket socket.;Fo:RDoc::Markup::BlankLine o;
;	[I">If a block is given, the block is called with the socket.;FI"(The value of the block is returned.;FI"3The socket is closed when this method returns.;Fo; o;
;	[I"2If no block is given, the socket is returned.;Fo; o:RDoc::Markup::Verbatim;	[I"  ;FI" # talk to /tmp/sock socket.;FI"
;FI"  ;FI"%Socket.unix("/tmp/sock") {|sock|;FI"
;FI"	    ;FI"4t = Thread.new { IO.copy_stream(sock, STDOUT) };FI"
;FI"	    ;FI" IO.copy_stream(STDIN, sock);FI"
;FI"	    ;FI"t.join;FI"
;FI"  ;FI"};F0I"socket;F[ I"(path);F