U:RDoc::AnyMethod[iI"exist?:EFI"StringScanner#exist?;FF:publico:RDoc::Markup::Document:@parts[o:RDoc::Markup::Paragraph;	[I"KLooks _ahead_ to see if the +pattern+ exists _anywhere_ in the string,;FI"Owithout advancing the scan pointer.  This predicates whether a #scan_until;FI"will return a value.;Fo:RDoc::Markup::BlankLine o:RDoc::Markup::Verbatim;	[I"  ;FI")s = StringScanner.new('test string');FI"
;FI"  ;FI"#s.exist? /s/            # -> 3;FI"
;FI"  ;FI"(s.scan /test/           # -> "test";FI"
;FI"  ;FI"#s.exist? /s/            # -> 2;FI"
;FI"  ;FI"%s.exist? /e/            # -> nil;FI" exist?(pattern)
;F0[ I"	(p1);F