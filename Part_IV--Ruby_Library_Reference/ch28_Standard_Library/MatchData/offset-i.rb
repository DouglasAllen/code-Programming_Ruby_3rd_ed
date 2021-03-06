U:RDoc::AnyMethod[iI"offset:EFI"MatchData#offset;FF:publico:RDoc::Markup::Document:@parts[o:RDoc::Markup::Paragraph;	[I"OReturns a two-element array containing the beginning and ending offsets of;FI"the <em>n</em>th match.;FI"G<em>n</em> can be a string or symbol to reference a named capture.;Fo:RDoc::Markup::BlankLine o:RDoc::Markup::Verbatim;	[I"   ;FI",m = /(.)(.)(\d+)(\d)/.match("THX1138.");FI"
;FI"   ;FI" m.offset(0)      #=> [1, 7];FI"
;FI"   ;FI" m.offset(4)      #=> [6, 7];FI"
;FI"
;FI"   ;FI".m = /(?<foo>.)(.)(?<bar>.)/.match("hoge");FI"
;FI"   ;FI" p m.offset(:foo) #=> [0, 1];FI"
;FI"   ;FI" p m.offset(:bar) #=> [2, 3];FI"mtch.offset(n)   -> array
;F0[ I"	(p1);F