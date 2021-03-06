U:RDoc::AnyMethod[iI"has_elements?:EFI"!REXML::Element#has_elements?;FF:publico:RDoc::Markup::Document:@parts[o:RDoc::Markup::Paragraph;	[I"GEvaluates to +true+ if this element has at least one child Element;Fo:RDoc::Markup::Verbatim;	[I" ;FI"0doc = Document.new "<a><b/><c>Text</c></a>";FI"
;FI" ;FI"2doc.root.has_elements               # -> true;FI"
;FI" ;FI"3doc.elements["/a/b"].has_elements   # -> false;FI"
;FI" ;FI"3doc.elements["/a/c"].has_elements   # -> false;F00[ I"();F