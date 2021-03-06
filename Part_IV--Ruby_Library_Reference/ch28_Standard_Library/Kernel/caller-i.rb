U:RDoc::AnyMethod[iI"caller:EFI"Kernel#caller;FF:publico:RDoc::Markup::Document:@parts[
o:RDoc::Markup::Paragraph;	[
I"IReturns the current execution stack---an array containing strings in;FI";the form ``<em>file:line</em>'' or ``<em>file:line: in;FI"4`method'</em>''. The optional _start_ parameter;FI"Ddetermines the number of initial stack entries to omit from the;FI"result.;Fo:RDoc::Markup::BlankLine o;
;	[I"9Returns +nil+ if _start_ is greater than the size of;FI"current execution stack.;Fo; o:RDoc::Markup::Verbatim;	[1I"   ;FI"def a(skip);FI"
;FI"
     ;FI"caller(skip);FI"
;FI"   ;FI"end;FI"
;FI"   ;FI"def b(skip);FI"
;FI"
     ;FI"a(skip);FI"
;FI"   ;FI"end;FI"
;FI"   ;FI"def c(skip);FI"
;FI"
     ;FI"b(skip);FI"
;FI"   ;FI"end;FI"
;FI"   ;FI"Zc(0)   #=> ["prog:2:in `a'", "prog:5:in `b'", "prog:8:in `c'", "prog:10:in `<main>'"];FI"
;FI"   ;FI"Ic(1)   #=> ["prog:5:in `b'", "prog:8:in `c'", "prog:11:in `<main>'"];FI"
;FI"   ;FI"8c(2)   #=> ["prog:8:in `c'", "prog:12:in `<main>'"];FI"
;FI"   ;FI"'c(3)   #=> ["prog:13:in `<main>'"];FI"
;FI"   ;FI"c(4)   #=> [];FI"
;FI"   ;FI"c(5)   #=> nil;FI"(caller(start=1)    -> array or nil
;F0[ I"
(...);F