U:RDoc::AnyMethod[iI"
getch:EFI"StringScanner#getch;FF:publico:RDoc::Markup::Document:@parts[o:RDoc::Markup::Paragraph;	[I"(Scans one character and returns it.;FI"2This method is multibyte character sensitive.;Fo:RDoc::Markup::BlankLine o:RDoc::Markup::Verbatim;	[I"  ;FI" s = StringScanner.new("ab");FI"
;FI"  ;FI"s.getch           # => "a";FI"
;FI"  ;FI"s.getch           # => "b";FI"
;FI"  ;FI"s.getch           # => nil;FI"
;FI"
;FI"  ;FI"$KCODE = 'EUC';FI"
;FI"  ;FI"&s = StringScanner.new("\244\242");FI"
;FI"  ;FI"Ks.getch           # => "\244\242"   # Japanese hira-kana "A" in EUC-JP;FI"
;FI"  ;FI"s.getch           # => nil;F00[ I"();F