U:RDoc::AnyMethod[iI"prefix:EFI"REXML::Attribute#prefix;FF:publico:RDoc::Markup::Document:@parts[o:RDoc::Markup::Paragraph;	[I",Returns the namespace of the attribute.;Fo:RDoc::Markup::BlankLine o:RDoc::Markup::Verbatim;	[I" ;FI"(e = Element.new( "elns:myelement" );FI"
;FI" ;FI"'e.add_attribute( "nsa:a", "aval" );FI"
;FI" ;FI"#e.add_attribute( "b", "bval" );FI"
;FI" ;FI":e.attributes.get_attribute( "a" ).prefix   # -> "nsa";FI"
;FI" ;FI";e.attributes.get_attribute( "b" ).prefix   # -> "elns";FI"
;FI" ;FI""a = Attribute.new( "x", "y" );FI"
;FI" ;FI"7a.prefix                                   # -> "";F00[ I"();F