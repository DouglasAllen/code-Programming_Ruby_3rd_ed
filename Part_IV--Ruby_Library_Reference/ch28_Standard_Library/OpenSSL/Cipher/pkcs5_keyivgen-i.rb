U:RDoc::AnyMethod[iI"pkcs5_keyivgen:EFI"#OpenSSL::Cipher#pkcs5_keyivgen;FF:publico:RDoc::Markup::Document:@parts[o:RDoc::Markup::Paragraph;	[I"7Generates and sets the key/iv based on a password.;Fo:RDoc::Markup::BlankLine o;
;	[I"UWARNING: This method is only PKCS5 v1.5 compliant when using RC2, RC4-40, or DES;FI"Xwith MD5 or SHA1.  Using anything else (like AES) will generate the key/iv using an;FI"LOpenSSL specific method.  Use a PKCS5 v2 key generation method instead.;Fo; S:RDoc::Markup::Heading:
leveli:	textI"Parameters;Fo;
;	[I"1+salt+ must be an 8 byte string if provided.;FI"6+iterations+ is a integer with a default of 2048.;FI"7+digest+ is a Digest object that defaults to 'MD5';Fo; o;
;	[I"1A minimum of 1000 iterations is recommended.;FI"Lcipher.pkcs5_keyivgen(pass [, salt [, iterations [, digest]]] ) -> nil
;F0[ I"
(...);F