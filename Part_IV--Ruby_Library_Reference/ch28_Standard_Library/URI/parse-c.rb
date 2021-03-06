U:RDoc::AnyMethod[iI"
parse:EFI"URI::parse;FT:publico:RDoc::Markup::Document:@parts[S:RDoc::Markup::Heading:
leveli:	textI"Synopsis;Fo:RDoc::Markup::BlankLine o:RDoc::Markup::Verbatim;	[I"  ;FI"URI::parse(uri_str);FI"
;FS;
;i;I"	Args;Fo; o:RDoc::Markup::List:
@type:	NOTE:@items[o:RDoc::Markup::ListItem:@labelI"+uri_str+;F;	[o:RDoc::Markup::Paragraph;	[I"String with URI.;Fo; S;
;i;I"Description;Fo; o;;	[I"BCreates one of the URI's subclasses instance from the string.;Fo; S;
;i;I"Raises;Fo; o;;	[I"URI::InvalidURIError;Fo;;	[I"  ;FI".Raised if URI given is not a correct one.;FI"
;FS;
;i;I"
Usage;Fo; o;;	[I"  ;FI"require 'uri';FI"
;FI"
;FI"  ;FI"1uri = URI.parse("http://www.ruby-lang.org/");FI"
;FI"  ;FI"
p uri;FI"
;FI"  ;FI"?# => #<URI::HTTP:0x202281be URL:http://www.ruby-lang.org/>;FI"
;FI"  ;FI"p uri.scheme;FI"
;FI"  ;FI"# => "http";FI"
;FI"  ;FI"p uri.host;FI"
;FI"  ;FI"# => "www.ruby-lang.org";F00[ I"
(uri);F