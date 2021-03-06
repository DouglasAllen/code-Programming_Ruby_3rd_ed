U:RDoc::AnyMethod[iI"byteslice:encoding"ISO-8859-1I"String#byteslice:EFF:publico:RDoc::Markup::Document:@parts[o:RDoc::Markup::Paragraph;
[I"GByte Reference---If passed a single <code>Fixnum</code>, returns a;@I"Nsubstring of one byte at that position. If passed two <code>Fixnum</code>;@I"Pobjects, returns a substring starting at the offset given by the first, and;@I"Xa length given by the second. If given a <code>Range</code>, a substring containing;@I"Lbytes at offsets given by the range is returned. In all three cases, if;@I"Man offset is negative, it is counted from the end of <i>str</i>. Returns;@I"P<code>nil</code> if the initial offset falls outside the string, the length;@I"His negative, or the beginning of the range is greater than the end.;@I"AThe encoding of the resulted string keeps original encoding.;@o:RDoc::Markup::BlankLine o:RDoc::Markup::Verbatim;
[
I"&"hello".byteslice(1)     #=> "e"
;FI"&"hello".byteslice(-1)    #=> "o"
;FI"'"hello".byteslice(1, 2)  #=> "el"
;FI"/"\x80\u3042".byteslice(1, 3) #=> "\u3042"
;FI"2"\x03\u3042\xff".byteslice(1..3) #=> "\u3942";F:@format0:
@fileI"string.c;@I"�str.byteslice(fixnum)           -> new_str or nil
str.byteslice(fixnum, fixnum)   -> new_str or nil
str.byteslice(range)            -> new_str or nil
;@0[ I"(*args);F@