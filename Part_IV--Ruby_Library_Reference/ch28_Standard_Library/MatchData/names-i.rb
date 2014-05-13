U:RDoc::AnyMethod[iI"
names:EFI"MatchData#names;FF:publico:RDoc::Markup::Document:@parts[o:RDoc::Markup::Paragraph;	[I"@Returns a list of names of captures as an array of strings.;FI"%It is same as mtch.regexp.names.;Fo:RDoc::Markup::BlankLine o:RDoc::Markup::Verbatim;	[I"	    ;FI"6/(?<foo>.)(?<bar>.)(?<baz>.)/.match("hoge").names;FI"
;FI"	    ;FI"#=> ["foo", "bar", "baz"];FI"
;FI"
;FI"	    ;FI"Fm = /(?<x>.)(?<y>.)?/.match("a") #=> #<MatchData "a" x:"a" y:nil>;FI"
;FI"	    ;FI"4m.names                          #=> ["x", "y"];FI")mtch.names   -> [name1, name2, ...]
;F0[ I"();F