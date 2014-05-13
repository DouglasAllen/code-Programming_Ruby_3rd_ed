U:RDoc::AnyMethod[iI"matched_size:EFI"StringScanner#matched_size;FF:publico:RDoc::Markup::Document:@parts[o:RDoc::Markup::Paragraph;	[I"PReturns the size of the most recent match (see #matched), or +nil+ if there;FI"was no recent match.;Fo:RDoc::Markup::BlankLine o:RDoc::Markup::Verbatim;	[I"  ;FI")s = StringScanner.new('test string');FI"
;FI"  ;FI"(s.check /\w+/           # -> "test";FI"
;FI"  ;FI"#s.matched_size          # -> 4;FI"
;FI"  ;FI"%s.check /\d+/           # -> nil;FI"
;FI"  ;FI"%s.matched_size          # -> nil;F00[ I"();F