U:RDoc::AnyMethod[iI"	to_a:EFI"MatchData#to_a;FF:publico:RDoc::Markup::Document:@parts[o:RDoc::Markup::Paragraph;	[I""Returns the array of matches.;Fo:RDoc::Markup::BlankLine o:RDoc::Markup::Verbatim;	[I"   ;FI",m = /(.)(.)(\d+)(\d)/.match("THX1138.");FI"
;FI"   ;FI"2m.to_a   #=> ["HX1138", "H", "X", "113", "8"];FI"
;Fo;
;	[
I"7Because <code>to_a</code> is called when expanding;FI"A<code>*</code><em>variable</em>, there's a useful assignment;FI"Ishortcut for extracting matched fields. This is slightly slower than;FI"?accessing the fields directly (as an intermediate array is;FI"generated).;Fo; o;;	[I"   ;FI":all,f1,f2,f3 = *(/(.)(.)(\d+)(\d)/.match("THX1138."));FI"
;FI"   ;FI"all   #=> "HX1138";FI"
;FI"   ;FI"f1    #=> "H";FI"
;FI"   ;FI"f2    #=> "X";FI"
;FI"   ;FI"f3    #=> "113";FI"mtch.to_a   -> anArray
;F0[ I"();F