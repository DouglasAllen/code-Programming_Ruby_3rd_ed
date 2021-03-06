U:RDoc::AnyMethod[iI"delete:EFI"REXML::Attributes#delete;FF:publico:RDoc::Markup::Document:@parts[o:RDoc::Markup::Paragraph;	[I"Removes an attribute;Fo:RDoc::Markup::List:
@type:	NOTE:@items[o:RDoc::Markup::ListItem:@labelI"attribute;F;	[o;
;	[I"Eeither a String, which is the name of the attribute to remove --;FI"Cnamespaces are significant here -- or the attribute to remove.;Fo;;I"Returns;F;	[o;
;	[I"the owning element;Fo:RDoc::Markup::Verbatim;	[I" ;FI"Ddoc = Document.new "<a y:foo='0' x:foo='1' foo='3' z:foo='4'/>";FI"
;FI" ;FI"Odoc.root.attributes.delete 'foo'   #-> <a y:foo='0' x:foo='1' z:foo='4'/>";FI"
;FI" ;FI"Edoc.root.attributes.delete 'x:foo' #-> <a y:foo='0' z:foo='4'/>";FI"
;FI" ;FI"6attr = doc.root.attributes.get_attribute('y:foo');FI"
;FI" ;FI";doc.root.attributes.delete attr    #-> <a z:foo='4'/>";F00[ I"( attribute );F