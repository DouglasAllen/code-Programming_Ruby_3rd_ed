U:RDoc::AnyMethod[iI"minmax_by:EFI"Enumerable#minmax_by;FF:publico:RDoc::Markup::Document:@parts[
o:RDoc::Markup::Paragraph;	[I"?Returns two elements array array containing the objects in;FI"G<i>enum</i> that gives the minimum and maximum values respectively;FI"from the given block.;Fo:RDoc::Markup::BlankLine o;
;	[I"=If no block is given, an enumerator is returned instead.;Fo; o:RDoc::Markup::Verbatim;	[
I"   ;FI" a = %w(albatross dog horse);FI"
;FI"   ;FI";a.minmax_by {|x| x.length }   #=> ["dog", "albatross"];FI"denum.minmax_by {|obj| block }   -> [min, max]
enum.minmax_by                  -> an_enumerator
;F0[ I"();F