U:RDoc::AnyMethod[iI"values_at:EFI"MatchData#values_at;FF:publico:RDoc::Markup::Document:@parts[	o:RDoc::Markup::Verbatim;	[I"   ;FI"(mtch.values_at([index]*)   -> array;FI"
;Fo:RDoc::Markup::Paragraph;	[I"PUses each <i>index</i> to access the matching values, returning an array of;FI"the corresponding matches.;Fo:RDoc::Markup::BlankLine o;
;	[I"   ;FI"6m = /(.)(.)(\d+)(\d)/.match("THX1138: The Movie");FI"
;FI"   ;FI">m.to_a               #=> ["HX1138", "H", "X", "113", "8"];FI"
;FI"   ;FI"7m.values_at(0, 2, -2)   #=> ["HX1138", "X", "113"];FI"
;F0[ I"
(...);F