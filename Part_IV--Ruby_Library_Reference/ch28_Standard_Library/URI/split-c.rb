U:RDoc::AnyMethod[iI"
split:EFI"URI::split;FT:publico:RDoc::Markup::Document:@parts[S:RDoc::Markup::Heading:
leveli:	textI"Synopsis;Fo:RDoc::Markup::BlankLine o:RDoc::Markup::Verbatim;	[I"  ;FI"URI::split(uri);FI"
;FS;
;i;I"	Args;Fo; o:RDoc::Markup::List:
@type:	NOTE:@items[o:RDoc::Markup::ListItem:@labelI"
+uri+;F;	[o:RDoc::Markup::Paragraph;	[I"String with URI.;Fo; S;
;i;I"Description;Fo; o;;	[I"HSplits the string on following parts and returns array with result:;Fo; o;;	[2I"  ;FI"*;FI" ;FI"Scheme;FI"
;FI"  ;FI"*;FI" ;FI"Userinfo;FI"
;FI"  ;FI"*;FI" ;FI"	Host;FI"
;FI"  ;FI"*;FI" ;FI"	Port;FI"
;FI"  ;FI"*;FI" ;FI"Registry;FI"
;FI"  ;FI"*;FI" ;FI"	Path;FI"
;FI"  ;FI"*;FI" ;FI"Opaque;FI"
;FI"  ;FI"*;FI" ;FI"
Query;FI"
;FI"  ;FI"*;FI" ;FI"Fragment;FI"
;FS;
;i;I"
Usage;Fo; o;;	[I"  ;FI"require 'uri';FI"
;FI"
;FI"  ;FI"-p URI.split("http://www.ruby-lang.org/");FI"
;FI"  ;FI"J# => ["http", nil, "www.ruby-lang.org", nil, nil, "/", nil, nil, nil];F00[ I"
(uri);F