U:RDoc::AnyMethod[iI"new:EFI"OpenSSL::PKey::DH::new;FT:publico:RDoc::Markup::Document:@parts[	S:RDoc::Markup::Heading:
leveli:	textI"Parameters;Fo:RDoc::Markup::List:
@type:BULLET:@items[o:RDoc::Markup::ListItem:@label0;	[o:RDoc::Markup::Paragraph;	[I"s+size+ is an integer representing the desired key size.  Keys smaller than 1024 should be considered insecure.;Fo;;0;	[o;;	[I"9+generator+ is a small number > 1, typically 2 or 5.;Fo;;0;	[o;;	[I"2+string+ contains the DER or PEM encoded key.;Fo:RDoc::Markup::BlankLine S;
;i;I"Examples;Fo;;;;[	o;;0;	[o;;	[I"DH.new -> dh;Fo;;0;	[o;;	[I"DH.new(1024) -> dh;Fo;;0;	[o;;	[I"DH.new(1024, 5) -> dh;Fo;;0;	[o;;	[I"'DH.new(File.read('key.pem')) -> dh;FI"1DH.new([size [, generator] | string]) -> dh
;F0[ I"
(...);F