U:RDoc::AnyMethod[iI"sysaccept:EFI"UNIXServer#sysaccept;FF:publico:RDoc::Markup::Document:@parts[o:RDoc::Markup::Paragraph;	[I"Accepts a new connection.;FI"<It returns the new file descriptor which is an integer.;Fo:RDoc::Markup::BlankLine o:RDoc::Markup::Verbatim;	[I"  ;FI")UNIXServer.open("/tmp/sock") {|serv|;FI"
;FI"	    ;FI"&UNIXSocket.open("/tmp/sock") {|c|;FI"
;FI"      ;FI"fd = serv.sysaccept;FI"
;FI"      ;FI"s = IO.new(fd);FI"
;FI"      ;FI"s.puts "hi";FI"
;FI"      ;FI"s.close;FI"
;FI"      ;FI"p c.read #=> "hi\n";FI"
;FI"	    ;FI"};FI"
;FI"  ;FI"};FI"-unixserver.sysaccept => file_descriptor
;F0[ I"();F