U:RDoc::AnyMethod[iI"concat:EFI"StringScanner#concat;FF:publico:RDoc::Markup::Document:@parts[o:RDoc::Markup::Paragraph;	[I"/Appends +str+ to the string being scanned.;FI".This method does not affect scan pointer.;Fo:RDoc::Markup::BlankLine o:RDoc::Markup::Verbatim;	[I"  ;FI"3s = StringScanner.new("Fri Dec 12 1975 14:39");FI"
;FI"  ;FI"s.scan(/Fri /);FI"
;FI"  ;FI"s << " +1000 GMT";FI"
;FI"  ;FI"?s.string            # -> "Fri Dec 12 1975 14:39 +1000 GMT";FI"
;FI"  ;FI"#s.scan(/Dec/)       # -> "Dec";FI"concat(str)
<<(str)
;F0[ I"	(p1);F