U:RDoc::AnyMethod[iI"seplist:EFI"PP::PPMethods#seplist;FF:publico:RDoc::Markup::Document:@parts[o:RDoc::Markup::Paragraph;	[I"Adds a separated list.;FI"EThe list is separated by comma with breakable space, by default.;Fo:RDoc::Markup::BlankLine o;
;	[I"6#seplist iterates the +list+ using +iter_method+.;FI";It yields each object to the block given for #seplist.;FI"BThe procedure +separator_proc+ is called between each yields.;Fo; o;
;	[I"KIf the iteration is zero times, +separator_proc+ is not called at all.;Fo; o;
;	[I"-If +separator_proc+ is nil or not given,;FI"*+lambda { comma_breakable }+ is used.;FI"2If +iter_method+ is not given, :each is used.;Fo; o;
;	[I"@For example, following 3 code fragments has similar effect.;Fo; o:RDoc::Markup::Verbatim;	[I"  ;FI"$q.seplist([1,2,3]) {|v| xxx v };FI"
;FI"
;FI"  ;FI"Iq.seplist([1,2,3], lambda { q.comma_breakable }, :each) {|v| xxx v };FI"
;FI"
;FI"  ;FI"
xxx 1;FI"
;FI"  ;FI"q.comma_breakable;FI"
;FI"  ;FI"
xxx 2;FI"
;FI"  ;FI"q.comma_breakable;FI"
;FI"  ;FI"
xxx 3;F0I"element;F[ I"'(list, sep=nil, iter_method=:each);F