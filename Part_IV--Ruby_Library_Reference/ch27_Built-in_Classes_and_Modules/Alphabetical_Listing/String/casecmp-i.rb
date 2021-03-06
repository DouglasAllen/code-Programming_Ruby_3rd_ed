U:RDoc::AnyMethod[iI"casecmp:encoding"ISO-8859-1I"String#casecmp:EFF:publico:RDoc::Markup::Document:@parts[o:RDoc::Markup::Paragraph;
[I"9Case-insensitive version of <code>String#<=></code>.;@o:RDoc::Markup::BlankLine o:RDoc::Markup::Verbatim;
[	I")"abcdef".casecmp("abcde")     #=> 1
;FI")"aBcDeF".casecmp("abcdef")    #=> 0
;FI"*"abcdef".casecmp("abcdefg")   #=> -1
;FI"("abcdef".casecmp("ABCDEF")    #=> 0;F:@format0:
@fileI"string.c;@I"2str.casecmp(other_str)   -> -1, 0, +1 or nil
;@0[ I"	(p1);F@