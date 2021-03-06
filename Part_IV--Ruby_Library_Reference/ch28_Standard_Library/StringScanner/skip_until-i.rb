U:RDoc::AnyMethod[iI"skip_until:EFI"StringScanner#skip_until;FF:publico:RDoc::Markup::Document:@parts[o:RDoc::Markup::Paragraph;	[I"PAdvances the scan pointer until +pattern+ is matched and consumed.  Returns;FI"Bthe number of bytes advanced, or +nil+ if no match was found.;Fo:RDoc::Markup::BlankLine o;
;	[I"MLook ahead to match +pattern+, and advance the scan pointer to the _end_;FI"Mof the match.  Return the number of characters advanced, or +nil+ if the;FI"match was unsuccessful.;Fo; o;
;	[I"OIt's similar to #scan_until, but without returning the intervening string.;Fo; o:RDoc::Markup::Verbatim;	[I"  ;FI"3s = StringScanner.new("Fri Dec 12 1975 14:39");FI"
;FI"  ;FI"(s.skip_until /12/           # -> 10;FI"
;FI"  ;FI""s                           #;FI" skip_until(pattern)
;F0[ I"	(p1);F