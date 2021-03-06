U:RDoc::AnyMethod[iI"add_element:EFI"REXML::Element#add_element;FF:publico:RDoc::Markup::Document:@parts[o:RDoc::Markup::Paragraph;	[I"CAdds a child to this element, optionally setting attributes in;FI"the element.;Fo:RDoc::Markup::List:
@type:	NOTE:@items[o:RDoc::Markup::ListItem:@labelI"element;F;	[o;
;	[I"1optional.  If Element, the element is added.;FI"COtherwise, a new Element is constructed with the argument (see;FI"Element.initialize).;Fo;;I"
attrs;F;	[o;
;	[I"=If supplied, must be a Hash containing String name,value;FI"Hpairs, which will be used to set the attributes of the new Element.;Fo;;I"Returns;F;	[o;
;	[I"the Element that was added;Fo:RDoc::Markup::Verbatim;	[I" ;FI""el = doc.add_element 'my-tag';FI"
;FI" ;FI"Fel = doc.add_element 'my-tag', {'attr1'=>'val1', 'attr2'=>'val2'};FI"
;FI" ;FI"el = Element.new 'my-tag';FI"
;FI" ;FI"doc.add_element el;F00[ I"(element, attrs=nil);F