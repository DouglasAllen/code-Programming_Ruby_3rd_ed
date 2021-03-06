U:RDoc::AnyMethod[iI"drop_while:EFI"Enumerable#drop_while;FF:publico:RDoc::Markup::Document:@parts[
o:RDoc::Markup::Paragraph;	[I"CDrops elements up to, but not including, the first element for;FI"Bwhich the block returns +nil+ or +false+ and returns an array;FI"'containing the remaining elements.;Fo:RDoc::Markup::BlankLine o;
;	[I"=If no block is given, an enumerator is returned instead.;Fo; o:RDoc::Markup::Verbatim;	[
I"   ;FI"a = [1, 2, 3, 4, 5, 0];FI"
;FI"   ;FI"1a.drop_while {|i| i < 3 }   #=> [3, 4, 5, 0];FI"aenum.drop_while {|arr| block }   -> array
enum.drop_while                  -> an_enumerator
;F0[ I"();F