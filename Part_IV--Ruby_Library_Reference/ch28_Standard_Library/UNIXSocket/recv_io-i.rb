U:RDoc::AnyMethod[iI"recv_io:EFI"UNIXSocket#recv_io;FF:publico:RDoc::Markup::Document:@parts[o:RDoc::Markup::Paragraph;	[I")UNIXServer.open("/tmp/sock") {|serv|;Fo:RDoc::Markup::Verbatim;	[ I"  ;FI"&UNIXSocket.open("/tmp/sock") {|c|;FI"
;FI"	    ;FI"s = serv.accept;FI"
;FI"
;FI"	    ;FI"c.send_io STDOUT;FI"
;FI"	    ;FI"stdout = s.recv_io;FI"
;FI"
;FI"	    ;FI"p STDOUT.fileno #=> 1;FI"
;FI"	    ;FI"p stdout.fileno #=> 7;FI"
;FI"
;FI"	    ;FI"@stdout.puts "hello" # outputs "hello\n" to standard output.;FI"
;FI"  ;FI"};FI"
;Fo;
;	[I"};FI"0unixsocket.recv_io([klass [, mode]]) => io
;F0[ I"
(...);F