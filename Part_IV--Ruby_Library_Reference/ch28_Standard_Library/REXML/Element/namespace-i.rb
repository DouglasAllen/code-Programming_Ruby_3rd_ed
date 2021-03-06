U:RDoc::AnyMethod[iI"namespace:EFI"REXML::Element#namespace;FF:publico:RDoc::Markup::Document:@parts[o:RDoc::Markup::Paragraph;	[I"EEvalutas to the URI for a prefix, or the empty string if no such;FI"Fnamespace is declared for this element. Evaluates recursively for;FI"@ancestors.  Returns the default namespace, if there is one.;Fo:RDoc::Markup::List:
@type:	NOTE:@items[o:RDoc::Markup::ListItem:@labelI"prefix;F;	[o;
;	[I"Dthe prefix to search for.  If not supplied, returns the default;FI"namespace if one exists;Fo;;I"Returns;F;	[o;
;	[I"?the namespace URI as a String, or nil if no such namespace;FI"Dexists.  If the namespace is undefined, returns an empty string;Fo:RDoc::Markup::Verbatim;	[I" ;FI"Ldoc = Document.new("<a xmlns='1' xmlns:y='2'><b/><c xmlns:z='3'/></a>");FI"
;FI" ;FI"b = doc.elements['//b'];FI"
;FI" ;FI"#b.namespace           # -> '1';FI"
;FI" ;FI"#b.namespace("y")      # -> '2';F00[ I"(prefix=nil);F