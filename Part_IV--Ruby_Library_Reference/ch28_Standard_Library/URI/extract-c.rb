U:RDoc::AnyMethod[iI"extract:EFI"URI::extract;FT:publico:RDoc::Markup::Document:@parts[S:RDoc::Markup::Heading:
leveli:	textI"Synopsis;Fo:RDoc::Markup::BlankLine o:RDoc::Markup::Verbatim;	[I"  ;FI"(URI::extract(str[, schemes][,&blk]);FI"
;FS;
;i;I"	Args;Fo; o:RDoc::Markup::List:
@type:	NOTE:@items[o:RDoc::Markup::ListItem:@labelI"
+str+;F;	[o:RDoc::Markup::Paragraph;	[I"!String to extract URIs from.;Fo;;I"+schemes+;F;	[o;;	[I".Limit URI matching to a specific schemes.;Fo; S;
;i;I"Description;Fo; o;;	[I"TExtracts URIs from a string. If block given, iterates through all matched URIs.;FI"6Returns nil if block given or array with matches.;Fo; S;
;i;I"
Usage;Fo; o;;	[I"  ;FI"require "uri";FI"
;FI"
;FI"  ;FI"hURI.extract("text here http://foo.example.org/bla and here mailto:test@example.com and here also.");FI"
;FI"  ;FI"C# => ["http://foo.example.com/bla", "mailto:test@example.com"];F00[ I"!(str, schemes = nil, &block);F