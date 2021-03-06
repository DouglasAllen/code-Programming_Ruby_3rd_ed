U:RDoc::AnyMethod[iI"minmax:EFI"Enumerable#minmax;FF:publico:RDoc::Markup::Document:@parts[o:RDoc::Markup::Paragraph;	[	I"BReturns two elements array which contains the minimum and the;FI"Amaximum value in the enumerable.  The first form assumes all;FI"Cobjects implement <code>Comparable</code>; the second uses the;FI"&block to return <em>a <=> b</em>.;Fo:RDoc::Markup::BlankLine o:RDoc::Markup::Verbatim;	[I"   ;FI" a = %w(albatross dog horse);FI"
;FI"   ;FI"Ia.minmax                                  #=> ["albatross", "horse"];FI"
;FI"   ;FI"Ga.minmax {|a,b| a.length <=> b.length }   #=> ["dog", "albatross"];FI"[enum.minmax                   -> [min,max]
enum.minmax {|a,b| block }    -> [min,max]
;F0[ I"();F