U:RDoc::AnyMethod[iI"
value:EFI"REXML::Text#value;FF:publico:RDoc::Markup::Document:@parts[o:RDoc::Markup::Paragraph;	[	I"EReturns the string value of this text.  This is the text without;FI"Fentities, as it might be used programmatically, or printed to the;FI"@console.  This ignores the 'raw' attribute setting, and any;FI"entity_filter.;Fo:RDoc::Markup::BlankLine o:RDoc::Markup::Verbatim;	[I"  ;FI"G# Assume that the entity "s" is defined to be "sean", and that the;FI"
;FI"  ;FI",# entity "r" is defined to be "russell";FI"
;FI"  ;FI"At = Text.new( "< & sean russell", false, nil, false, ['s'] );FI"
;FI"  ;FI"%t.value   #-> "< & sean russell";FI"
;FI"  ;FI"9t = Text.new( "< & &s; russell", false, nil, false );FI"
;FI"  ;FI"%t.value   #-> "< & sean russell";FI"
;FI"  ;FI"5u = Text.new( "sean russell", false, nil, true );FI"
;FI"  ;FI"!u.value   #-> "sean russell";F00[ I"();F