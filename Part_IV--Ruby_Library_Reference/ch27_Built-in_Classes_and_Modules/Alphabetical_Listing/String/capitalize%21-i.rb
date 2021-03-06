U:RDoc::AnyMethod[iI"capitalize!:encoding"ISO-8859-1I"String#capitalize!:EFF:publico:RDoc::Markup::Document:@parts[o:RDoc::Markup::Paragraph;
[I"OModifies <i>str</i> by converting the first character to uppercase and the;@I"Mremainder to lowercase. Returns <code>nil</code> if no changes are made.;@I"=Note: case conversion is effective only in ASCII region.;@o:RDoc::Markup::BlankLine o:RDoc::Markup::Verbatim;
[	I"a = "hello"
;FI"!a.capitalize!   #=> "Hello"
;FI"!a               #=> "Hello"
;FI"a.capitalize!   #=> nil;F:@format0:
@fileI"string.c;@I"%str.capitalize!   -> str or nil
;@0[ I"();F@