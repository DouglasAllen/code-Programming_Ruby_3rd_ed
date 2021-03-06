U:RDoc::AnyMethod[iI"inspect:EFI"MatchData#inspect;FF:publico:RDoc::Markup::Document:@parts[o:RDoc::Markup::Paragraph;	[I"0Returns a printable version of <i>mtch</i>.;Fo:RDoc::Markup::BlankLine o:RDoc::Markup::Verbatim;	[I"	    ;FI"#puts /.$/.match("foo").inspect;FI"
;FI"	    ;FI"#=> #<MatchData "o">;FI"
;FI"
;FI"	    ;FI"*puts /(.)(.)(.)/.match("foo").inspect;FI"
;FI"	    ;FI"-#=> #<MatchData "foo" 1:"f" 2:"o" 3:"o">;FI"
;FI"
;FI"	    ;FI"*puts /(.)(.)?(.)/.match("fo").inspect;FI"
;FI"	    ;FI",#=> #<MatchData "fo" 1:"f" 2:nil 3:"o">;FI"
;FI"
;FI"	    ;FI"=puts /(?<foo>.)(?<bar>.)(?<baz>.)/.match("hoge").inspect;FI"
;FI"	    ;FI"3#=> #<MatchData "hog" foo:"h" bar:"o" baz:"g">;FI"mtch.inspect   -> str
;F0[ I"();F