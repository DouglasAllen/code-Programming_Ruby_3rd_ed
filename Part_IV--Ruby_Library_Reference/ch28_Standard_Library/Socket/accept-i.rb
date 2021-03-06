U:RDoc::AnyMethod[iI"accept:EFI"Socket#accept;FF:publico:RDoc::Markup::Document:@parts[o:RDoc::Markup::Paragraph;	[I"Accepts a next connection.;FI"5Returns a new Socket object and Addrinfo object.;Fo:RDoc::Markup::BlankLine o:RDoc::Markup::Verbatim;	[I"  ;FI")serv = Socket.new(:INET, :STREAM, 0);FI"
;FI"  ;FI"serv.listen(5);FI"
;FI"  ;FI"&c = Socket.new(:INET, :STREAM, 0);FI"
;FI"  ;FI"$c.connect(serv.connect_address);FI"
;FI"  ;FI"Ip serv.accept #=> [#<Socket:fd 6>, #<Addrinfo: 127.0.0.1:48555 TCP>];FI"7socket.accept => [client_socket, client_addrinfo]
;F0[ I"();F