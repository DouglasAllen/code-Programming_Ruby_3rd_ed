U:RDoc::AnyMethod[iI"delete_all:EFI"REXML::Elements#delete_all;FF:publico:RDoc::Markup::Document:@parts[o:RDoc::Markup::Paragraph;	[I"LRemoves multiple elements.  Filters for Element children, regardless of;FI"XPath matching.;Fo:RDoc::Markup::List:
@type:	NOTE:@items[o:RDoc::Markup::ListItem:@labelI"
xpath;F;	[o;
;	[I"8all elements matching this String path are removed.;Fo;;I"Returns;F;	[o;
;	[I"0an Array of Elements that have been removed;Fo:RDoc::Markup::Verbatim;	[
I" ;FI"1doc = Document.new '<a><c/><c/><c/><c/></a>';FI"
;FI" ;FI"Ideleted = doc.elements.delete_all 'a/c' #-> [<c/>, <c/>, <c/>, <c/>];F00[ I"( xpath );F