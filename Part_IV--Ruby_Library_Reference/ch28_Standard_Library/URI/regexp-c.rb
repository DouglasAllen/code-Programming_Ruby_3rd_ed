U:RDoc::AnyMethod[iI"regexp:EFI"URI::regexp;FT:publico:RDoc::Markup::Document:@parts[S:RDoc::Markup::Heading:
leveli:	textI"Synopsis;Fo:RDoc::Markup::BlankLine o:RDoc::Markup::Verbatim;	[I"  ;FI"!URI::regexp([match_schemes]);FI"
;FS;
;i;I"	Args;Fo; o:RDoc::Markup::List:
@type:	NOTE:@items[o:RDoc::Markup::ListItem:@labelI"+match_schemes+;F;	[o:RDoc::Markup::Paragraph;	[I"AArray of schemes. If given, resulting regexp matches to URIs;FI".whose scheme is one of the match_schemes.;Fo; S;
;i;I"Description;Fo;;	[I"?Returns a Regexp object which matches to URI-like strings.;FI"AThe Regexp object returned by this method includes arbitrary;FI"Gnumber of capture group (parentheses).  Never rely on it's number.;Fo; S;
;i;I"
Usage;Fo; o;;	["I"  ;FI"require 'uri';FI"
;FI"
;FI"  ;FI")# extract first URI from html_string;FI"
;FI"  ;FI""html_string.slice(URI.regexp);FI"
;FI"
;FI"  ;FI"# remove ftp URIs;FI"
;FI"  ;FI"(html_string.sub(URI.regexp(['ftp']);FI"
;FI"
;FI"  ;FI"7# You should not rely on the number of parentheses;FI"
;FI"  ;FI"/html_string.scan(URI.regexp) do |*matches|;FI"
;FI"	    ;FI"	p $&;FI"
;FI"  ;FI"end;F00[ I"(schemes = nil);F