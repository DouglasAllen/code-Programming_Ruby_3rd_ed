U:RDoc::AnyMethod[iI"prefixes:EFI"REXML::Element#prefixes;FF:publico:RDoc::Markup::Document:@parts[o:RDoc::Markup::Paragraph;	[I"KEvaluates to an +Array+ containing the prefixes (names) of all defined;FI"%namespaces at this context node.;Fo:RDoc::Markup::Verbatim;	[
I" ;FI"Ndoc = Document.new("<a xmlns:x='1' xmlns:y='2'><b/><c xmlns:z='3'/></a>");FI"
;FI" ;FI"1doc.elements['//b'].prefixes # -> ['x', 'y'];F00[ I"();F