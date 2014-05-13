U:RDoc::AnyMethod[iI"	loop:EFI"Kernel#loop;FF:publico:RDoc::Markup::Document:@parts[o:RDoc::Markup::Paragraph;	[I"#Repeatedly executes the block.;Fo:RDoc::Markup::BlankLine o;
;	[I"=If no block is given, an enumerator is returned instead.;Fo; o:RDoc::Markup::Verbatim;	[I"   ;FI"loop do;FI"
;FI"
     ;FI"print "Input: ";FI"
;FI"
     ;FI"line = gets;FI"
;FI"
     ;FI"$break if !line or line =~ /^qQ/;FI"
;FI"
     ;FI"
# ...;FI"
;FI"   ;FI"end;FI"
;Fo;
;	[I"7StopIteration raised in the block breaks the loop.;FI"5loop { block }
loop            -> an_enumerator
;F0[ I"();F