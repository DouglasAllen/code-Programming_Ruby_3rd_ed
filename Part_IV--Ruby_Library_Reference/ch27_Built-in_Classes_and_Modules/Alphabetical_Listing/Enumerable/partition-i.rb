U:RDoc::AnyMethod[iI"partition:EFI"Enumerable#partition;FF:publico:RDoc::Markup::Document:@parts[
o:RDoc::Markup::Paragraph;	[I"=Returns two arrays, the first containing the elements of;FI"B<i>enum</i> for which the block evaluates to true, the second;FI"containing the rest.;Fo:RDoc::Markup::BlankLine o;
;	[I"=If no block is given, an enumerator is returned instead.;Fo; o:RDoc::Markup::Verbatim;	[I"   ;FI"D(1..6).partition {|i| (i&1).zero?}   #=> [[2, 4, 6], [1, 3, 5]];FI"wenum.partition {| obj | block }  -> [ true_array, false_array ]
enum.partition                   -> an_enumerator
;F0[ I"();F