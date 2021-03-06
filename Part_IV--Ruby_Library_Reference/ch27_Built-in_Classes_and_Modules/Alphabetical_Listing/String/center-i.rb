U:RDoc::AnyMethod[iI"center:encoding"ISO-8859-1I"String#center:EFF:publico:RDoc::Markup::Document:@parts[o:RDoc::Markup::Paragraph;
[I"NIf <i>integer</i> is greater than the length of <i>str</i>, returns a new;@I"N<code>String</code> of length <i>integer</i> with <i>str</i> centered and;@I">padded with <i>padstr</i>; otherwise, returns <i>str</i>.;@o:RDoc::Markup::BlankLine o:RDoc::Markup::Verbatim;
[I"+"hello".center(4)         #=> "hello"
;FI":"hello".center(20)        #=> "       hello        "
;FI"9"hello".center(20, '123') #=> "1231231hello12312312";F:@format0:
@fileI"string.c;@I".str.center(integer, padstr)   -> new_str
;@0[ I"(*args);F@