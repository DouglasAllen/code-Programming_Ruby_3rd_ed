U:RDoc::AnyMethod[iI"	all?:EFI"Enumerable#all?;FF:publico:RDoc::Markup::Document:@parts[o:RDoc::Markup::Paragraph;	[I"IPasses each element of the collection to the given block. The method;FI"9returns <code>true</code> if the block never returns;FI"G<code>false</code> or <code>nil</code>. If the block is not given,;FI"ERuby adds an implicit block of <code>{|obj| obj}</code> (that is;FI"H<code>all?</code> will return <code>true</code> only if none of the;FI"Dcollection members are <code>false</code> or <code>nil</code>.);Fo:RDoc::Markup::BlankLine o:RDoc::Markup::Verbatim;	[I"   ;FI"?%w{ant bear cat}.all? {|word| word.length >= 3}   #=> true;FI"
;FI"   ;FI"@%w{ant bear cat}.all? {|word| word.length >= 4}   #=> false;FI"
;FI"   ;FI"@[ nil, true, 99 ].all?                            #=> false;FI"4enum.all? [{|obj| block } ]   -> true or false
;F0[ I"();F