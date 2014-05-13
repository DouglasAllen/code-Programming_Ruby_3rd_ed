U:RDoc::AnyMethod[iI"each_with_object:EFI" Enumerable#each_with_object;FF:publico:RDoc::Markup::Document:@parts[o:RDoc::Markup::Paragraph;	[I"@Iterates the given block for each element with an arbitrary;FI":object given, and returns the initially given object.;Fo:RDoc::Markup::BlankLine o;
;	[I"1If no block is given, returns an enumerator.;Fo; o;
;	[I"
e.g.:;Fo:RDoc::Markup::Verbatim;	[
I"	    ;FI"<evens = (1..10).each_with_object([]) {|i, a| a << i*2 };FI"
;FI"	    ;FI"-#=> [2, 4, 6, 8, 10, 12, 14, 16, 18, 20];FI"�enum.each_with_object(obj) {|(*args), memo_obj| ... }  ->  obj
enum.each_with_object(obj)                             ->  an_enumerator
;F0[ I"	(p1);F