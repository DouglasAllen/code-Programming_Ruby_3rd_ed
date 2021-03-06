U:RDoc::AnyMethod[iI"	to_s:EFI"REXML::Text#to_s;FF:publico:RDoc::Markup::Document:@parts[o:RDoc::Markup::Paragraph;	[	I"GReturns the string value of this text node.  This string is always;FI"Fescaped, meaning that it is a valid XML text node string, and all;FI"Lentities that can be escaped, have been inserted.  This method respects;FI".the entity filter set in the constructor.;Fo:RDoc::Markup::BlankLine o:RDoc::Markup::Verbatim;	[I"  ;FI"G# Assume that the entity "s" is defined to be "sean", and that the;FI"
;FI"  ;FI",# entity "r" is defined to be "russell";FI"
;FI"  ;FI"At = Text.new( "< & sean russell", false, nil, false, ['s'] );FI"
;FI"  ;FI"*t.to_s   #-> "&lt; &amp; &s; russell";FI"
;FI"  ;FI"9t = Text.new( "< & &s; russell", false, nil, false );FI"
;FI"  ;FI"*t.to_s   #-> "&lt; &amp; &s; russell";FI"
;FI"  ;FI"5u = Text.new( "sean russell", false, nil, true );FI"
;FI"  ;FI" u.to_s   #-> "sean russell";F00[ I"();F