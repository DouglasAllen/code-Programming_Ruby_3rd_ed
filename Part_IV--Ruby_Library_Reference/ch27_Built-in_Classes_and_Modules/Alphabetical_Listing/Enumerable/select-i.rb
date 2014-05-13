U:RDoc::AnyMethod[iI"select:EFI"Enumerable#select;FF:publico:RDoc::Markup::Document:@parts[
o:RDoc::Markup::Paragraph;	[I"FReturns an array containing all elements of <i>enum</i> for which;FI"7<em>block</em> is not <code>false</code> (see also;FI"%<code>Enumerable#reject</code>).;Fo:RDoc::Markup::BlankLine o;
;	[I"=If no block is given, an enumerator is returned instead.;Fo; o:RDoc::Markup::Verbatim;	[I"   ;FI"8(1..10).find_all {|i|  i % 3 == 0 }   #=> [3, 6, 9];FI"�enum.find_all {| obj | block }  -> array
enum.select   {| obj | block }  -> array
enum.find_all                   -> an_enumerator
enum.select                     -> an_enumerator
;F0[ I"();F