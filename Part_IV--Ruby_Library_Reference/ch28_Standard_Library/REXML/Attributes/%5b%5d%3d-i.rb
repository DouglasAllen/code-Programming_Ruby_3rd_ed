U:RDoc::AnyMethod[iI"[]=:EFI"REXML::Attributes#[]=;FF:publico:RDoc::Markup::Document:@parts[o:RDoc::Markup::Paragraph;	[I"GSets an attribute, overwriting any existing attribute value by the;FI"*same name.  Namespace is significant.;Fo:RDoc::Markup::List:
@type:	NOTE:@items[o:RDoc::Markup::ListItem:@labelI"	name;F;	[o;
;	[I"the name of the attribute;Fo;;I"
value;F;	[o;
;	[I"<(optional) If supplied, the value of the attribute.  If;FI"5nil, any existing matching attribute is deleted.;Fo;;I"Returns;F;	[o;
;	[I"Owning element;Fo:RDoc::Markup::Verbatim;	[I" ;FI"0doc = Document.new "<a x:foo='1' foo='3'/>";FI"
;FI" ;FI"'doc.root.attributes['y:foo'] = '2';FI"
;FI" ;FI"%doc.root.attributes['foo'] = '4';FI"
;FI" ;FI"'doc.root.attributes['x:foo'] = nil;F00[ I"( name, value );F