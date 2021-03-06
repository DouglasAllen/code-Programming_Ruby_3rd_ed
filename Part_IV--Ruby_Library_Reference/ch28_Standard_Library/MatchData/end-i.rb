U:RDoc::AnyMethod[iI"end:EFI"MatchData#end;FF:publico:RDoc::Markup::Document:@parts[o:RDoc::Markup::Paragraph;	[I"MReturns the offset of the character immediately following the end of the;FI";<em>n</em>th element of the match array in the string.;FI"G<em>n</em> can be a string or symbol to reference a named capture.;Fo:RDoc::Markup::BlankLine o:RDoc::Markup::Verbatim;	[I"   ;FI",m = /(.)(.)(\d+)(\d)/.match("THX1138.");FI"
;FI"   ;FI"m.end(0)         #=> 7;FI"
;FI"   ;FI"m.end(2)         #=> 3;FI"
;FI"
;FI"   ;FI".m = /(?<foo>.)(.)(?<bar>.)/.match("hoge");FI"
;FI"   ;FI"p m.end(:foo)    #=> 1;FI"
;FI"   ;FI"p m.end(:bar)    #=> 3;FI"mtch.end(n)   -> integer
;F0[ I"	(p1);F