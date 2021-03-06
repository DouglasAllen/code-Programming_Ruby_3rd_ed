U:RDoc::AnyMethod[iI"collect_concat:EFI"Enumerable#collect_concat;FF:publico:RDoc::Markup::Document:@parts[
o:RDoc::Markup::Paragraph;	[I"AReturns a new array with the concatenated results of running;FI":<em>block</em> once for every element in <i>enum</i>.;Fo:RDoc::Markup::BlankLine o;
;	[I"=If no block is given, an enumerator is returned instead.;Fo; o:RDoc::Markup::Verbatim;	[I"   ;FI"7[[1,2],[3,4]].flat_map {|i| i }   #=> [1, 2, 3, 4];FI" ;FI"�enum.flat_map       {| obj | block }  -> array
enum.collect_concat {| obj | block }  -> array
enum.flat_map                         -> an_enumerator
enum.collect_concat                   -> an_enumerator
;F0[ I"();F