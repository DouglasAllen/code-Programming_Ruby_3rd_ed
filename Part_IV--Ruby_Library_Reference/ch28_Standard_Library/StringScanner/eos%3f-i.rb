U:RDoc::AnyMethod[iI"	eos?:EFI"StringScanner#eos?;FF:publico:RDoc::Markup::Document:@parts[o:RDoc::Markup::Paragraph;	[I"DReturns +true+ if the scan pointer is at the end of the string.;Fo:RDoc::Markup::BlankLine o:RDoc::Markup::Verbatim;	[I"  ;FI")s = StringScanner.new('test string');FI"
;FI"  ;FI"!p s.eos?          # => false;FI"
;FI"  ;FI"s.scan(/test/);FI"
;FI"  ;FI"!p s.eos?          # => false;FI"
;FI"  ;FI"s.terminate;FI"
;FI"  ;FI" p s.eos?          # => true;F00[ I"();F