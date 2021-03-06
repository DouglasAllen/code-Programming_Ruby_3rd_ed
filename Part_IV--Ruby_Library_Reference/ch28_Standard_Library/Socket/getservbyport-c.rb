U:RDoc::AnyMethod[iI"getservbyport:EFI"Socket::getservbyport;FT:publico:RDoc::Markup::Document:@parts[
o:RDoc::Markup::Paragraph;	[I"(Obtains the port number for _port_.;Fo:RDoc::Markup::BlankLine o;
;	[I"7If _protocol_name_ is not given, "tcp" is assumed.;Fo; o:RDoc::Markup::Verbatim;	[I"  ;FI"/Socket.getservbyport(80)         #=> "www";FI"
;FI"  ;FI"1Socket.getservbyport(514, "tcp") #=> "shell";FI"
;FI"  ;FI"2Socket.getservbyport(514, "udp") #=> "syslog";FI"=Socket.getservbyport(port [, protocol_name]) => service
;F0[ I"
(...);F