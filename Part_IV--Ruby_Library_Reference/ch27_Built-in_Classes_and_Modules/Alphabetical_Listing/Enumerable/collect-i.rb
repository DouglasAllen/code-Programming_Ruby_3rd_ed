U:RDoc::AnyMethod[iI"collect:EFI"Enumerable#collect;FF:publico:RDoc::Markup::Document:@parts[
o:RDoc::Markup::Paragraph;	[I"HReturns a new array with the results of running <em>block</em> once;FI"&for every element in <i>enum</i>.;Fo:RDoc::Markup::BlankLine o;
;	[I"=If no block is given, an enumerator is returned instead.;Fo; o:RDoc::Markup::Verbatim;	[
I"   ;FI"2(1..4).collect {|i| i*i }   #=> [1, 4, 9, 16];FI"
;FI"   ;FI"A(1..4).collect { "cat"  }   #=> ["cat", "cat", "cat", "cat"];FI"�enum.collect {| obj | block }  -> array
enum.map     {| obj | block }  -> array
enum.collect                   -> an_enumerator
enum.map                       -> an_enumerator
;F0[ I"();F