U:RDoc::AnyMethod[iI"	each:EFI"REXML::XPath::each;FT:publico:RDoc::Markup::Document:@parts[o:RDoc::Markup::Paragraph;	[I"HIterates over nodes that match the given path, calling the supplied;FI"block with the match.;Fo:RDoc::Markup::List:
@type:	NOTE:@items[	o:RDoc::Markup::ListItem:@labelI"element;F;	[o;
;	[I"The context element;Fo;;I"	path;F;	[o;
;	[I"FThe xpath to search for.  If not supplied or nil, defaults to '*';Fo;;I"namespaces;F;	[o;
;	[I":If supplied, a Hash which defines a namespace mapping;Fo;;I"variables;F;	[o;
;	[I";If supplied, a Hash which maps $variables in the query;FI"Ato values. This can be used to avoid XPath injection attacks;FI"7or to automatically handle escaping string values.;Fo:RDoc::Markup::BlankLine o:RDoc::Markup::Verbatim;	[I" ;FI"$XPath.each( node ) { |el| ... };FI"
;FI" ;FI"5XPath.each( node, '/*[@attr='v']' ) { |el| ... };FI"
;FI" ;FI"3XPath.each( node, 'ancestor::x' ) { |el| ... };FI"
;FI" ;FI"\XPath.each( node, '/book/publisher/text()=$publisher', {}, {"publisher"=>"O'Reilly"}) \;FI"
;FI"   ;FI"{|el| ... };F00[ I"6(element, path=nil, namespaces=nil, variables={});F