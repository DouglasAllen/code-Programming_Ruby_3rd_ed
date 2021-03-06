U:RDoc::AnyMethod[iI"unescape:EFI"URI::Escape#unescape;FF:publico:RDoc::Markup::Document:@parts[S:RDoc::Markup::Heading:
leveli:	textI"Synopsis;Fo:RDoc::Markup::BlankLine o:RDoc::Markup::Verbatim;	[I"  ;FI"URI.unescape(str);FI"
;FS;
;i;I"	Args;Fo; o:RDoc::Markup::List:
@type:	NOTE:@items[o:RDoc::Markup::ListItem:@labelI"
+str+;F;	[o:RDoc::Markup::Paragraph;	[I"Unescapes the string.;Fo; S;
;i;I"
Usage;Fo; o;;	[I"  ;FI"require 'uri';FI"
;FI"
;FI"  ;FI"9enc_uri = URI.escape("http://example.com/?a=\11\15");FI"
;FI"  ;FI"p enc_uri;FI"
;FI"  ;FI"(# => "http://example.com/?a=%09%0D";FI"
;FI"
;FI"  ;FI"p URI.unescape(enc_uri);FI"
;FI"  ;FI"&# => "http://example.com/?a=\t\r";F00[[I"URI::Escape#decode;Fo;;	[ I"(*arg);F