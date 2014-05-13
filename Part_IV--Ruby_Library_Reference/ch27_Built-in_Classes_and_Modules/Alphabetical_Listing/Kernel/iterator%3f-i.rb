U:RDoc::AnyMethod[iI"iterator?:EFI"Kernel#iterator?;FF:publico:RDoc::Markup::Document:@parts[o:RDoc::Markup::Paragraph;	[I"DReturns <code>true</code> if <code>yield</code> would execute a;FI"Bblock in the current context. The <code>iterator?</code> form;FI"is mildly deprecated.;Fo:RDoc::Markup::BlankLine o:RDoc::Markup::Verbatim;	["I"   ;FI"def try;FI"
;FI"
     ;FI"if block_given?;FI"
;FI"       ;FI"
yield;FI"
;FI"
     ;FI"	else;FI"
;FI"       ;FI""no block";FI"
;FI"
     ;FI"end;FI"
;FI"   ;FI"end;FI"
;FI"   ;FI"(try                  #=> "no block";FI"
;FI"   ;FI"%try { "hello" }      #=> "hello";FI"
;FI"   ;FI"%try do "hello" end   #=> "hello";FI"Eblock_given?   -> true or false
iterator?      -> true or false
;F0[ I"();F