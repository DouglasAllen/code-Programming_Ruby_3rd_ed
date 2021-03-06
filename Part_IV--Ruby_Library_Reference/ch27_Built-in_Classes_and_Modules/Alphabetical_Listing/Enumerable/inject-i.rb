U:RDoc::AnyMethod[iI"inject:EFI"Enumerable#inject;FF:publico:RDoc::Markup::Document:@parts[o:RDoc::Markup::Verbatim;	[I"   ;FI"%enum.reduce(initial, sym) -> obj;FI"
;FI"   ;FI"%enum.reduce(sym)          -> obj;FI"
;FI"   ;FI"8enum.reduce(initial) {| memo, obj | block }  -> obj;FI"
;FI"   ;FI"8enum.reduce          {| memo, obj | block }  -> obj;FI"
;Fo:RDoc::Markup::Paragraph;	[I">Combines all elements of <i>enum</i> by applying a binary;FI"=operation, specified by a block or a symbol that names a;FI"method or operator.;Fo:RDoc::Markup::BlankLine o;;	[I"AIf you specify a block, then for each element in <i>enum</i>;FI"Lthe block is passed an accumulator value (<i>memo</i>) and the element.;FI"IIf you specify a symbol instead, then each element in the collection;FI"7will be passed to the named method of <i>memo</i>.;FI"FIn either case, the result becomes the new value for <i>memo</i>.;FI"GAt the end of the iteration, the final value of <i>memo</i> is the;FI" return value fo the method.;Fo; o;;	[I"NIf you do not explicitly specify an <i>initial</i> value for <i>memo</i>,;FI"Kthen uses the first element of collection is used as the initial value;FI"of <i>memo</i>.;Fo; o;;	[I"Examples:;Fo; o;
;	[+I"   ;FI"# Sum some numbers;FI"
;FI"   ;FI"9(5..10).reduce(:+)                            #=> 45;FI"
;FI"   ;FI"$# Same using a block and inject;FI"
;FI"   ;FI"9(5..10).inject {|sum, n| sum + n }            #=> 45;FI"
;FI"   ;FI"# Multiply some numbers;FI"
;FI"   ;FI"=(5..10).reduce(1, :*)                         #=> 151200;FI"
;FI"   ;FI"# Same using a block;FI"
;FI"   ;FI"=(5..10).inject(1) {|product, n| product * n } #=> 151200;FI"
;FI"   ;FI"# find the longest word;FI"
;FI"   ;FI"9longest = %w{ cat sheep bear }.inject do |memo,word|;FI"
;FI"      ;FI",memo.length > word.length ? memo : word;FI"
;FI"   ;FI"end;FI"
;FI"   ;FI">longest                                       #=> "sheep";FI"�enum.inject(initial, sym) -> obj
enum.inject(sym)          -> obj
enum.inject(initial) {| memo, obj | block }  -> obj
enum.inject          {| memo, obj | block }  -> obj
;F0[ I"
(...);F