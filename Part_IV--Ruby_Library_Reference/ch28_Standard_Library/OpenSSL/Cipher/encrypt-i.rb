U:RDoc::AnyMethod[iI"encrypt:EFI"OpenSSL::Cipher#encrypt;FF:publico:RDoc::Markup::Document:@parts[o:RDoc::Markup::Paragraph;	[I"VMake sure to call .encrypt or .decrypt before using any of the following methods:;Fo:RDoc::Markup::List:
@type:BULLET:@items[o:RDoc::Markup::ListItem:@label0;	[o;;:
LABEL;[o;;I"5key=, iv=, random_key, random_iv, pkcs5_keyivgen;F;	[o:RDoc::Markup::BlankLine o;
;	[I"HInternally calls EVP_CipherInit_ex(ctx, NULL, NULL, NULL, NULL, 1).;FI"cipher.encrypt -> self
;F0[ I"
(...);F