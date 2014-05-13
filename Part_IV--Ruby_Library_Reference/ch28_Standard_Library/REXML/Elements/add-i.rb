U:RDoc::AnyMethod[iI"add:EFI"REXML::Elements#add;FF:publico:RDoc::Markup::Document:@parts[o:RDoc::Markup::Paragraph;	[I"Adds an element;Fo:RDoc::Markup::List:
@type:	NOTE:@items[o:RDoc::Markup::ListItem:@labelI"element;F;	[o;
;	[I"2if supplied, is either an Element, String, or;FI"@Source (see Element.initialize).  If not supplied or nil, a;FI"-new, default Element will be constructed;Fo;;I"Returns;F;	[o;
;	[I"the added Element;Fo:RDoc::Markup::Verbatim;	[I" ;FI"a = Element.new('a');FI"
;FI" ;FI"6a.elements.add(Element.new('b'))  #-> <a><b/></a>;FI"
;FI" ;FI":a.elements.add('c')               #-> <a><b/><c/></a>;F00[[I"REXML::Elements#<<;Fo;;	[ I"(element=nil);F