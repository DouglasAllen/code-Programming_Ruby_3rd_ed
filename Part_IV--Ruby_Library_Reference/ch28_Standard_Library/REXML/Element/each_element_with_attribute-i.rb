U:RDoc::AnyMethod[iI" each_element_with_attribute:EFI"/REXML::Element#each_element_with_attribute;FF:publico:RDoc::Markup::Document:@parts[o:RDoc::Markup::Paragraph;	[I"HIterates through the child elements, yielding for each Element that;FI"$has a particular attribute set.;Fo:RDoc::Markup::List:
@type:	NOTE:@items[	o:RDoc::Markup::ListItem:@labelI"key;F;	[o;
;	[I",the name of the attribute to search for;Fo;;I"
value;F;	[o;
;	[I"the value of the attribute;Fo;;I"max;F;	[o;
;	[I";(optional) causes this method to return after yielding;FI")for this number of matching children;Fo;;I"	name;F;	[o;
;	[I":(optional) if supplied, this is an XPath that filters;FI"the children to check.;Fo:RDoc::Markup::BlankLine o:RDoc::Markup::Verbatim;	[I" ;FI"Idoc = Document.new "<a><b @id='1'/><c @id='2'/><d @id='1'/><e/></a>";FI"
;FI" ;FI"# Yields b, c, d;FI"
;FI" ;FI";doc.root.each_element_with_attribute( 'id' ) {|e| p e};FI"
;FI" ;FI"# Yields b, d;FI"
;FI" ;FI"@doc.root.each_element_with_attribute( 'id', '1' ) {|e| p e};FI"
;FI" ;FI"# Yields b;FI"
;FI" ;FI"Cdoc.root.each_element_with_attribute( 'id', '1', 1 ) {|e| p e};FI"
;FI" ;FI"# Yields d;FI"
;FI" ;FI"Hdoc.root.each_element_with_attribute( 'id', '1', 0, 'd' ) {|e| p e};F0I"Element;F[ I"(( key, value=nil, max=0, name=nil );F