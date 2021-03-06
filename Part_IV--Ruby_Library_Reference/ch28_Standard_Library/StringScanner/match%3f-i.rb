U:RDoc::AnyMethod[iI"match?:EFI"StringScanner#match?;FF:publico:RDoc::Markup::Document:@parts[o:RDoc::Markup::Paragraph;	[I"PTests whether the given +pattern+ is matched from the current scan pointer.;FI"RReturns the length of the match, or +nil+.  The scan pointer is not advanced.;Fo:RDoc::Markup::BlankLine o:RDoc::Markup::Verbatim;	[I"  ;FI")s = StringScanner.new('test string');FI"
;FI"  ;FI"p s.match?(/\w+/)   # -> 4;FI"
;FI"  ;FI"p s.match?(/\w+/)   # -> 4;FI"
;FI"  ;FI"!p s.match?(/\s+/)   # -> nil;FI" match?(pattern)
;F0[ I"	(p1);F