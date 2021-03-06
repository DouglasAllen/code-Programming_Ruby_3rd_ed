U:RDoc::AnyMethod[iI"delete_attribute:EFI"$REXML::Element#delete_attribute;FF:publico:RDoc::Markup::Document:@parts[o:RDoc::Markup::Paragraph;	[I"Removes an attribute;Fo:RDoc::Markup::List:
@type:	NOTE:@items[o:RDoc::Markup::ListItem:@labelI"key;F;	[o;
;	[I":either an Attribute or a String.  In either case, the;FI"Gattribute is found by matching the attribute name to the argument,;FI"Eand then removed.  If no attribute is found, no action is taken.;Fo;;I"Returns;F;	[o;
;	[I"Bthe attribute removed, or nil if this Element did not contain;FI"a matching attribute;Fo:RDoc::Markup::Verbatim;	[I" ;FI"e = Element.new('E');FI"
;FI" ;FI"Ge.add_attribute( 'name', 'Sean' )             #-> <E name='Sean'/>;FI"
;FI" ;FI"Zr = e.add_attribute( 'sur:name', 'Russell' )  #-> <E name='Sean' sur:name='Russell'/>;FI"
;FI" ;FI"Ne.delete_attribute( 'name' )                  #-> <E sur:name='Russell'/>;FI"
;FI" ;FI";e.delete_attribute( r )                       #-> <E/>;F00[ I"
(key);F