U:RDoc::AnyMethod[iI"	addr:EFI"UNIXSocket#addr;FF:publico:RDoc::Markup::Document:@parts[	o:RDoc::Markup::Paragraph;	[I"9Returns the local address as an array which contains;FI""address_family and unix_path.;Fo:RDoc::Markup::BlankLine o;
;	[I"Example;Fo:RDoc::Markup::Verbatim;	[
I"  ;FI"'serv = UNIXServer.new("/tmp/sock");FI"
;FI"  ;FI"-p serv.addr #=> ["AF_UNIX", "/tmp/sock"];FI"4unixsocket.addr => [address_family, unix_path]
;F0[ I"();F