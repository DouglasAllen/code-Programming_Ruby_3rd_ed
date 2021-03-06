U:RDoc::AnyMethod[iI"	each:EFI"REXML::Elements#each;FF:publico:RDoc::Markup::Document:@parts[o:RDoc::Markup::Paragraph;	[I"EIterates through all of the child Elements, optionally filtering;FI"them by a given XPath;Fo:RDoc::Markup::List:
@type:	NOTE:@items[o:RDoc::Markup::ListItem:@labelI"
xpath;F;	[o;
;	[	I"Coptional.  If supplied, this is a String XPath, and is used to;FI"Kfilter the children, so that only matching children are yielded.  Note;FI"Athat XPaths are automatically filtered for Elements, so that;FI"-non-Element children will not be yielded;Fo:RDoc::Markup::Verbatim;	[I" ;FI"=doc = Document.new '<a><b/><c/><d/>sean<b/><c/><d/></a>';FI"
;FI" ;FI"Fdoc.root.each {|e|p e}       #-> Yields b, c, d, b, c, d elements;FI"
;FI" ;FI":doc.root.each('b') {|e|p e}  #-> Yields b, b elements;FI"
;FI" ;FI"-doc.root.each('child::node()')  {|e|p e};FI"
;FI" ;FI"2#-> Yields <b/>, <c/>, <d/>, <b/>, <c/>, <d/>;FI"
;FI" ;FI"2XPath.each(doc.root, 'child::node()', &block);FI"
;FI" ;FI"8#-> Yields <b/>, <c/>, <d/>, sean, <b/>, <c/>, <d/>;F0I"e if e.kind_of? Element;F[ I"( xpath=nil, &block);F