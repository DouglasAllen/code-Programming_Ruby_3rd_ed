U:RDoc::AnyMethod[iI"take_while:EFI"Enumerable#take_while;FF:publico:RDoc::Markup::Document:@parts[
o:RDoc::Markup::Paragraph;	[I"KPasses elements to the block until the block returns +nil+ or +false+,;FI"Ethen stops iterating and returns an array of all prior elements.;Fo:RDoc::Markup::BlankLine o;
;	[I"=If no block is given, an enumerator is returned instead.;Fo; o:RDoc::Markup::Verbatim;	[
I"   ;FI"a = [1, 2, 3, 4, 5, 0];FI"
;FI"   ;FI"+a.take_while {|i| i < 3 }   #=> [1, 2];FI"aenum.take_while {|arr| block }   -> array
enum.take_while                  -> an_enumerator
;F0[ I"();F