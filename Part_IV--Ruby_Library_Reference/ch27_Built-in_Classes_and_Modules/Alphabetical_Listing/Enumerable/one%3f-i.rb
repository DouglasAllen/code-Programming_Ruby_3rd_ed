U:RDoc::AnyMethod[iI"	one?:EFI"Enumerable#one?;FF:publico:RDoc::Markup::Document:@parts[o:RDoc::Markup::Paragraph;	[
I"IPasses each element of the collection to the given block. The method;FI"Ereturns <code>true</code> if the block returns <code>true</code>;FI"Kexactly once. If the block is not given, <code>one?</code> will return;FI"G<code>true</code> only if exactly one of the collection members is;FI"
true.;Fo:RDoc::Markup::BlankLine o:RDoc::Markup::Verbatim;	[I"   ;FI"?%w{ant bear cat}.one? {|word| word.length == 4}   #=> true;FI"
;FI"   ;FI"@%w{ant bear cat}.one? {|word| word.length > 4}    #=> false;FI"
;FI"   ;FI"@%w{ant bear cat}.one? {|word| word.length < 4}    #=> false;FI"
;FI"   ;FI"@[ nil, true, 99 ].one?                            #=> false;FI"
;FI"   ;FI"?[ nil, true, false ].one?                         #=> true;FI"3enum.one? [{|obj| block }]   -> true or false
;F0[ I"();F