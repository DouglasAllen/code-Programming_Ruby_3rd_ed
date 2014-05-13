U:RDoc::AnyMethod[iI"send_io:EFI"UNIXSocket#send_io;FF:publico:RDoc::Markup::Document:@parts[o:RDoc::Markup::Paragraph;	[I"+Sends _io_ as file descriptor passing.;Fo:RDoc::Markup::BlankLine o:RDoc::Markup::Verbatim;	[I"  ;FI"s1, s2 = UNIXSocket.pair;FI"
;FI"
;FI"  ;FI"s1.send_io STDOUT;FI"
;FI"  ;FI"stdout = s2.recv_io;FI"
;FI"
;FI"  ;FI"p STDOUT.fileno #=> 1;FI"
;FI"  ;FI"p stdout.fileno #=> 6;FI"
;FI"
;FI"  ;FI"@stdout.puts "hello" # outputs "hello\n" to standard output.;FI"#unixsocket.send_io(io) => nil
;F0[ I"	(p1);F