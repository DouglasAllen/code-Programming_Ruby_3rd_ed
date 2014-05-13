U:RDoc::AnyMethod[iI"new:EFI"UDPSocket::new;FT:publico:RDoc::Markup::Document:@parts[
o:RDoc::Markup::Paragraph;	[I"$Creates a new UDPSocket object.;Fo:RDoc::Markup::BlankLine o;
;	[I"A_address_family_ should be an integer, a string or a symbol:;FI",Socket::AF_INET, "AF_INET", :INET, etc.;Fo; o:RDoc::Markup::Verbatim;	[
I"  ;FI":UDPSocket.new                   #=> #<UDPSocket:fd 3>;FI"
;FI"  ;FI":UDPSocket.new(Socket::AF_INET6) #=> #<UDPSocket:fd 4>;FI"/UDPSocket.new([address_family]) => socket
;F0[ I"
(...);F