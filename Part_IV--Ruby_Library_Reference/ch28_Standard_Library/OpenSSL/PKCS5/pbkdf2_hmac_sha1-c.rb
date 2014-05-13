U:RDoc::AnyMethod[iI"pbkdf2_hmac_sha1:EFI"%OpenSSL::PKCS5::pbkdf2_hmac_sha1;FT:publico:RDoc::Markup::Document:@parts[
S:RDoc::Markup::Heading:
leveli:	textI"Parameters;Fo:RDoc::Markup::List:
@type:BULLET:@items[	o:RDoc::Markup::ListItem:@label0;	[o:RDoc::Markup::Paragraph;	[I"+pass+ - string;Fo;;0;	[o;;	[I"+salt+ - string;Fo;;0;	[o;;	[I"E+iter+ - integer - should be greater than 1000.  2000 is better.;Fo;;0;	[o;;	[I"+keylen+ - integer;Fo:RDoc::Markup::BlankLine o;;	[I"9This method is available almost any version OpenSSL.;Fo; o;;	[I"Conforms to rfc2898.;FI"@PKCS5.pbkdf2_hmac_sha1(pass, salt, iter, keylen) => string
;F0[ I"(p1, p2, p3, p4);F