U:RDoc::AnyMethod[iI"min:EFI"Enumerable#min;FF:publico:RDoc::Markup::Document:@parts[o:RDoc::Markup::Paragraph;	[I"BReturns the object in <i>enum</i> with the minimum value. The;FI"Ffirst form assumes all objects implement <code>Comparable</code>;;FI":the second uses the block to return <em>a <=> b</em>.;Fo:RDoc::Markup::BlankLine o:RDoc::Markup::Verbatim;	[I"   ;FI" a = %w(albatross dog horse);FI"
;FI"   ;FI";a.min                                  #=> "albatross";FI"
;FI"   ;FI"5a.min {|a,b| a.length <=> b.length }   #=> "dog";FI"Kenum.min                    -> obj
enum.min {| a,b | block }   -> obj
;F0[ I"();F