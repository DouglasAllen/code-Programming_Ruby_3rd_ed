U:RDoc::AnyMethod[iI"[]:EFI"StringScanner#[];FF:publico:RDoc::Markup::Document:@parts[o:RDoc::Markup::Paragraph;	[I"7Return the n-th subgroup in the most recent match.;Fo:RDoc::Markup::BlankLine o:RDoc::Markup::Verbatim;	[I"  ;FI"3s = StringScanner.new("Fri Dec 12 1975 14:39");FI"
;FI"  ;FI":s.scan(/(\w+) (\w+) (\d+) /)       # -> "Fri Dec 12 ";FI"
;FI"  ;FI":s[0]                               # -> "Fri Dec 12 ";FI"
;FI"  ;FI"2s[1]                               # -> "Fri";FI"
;FI"  ;FI"2s[2]                               # -> "Dec";FI"
;FI"  ;FI"1s[3]                               # -> "12";FI"
;FI"  ;FI"9s.post_match                       # -> "1975 14:39";FI"
;FI"  ;FI"/s.pre_match                        # -> "";FI" [](n)
;F0[ I"	(p1);F