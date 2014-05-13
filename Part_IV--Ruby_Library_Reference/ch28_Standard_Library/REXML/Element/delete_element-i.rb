U:RDoc::AnyMethod[iI"delete_element:EFI""REXML::Element#delete_element;FF:publico:RDoc::Markup::Document:@parts[o:RDoc::Markup::Paragraph;	[I"Deletes a child element.;Fo:RDoc::Markup::List:
@type:	NOTE:@items[o:RDoc::Markup::ListItem:@labelI"element;F;	[o;
;	[
I"?Must be an +Element+, +String+, or +Integer+.  If Element,;FI"Ithe element is removed.  If String, the element is found (via XPath);FI"@and removed.  <em>This means that any parent can remove any;FI"Ldescendant.<em>  If Integer, the Element indexed by that number will be;FI"removed.;Fo;;I"Returns;F;	[o;
;	[I""the element that was removed.;Fo:RDoc::Markup::Verbatim;	[I" ;FI")doc.delete_element "/a/b/c[@id='4']";FI"
;FI" ;FI"+doc.delete_element doc.elements["//k"];FI"
;FI" ;FI"doc.delete_element 1;F00[ I"(element);F