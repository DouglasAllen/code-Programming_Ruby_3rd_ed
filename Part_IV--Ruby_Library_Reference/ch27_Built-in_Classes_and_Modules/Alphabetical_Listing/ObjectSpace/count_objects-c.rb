U:RDoc::AnyMethod[iI"count_objects:EFI"ObjectSpace::count_objects;FT:publico:RDoc::Markup::Document:@parts[o:RDoc::Markup::Paragraph;	[I""Counts objects for each type.;Fo:RDoc::Markup::BlankLine o;
;	[I"It returns a hash as:;FI"C{:TOTAL=>10000, :FREE=>3011, :T_OBJECT=>6, :T_CLASS=>404, ...};Fo; o;
;	[I"5If the optional argument, result_hash, is given,;FI"$it is overwritten and returned.;FI",This is intended to avoid probe effect.;Fo; o;
;	[I"AThe contents of the returned hash is implementation defined.;FI"!It may be changed in future.;Fo; o;
;	[I"7This method is not expected to work except C Ruby.;FI"6ObjectSpace.count_objects([result_hash]) -> hash
;F0[ I"
(...);F