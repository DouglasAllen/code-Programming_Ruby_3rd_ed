U:RDoc::AnyMethod[iI"get_attribute:EFI"$REXML::Attributes#get_attribute;FF:publico:RDoc::Markup::Document:@parts[	o:RDoc::Markup::Paragraph;	[I"Fetches an attribute;Fo:RDoc::Markup::List:
@type:	NOTE:@items[o:RDoc::Markup::ListItem:@labelI"	name;F;	[o;
;	[I"=the name by which to search for the attribute.  Can be a;FI")<tt>prefix:name</tt> namespace name.;Fo;;I"Returns;F;	[o;
;	[I"BThe first matching attribute, or nil if there was none.  This;Fo;
;	[I"Gvalue is an Attribute node, not the String value of the attribute.;Fo:RDoc::Markup::Verbatim;	[I" ;FI"8doc = Document.new '<a x:foo="1" foo="2" bar="3"/>';FI"
;FI" ;FI">doc.root.attributes.get_attribute("foo").value    #-> "2";FI"
;FI" ;FI">doc.root.attributes.get_attribute("x:foo").value  #-> "1";F00[ I"( name );F