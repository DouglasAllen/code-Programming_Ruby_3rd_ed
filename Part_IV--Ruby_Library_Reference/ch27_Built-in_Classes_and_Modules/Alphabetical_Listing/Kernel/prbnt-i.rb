U:RDoc::AnyMethod[iI"
print:EFI"Kernel#print;FF:publico:RDoc::Markup::Document:@parts[o:RDoc::Markup::Paragraph;	[I"FPrints each object in turn to <code>$stdout</code>. If the output;FI"8field separator (<code>$,</code>) is not +nil+, its;FI"Bcontents will appear between each field. If the output record;FI":separator (<code>$\\</code>) is not +nil+, it will be;FI">appended to the output. If no arguments are given, prints;FI"F<code>$_</code>. Objects that aren't strings will be converted by;FI",calling their <code>to_s</code> method.;Fo:RDoc::Markup::BlankLine o:RDoc::Markup::Verbatim;	[I"   ;FI"#print "cat", [1,2,3], 99, "\n";FI"
;FI"   ;FI"$, = ", ";FI"
;FI"   ;FI"$\ = "\n";FI"
;FI"   ;FI"print "cat", [1,2,3], 99;FI"
;Fo;
;	[I"<em>produces:</em>;Fo; o;;	[
I"   ;FI"cat12399;FI"
;FI"   ;FI"cat, 1, 2, 3, 99;FI"print(obj, ...)    -> nil
;F0[ I"
(...);F