U:RDoc::AnyMethod[iI"	sort:EFI"Enumerable#sort;FF:publico:RDoc::Markup::Document:@parts[o:RDoc::Markup::Paragraph;	[I"AReturns an array containing the items in <i>enum</i> sorted,;FI"Geither according to their own <code><=></code> method, or by using;FI"Ithe results of the supplied block. The block should return -1, 0, or;FI"H+1 depending on the comparison between <i>a</i> and <i>b</i>. As of;FI"FRuby 1.8, the method <code>Enumerable#sort_by</code> implements a;FI"Cbuilt-in Schwartzian Transform, useful when key computation or;FI"comparison is expensive.;Fo:RDoc::Markup::BlankLine o:RDoc::Markup::Verbatim;	[
I"   ;FI"?%w(rhea kea flea).sort         #=> ["flea", "kea", "rhea"];FI"
;FI"   ;FI"G(1..10).sort {|a,b| b <=> a}   #=> [10, 9, 8, 7, 6, 5, 4, 3, 2, 1];FI"Senum.sort                     -> array
enum.sort {| a, b | block }   -> array
;F0[ I"();F