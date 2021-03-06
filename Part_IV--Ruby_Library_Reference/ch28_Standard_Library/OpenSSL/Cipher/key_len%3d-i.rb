U:RDoc::AnyMethod[iI"key_len=:EFI"OpenSSL::Cipher#key_len=;FF:publico:RDoc::Markup::Document:@parts[
o:RDoc::Markup::Paragraph;	[I"nSets the key length of the cipher.  If the cipher is a fixed length cipher then attempting to set the key;FI"@length to any value other than the fixed value is an error.;Fo:RDoc::Markup::BlankLine o;
;	[I"]Under normal circumstances you do not need to call this method (and probably shouldn't).;Fo; o;
;	[I"?See EVP_CIPHER_CTX_set_key_length for further information.;FI",cipher.key_length = integer -> integer
;F0[ I"	(p1);F