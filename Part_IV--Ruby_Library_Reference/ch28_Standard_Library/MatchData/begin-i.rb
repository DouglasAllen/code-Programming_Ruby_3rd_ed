U:RDoc::AnyMethod[iI"
begin:EFI"MatchData#begin;FF:publico:RDoc::Markup::Document:@parts[o:RDoc::Markup::Paragraph;	[I"MReturns the offset of the start of the <em>n</em>th element of the match;FI"array in the string.;FI"G<em>n</em> can be a string or symbol to reference a named capture.;Fo:RDoc::Markup::BlankLine o:RDoc::Markup::Verbatim;	[I"   ;FI",m = /(.)(.)(\d+)(\d)/.match("THX1138.");FI"
;FI"   ;FI"m.begin(0)       #=> 1;FI"
;FI"   ;FI"m.begin(2)       #=> 2;FI"
;FI"
;FI"   ;FI".m = /(?<foo>.)(.)(?<bar>.)/.match("hoge");FI"
;FI"   ;FI"p m.begin(:foo)  #=> 0;FI"
;FI"   ;FI"p m.begin(:bar)  #=> 2;FI" mtch.begin(n)   -> integer
;F0[ I"	(p1);F