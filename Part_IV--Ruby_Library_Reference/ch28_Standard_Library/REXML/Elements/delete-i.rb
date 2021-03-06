U:RDoc::AnyMethod[iI"delete:EFI"REXML::Elements#delete;FF:publico:RDoc::Markup::Document:@parts[o:RDoc::Markup::Paragraph;	[I"Deletes a child Element;Fo:RDoc::Markup::List:
@type:	NOTE:@items[o:RDoc::Markup::ListItem:@labelI"element;F;	[o;
;	[I"5Either an Element, which is removed directly; an;FI"Expath, where the first matching child is removed; or an Integer,;FI"'where the n'th Element is removed.;Fo;;I"Returns;F;	[o;
;	[I"the removed child;Fo:RDoc::Markup::Verbatim;	[I" ;FI"4doc = Document.new '<a><b/><c/><c id="1"/></a>';FI"
;FI" ;FI"b = doc.root.elements[1];FI"
;FI" ;FI"Ddoc.root.elements.delete b           #-> <a><c/><c id="1"/></a>;FI"
;FI" ;FI"9doc.elements.delete("a/c[@id='1']")  #-> <a><c/></a>;FI"
;FI" ;FI"2doc.root.elements.delete 1           #-> <a/>;F00[ I"(element);F