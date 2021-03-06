U:RDoc::AnyMethod[iI"each_attribute:EFI"%REXML::Attributes#each_attribute;FF:publico:RDoc::Markup::Document:@parts[o:RDoc::Markup::Paragraph;	[I"IIterates over the attributes of an Element.  Yields actual Attribute;FI"nodes, not String values.;Fo:RDoc::Markup::BlankLine o:RDoc::Markup::Verbatim;	[I" ;FI"*doc = Document.new '<a x="1" y="2"/>';FI"
;FI" ;FI"/doc.root.attributes.each_attribute {|attr|;FI"
;FI"   ;FI"+p attr.expanded_name+" => "+attr.value;FI"
;FI" ;FI"};F0I"attribute;F[ I"();F