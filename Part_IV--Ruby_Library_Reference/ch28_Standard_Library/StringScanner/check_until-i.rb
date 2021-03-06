U:RDoc::AnyMethod[iI"check_until:EFI"StringScanner#check_until;FF:publico:RDoc::Markup::Document:@parts[	o:RDoc::Markup::Paragraph;	[I"PThis returns the value that #scan_until would return, without advancing the;FI";scan pointer.  The match register is affected, though.;Fo:RDoc::Markup::BlankLine o:RDoc::Markup::Verbatim;	[I"  ;FI"3s = StringScanner.new("Fri Dec 12 1975 14:39");FI"
;FI"  ;FI"2s.check_until /12/          # -> "Fri Dec 12";FI"
;FI"  ;FI"'s.pos                       # -> 0;FI"
;FI"  ;FI"(s.matched                   # -> 12;FI"
;Fo;
;	[I"LMnemonic: it "checks" to see whether a #scan_until will return a value.;FI" check_until(pattern)
;F0[ I"	(p1);F