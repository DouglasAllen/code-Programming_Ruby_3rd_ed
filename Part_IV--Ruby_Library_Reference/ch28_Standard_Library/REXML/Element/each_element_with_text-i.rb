U:RDoc::AnyMethod[iI"each_element_with_text:EFI"*REXML::Element#each_element_with_text;FF:publico:RDoc::Markup::Document:@parts[o:RDoc::Markup::Paragraph;	[I"BIterates through the children, yielding for each Element that;FI"has a particular text set.;Fo:RDoc::Markup::List:
@type:	NOTE:@items[o:RDoc::Markup::ListItem:@labelI"	text;F;	[o;
;	[I"Cthe text to search for.  If nil, or not supplied, will iterate;FI"Gover all +Element+ children that contain at least one +Text+ node.;Fo;;I"max;F;	[o;
;	[I";(optional) causes this method to return after yielding;FI")for this number of matching children;Fo;;I"	name;F;	[o;
;	[I":(optional) if supplied, this is an XPath that filters;FI"the children to check.;Fo:RDoc::Markup::BlankLine o:RDoc::Markup::Verbatim;	[I" ;FI"=doc = Document.new '<a><b>b</b><c>b</c><d>d</d><e/></a>';FI"
;FI" ;FI"# Yields b, c, d;FI"
;FI" ;FI"(doc.each_element_with_text {|e|p e};FI"
;FI" ;FI"# Yields b, c;FI"
;FI" ;FI",doc.each_element_with_text('b'){|e|p e};FI"
;FI" ;FI"# Yields b;FI"
;FI" ;FI"/doc.each_element_with_text('b', 1){|e|p e};FI"
;FI" ;FI"# Yields d;FI"
;FI" ;FI"4doc.each_element_with_text(nil, 0, 'd'){|e|p e};F0I"Element;F[ I""( text=nil, max=0, name=nil );F