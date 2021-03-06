U:RDoc::AnyMethod[iI"new:EFI"OpenSSL::PKey::RSA::new;FT:publico:RDoc::Markup::Document:@parts[	S:RDoc::Markup::Heading:
leveli:	textI"Parameters;Fo:RDoc::Markup::List:
@type:BULLET:@items[o:RDoc::Markup::ListItem:@label0;	[o:RDoc::Markup::Paragraph;	[I"<+size+ is an integer representing the desired key size.;Fo;;0;	[o;;	[I"A+encoded_key+ is a string containing PEM or DER encoded key.;Fo;;0;	[o;;	[I"O+pass+ is an optional string with the password to decrypt the encoded key.;Fo:RDoc::Markup::BlankLine S;
;i;I"Examples;Fo;;;;[o;;0;	[o;;	[I"RSA.new(2048) -> rsa;Fo;;0;	[o;;	[I")RSA.new(File.read("rsa.pem")) -> rsa;Fo;;0;	[o;;	[I"7RSA.new(File.read("rsa.pem"), "mypassword") -> rsa;FI"3RSA.new([size | encoded_key] [, pass]) -> rsa
;F0[ I"
(...);F