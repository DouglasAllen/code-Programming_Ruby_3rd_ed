U:RDoc::AnyMethod[iI"pbkdf2_hmac:EFI" OpenSSL::PKCS5::pbkdf2_hmac;FT:publico:RDoc::Markup::Document:@parts[
S:RDoc::Markup::Heading:
leveli:	textI"Parameters;Fo:RDoc::Markup::List:
@type:BULLET:@items[
o:RDoc::Markup::ListItem:@label0;	[o:RDoc::Markup::Paragraph;	[I"+pass+ - string;Fo;;0;	[o;;	[I"+salt+ - string;Fo;;0;	[o;;	[I"E+iter+ - integer - should be greater than 1000.  2000 is better.;Fo;;0;	[o;;	[I"+keylen+ - integer;Fo;;0;	[o;;	[I"3+digest+ - a string or OpenSSL::Digest object.;Fo:RDoc::Markup::BlankLine o;;	[I"!Available in OpenSSL 0.9.9?.;Fo; o;;	[I"RDigests other than SHA1 may not be supported by other cryptography libraries.;FI"CPKCS5.pbkdf2_hmac(pass, salt, iter, keylen, digest) => string
;F0[ I"(p1, p2, p3, p4, p5);F