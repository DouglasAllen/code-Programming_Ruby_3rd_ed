U:RDoc::AnyMethod[iI"
check:EFI"StringScanner#check;FF:publico:RDoc::Markup::Document:@parts[	o:RDoc::Markup::Paragraph;	[I"OThis returns the value that #scan would return, without advancing the scan;FI"6pointer.  The match register is affected, though.;Fo:RDoc::Markup::BlankLine o:RDoc::Markup::Verbatim;	[I"  ;FI"3s = StringScanner.new("Fri Dec 12 1975 14:39");FI"
;FI"  ;FI"+s.check /Fri/               # -> "Fri";FI"
;FI"  ;FI"'s.pos                       # -> 0;FI"
;FI"  ;FI"+s.matched                   # -> "Fri";FI"
;FI"  ;FI")s.check /12/                # -> nil;FI"
;FI"  ;FI")s.matched                   # -> nil;FI"
;Fo;
;	[I"FMnemonic: it "checks" to see whether a #scan will return a value.;FI" check(pattern)
;F0[ I"	(p1);F