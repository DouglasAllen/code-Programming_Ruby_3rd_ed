U:RDoc::AnyMethod[iI"escape:EFI"URI::Escape#escape;FF:publico:RDoc::Markup::Document:@parts[S:RDoc::Markup::Heading:
leveli:	textI"Synopsis;Fo:RDoc::Markup::BlankLine o:RDoc::Markup::Verbatim;	[I"  ;FI"URI.escape(str [, unsafe]);FI"
;FS;
;i;I"	Args;Fo; o:RDoc::Markup::List:
@type:	NOTE:@items[o:RDoc::Markup::ListItem:@labelI"
+str+;F;	[o:RDoc::Markup::Paragraph;	[I"String to replaces in.;Fo;;I"+unsafe+;F;	[o;;	[I"FRegexp that matches all symbols that must be replaced with codes.;FI"-By default uses <tt>REGEXP::UNSAFE</tt>.;FI"CWhen this argument is a String, it represents a character set.;Fo; S;
;i;I"Description;Fo; o;;	[I"DEscapes the string, replacing all unsafe characters with codes.;Fo; S;
;i;I"
Usage;Fo; o;;	[I"  ;FI"require 'uri';FI"
;FI"
;FI"  ;FI"9enc_uri = URI.escape("http://example.com/?a=\11\15");FI"
;FI"  ;FI"p enc_uri;FI"
;FI"  ;FI"(# => "http://example.com/?a=%09%0D";FI"
;FI"
;FI"  ;FI"p URI.unescape(enc_uri);FI"
;FI"  ;FI"&# => "http://example.com/?a=\t\r";FI"
;FI"
;FI"  ;FI"p URI.escape("@?@!", "!?");FI"
;FI"  ;FI"# => "@%3F@%21";F00[[I"URI::Escape#encode;Fo;;	[ I"(*arg);F