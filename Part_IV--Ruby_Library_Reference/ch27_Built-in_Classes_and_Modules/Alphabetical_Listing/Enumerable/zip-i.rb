U:RDoc::AnyMethod[iI"zip:EFI"Enumerable#zip;FF:publico:RDoc::Markup::Document:@parts[o:RDoc::Markup::Paragraph;	[I"@Takes one element from <i>enum</i> and merges corresponding;FI"Belements from each <i>args</i>.  This generates a sequence of;FI"E<em>n</em>-element arrays, where <em>n</em> is one more than the;FI"Fcount of arguments.  The length of the resulting sequence will be;FI"F<code>enum#size</code>.  If the size of any argument is less than;FI"E<code>enum#size</code>, <code>nil</code> values are supplied. If;FI"Ea block is given, it is invoked for each output array, otherwise;FI"$an array of arrays is returned.;Fo:RDoc::Markup::BlankLine o:RDoc::Markup::Verbatim;	[I"   ;FI"a = [ 4, 5, 6 ];FI"
;FI"   ;FI"b = [ 7, 8, 9 ];FI"
;FI"
;FI"   ;FI"A[1,2,3].zip(a, b)      #=> [[1, 4, 7], [2, 5, 8], [3, 6, 9]];FI" ;FI"
;FI"   ;FI"6[1,2].zip(a,b)         #=> [[1, 4, 7], [2, 5, 8]];FI" ;FI"
;FI"   ;FI"Ga.zip([1,2],[8])       #=> [[4, 1, 8], [5, 2, nil], [6, nil, nil]];FI"kenum.zip(arg, ...)                   -> an_array_of_array
enum.zip(arg, ...) {|arr| block }    -> nil
;F0[ I"
(...);F