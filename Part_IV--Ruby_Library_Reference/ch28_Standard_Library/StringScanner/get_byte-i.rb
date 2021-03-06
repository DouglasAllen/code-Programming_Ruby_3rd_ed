U:RDoc::AnyMethod[iI"get_byte:EFI"StringScanner#get_byte;FF:publico:RDoc::Markup::Document:@parts[o:RDoc::Markup::Paragraph;	[I"#Scans one byte and returns it.;FI"6This method is not multibyte character sensitive.;FI"See also: #getch.;Fo:RDoc::Markup::BlankLine o:RDoc::Markup::Verbatim;	[ I"  ;FI" s = StringScanner.new('ab');FI"
;FI"  ;FI" s.get_byte         # => "a";FI"
;FI"  ;FI" s.get_byte         # => "b";FI"
;FI"  ;FI" s.get_byte         # => nil;FI"
;FI"
;FI"  ;FI"$KCODE = 'EUC';FI"
;FI"  ;FI"&s = StringScanner.new("\244\242");FI"
;FI"  ;FI"#s.get_byte         # => "\244";FI"
;FI"  ;FI"#s.get_byte         # => "\242";FI"
;FI"  ;FI" s.get_byte         # => nil;F00[ I"();F