U:RDoc::AnyMethod[iI"
split:encoding"ISO-8859-1I"String#split:EFF:publico:RDoc::Markup::Document:@parts[o:RDoc::Markup::Paragraph;
[I"PDivides <i>str</i> into substrings based on a delimiter, returning an array;@I"of these substrings.;@o:RDoc::Markup::BlankLine o;;
[	I"NIf <i>pattern</i> is a <code>String</code>, then its contents are used as;@I"Kthe delimiter when splitting <i>str</i>. If <i>pattern</i> is a single;@I"Ospace, <i>str</i> is split on whitespace, with leading whitespace and runs;@I"1of contiguous whitespace characters ignored.;@@o;;
[	I"PIf <i>pattern</i> is a <code>Regexp</code>, <i>str</i> is divided where the;@I"Hpattern matches. Whenever the pattern matches a zero-length string,;@I"O<i>str</i> is split into individual characters. If <i>pattern</i> contains;@I"Jgroups, the respective matches will be returned in the array as well.;@@o;;
[I"LIf <i>pattern</i> is omitted, the value of <code>$;</code> is used.  If;@I"N<code>$;</code> is <code>nil</code> (which is the default), <i>str</i> is;@I"2split on whitespace as if ` ' were specified.;@@o;;
[I"GIf the <i>limit</i> parameter is omitted, trailing null fields are;@I"Msuppressed. If <i>limit</i> is a positive number, at most that number of;@I"Kfields will be returned (if <i>limit</i> is <code>1</code>, the entire;@I"Pstring is returned as the only entry in an array). If negative, there is no;@I"Mlimit to the number of fields returned, and trailing null fields are not;@I"suppressed.;@@o:RDoc::Markup::Verbatim;
[I"B" now's  the time".split        #=> ["now's", "the", "time"]
;FI"B" now's  the time".split(' ')   #=> ["now's", "the", "time"]
;FI"J" now's  the time".split(/ /)   #=> ["", "now's", "", "the", "time"]
;FI"B"1, 2.34,56, 7".split(%r{,\s*}) #=> ["1", "2.34", "56", "7"]
;FI"C"hello".split(//)               #=> ["h", "e", "l", "l", "o"]
;FI";"hello".split(//, 3)            #=> ["h", "e", "llo"]
;FI"C"hi mom".split(%r{\s*})         #=> ["h", "i", "m", "o", "m"]
;FI"
;FI";"mellow yellow".split("ello")   #=> ["m", "w y", "w"]
;FI"B"1,2,,3,4,,".split(',')         #=> ["1", "2", "", "3", "4"]
;FI"A"1,2,,3,4,,".split(',', 4)      #=> ["1", "2", "", "3,4,,"]
;FI"I"1,2,,3,4,,".split(',', -4)     #=> ["1", "2", "", "3", "4", "", ""];F:@format0:
@fileI"string.c;@I"1str.split(pattern=$;, [limit])   -> anArray
;@0[ I"(p1 = v1, p2 = v2);F@8