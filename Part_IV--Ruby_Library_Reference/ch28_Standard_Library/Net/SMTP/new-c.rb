U:RDoc::AnyMethod[iI"new:EFI"Net::SMTP::new;FT:publico:RDoc::Markup::Document:@parts[
o:RDoc::Markup::Paragraph;	[I"$Creates a new Net::SMTP object.;Fo:RDoc::Markup::BlankLine o;
;	[I"9+address+ is the hostname or ip address of your SMTP;FI">server.  +port+ is the port to connect to; it defaults to;FI"port 25.;Fo; o;
;	[I"?This method does not open the TCP connection.  You can use;FI"@SMTP.start instead of SMTP.new if you want to do everything;FI":at once.  Otherwise, follow SMTP.new with SMTP#start.;F00[ I"(address, port = nil);F