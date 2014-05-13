U:RDoc::AnyMethod[iI"	scan:EFI"StringScanner#scan;FF:publico:RDoc::Markup::Document:@parts[o:RDoc::Markup::Paragraph;	[I"OTries to match with +pattern+ at the current position. If there's a match,;FI"Lthe scanner advances the "scan pointer" and returns the matched string.;FI"*Otherwise, the scanner returns +nil+.;Fo:RDoc::Markup::BlankLine o:RDoc::Markup::Verbatim;	[I"  ;FI")s = StringScanner.new('test string');FI"
;FI"  ;FI""p s.scan(/\w+/)   # -> "test";FI"
;FI"  ;FI"p s.scan(/\w+/)   # -> nil;FI"
;FI"  ;FI"p s.scan(/\s+/)   # -> " ";FI"
;FI"  ;FI"$p s.scan(/\w+/)   # -> "string";FI"
;FI"  ;FI"p s.scan(/./)     # -> nil;FI" scan(pattern) => String
;F0[ I"	(p1);F