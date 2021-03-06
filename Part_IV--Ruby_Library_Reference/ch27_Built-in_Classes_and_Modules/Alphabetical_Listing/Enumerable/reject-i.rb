U:RDoc::AnyMethod[iI"reject:EFI"Enumerable#reject;FF:publico:RDoc::Markup::Document:@parts[
o:RDoc::Markup::Paragraph;	[I"?Returns an array for all elements of <i>enum</i> for which;FI"I<em>block</em> is false (see also <code>Enumerable#find_all</code>).;Fo:RDoc::Markup::BlankLine o;
;	[I"=If no block is given, an enumerator is returned instead.;Fo; o:RDoc::Markup::Verbatim;	[I"   ;FI"C(1..10).reject {|i|  i % 3 == 0 }   #=> [1, 2, 4, 5, 7, 8, 10];FI"[enum.reject {| obj | block }  -> array
enum.reject                   -> an_enumerator
;F0[ I"();F