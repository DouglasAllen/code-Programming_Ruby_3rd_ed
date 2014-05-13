U:RDoc::AnyMethod[iI"unpack:EFI"Socket::Option#unpack;FF:publico:RDoc::Markup::Document:@parts[o:RDoc::Markup::Paragraph;	[I")Calls String#unpack on sockopt.data.;Fo:RDoc::Markup::BlankLine o:RDoc::Markup::Verbatim;	[I"  ;FI"Lsockopt = Socket::Option.new(:INET, :SOCKET, :KEEPALIVE, [1].pack("i"));FI"
;FI"  ;FI"'p sockopt.unpack("i")      #=> [1];FI"
;FI"  ;FI"'p sockopt.data.unpack("i") #=> [1];FI"'sockopt.unpack(template) => array
;F0[ I"	(p1);F