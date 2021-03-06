U:RDoc::AnyMethod[iI"add_text:EFI"REXML::Element#add_text;FF:publico:RDoc::Markup::Document:@parts[	o:RDoc::Markup::Paragraph;	[I"DA helper method to add a Text child.  Actual Text instances can;FI"Abe added with regular Parent methods, such as add() and <<();Fo:RDoc::Markup::List:
@type:	NOTE:@items[o:RDoc::Markup::ListItem:@labelI"	text;F;	[o;
;	[I":if a String, a new Text instance is created and added;FI";to the parent.  If Text, the object is added directly.;Fo;;I"Returns;F;	[o;
;	[I"this Element;Fo:RDoc::Markup::Verbatim;	[I" ;FI"+e = Element.new('a')          #-> <e/>;FI"
;FI" ;FI"1e.add_text 'foo'              #-> <e>foo</e>;FI"
;FI" ;FI"6e.add_text Text.new(' bar')    #-> <e>foo bar</e>;FI"
;Fo;
;	[I"QNote that at the end of this example, the branch has <b>3</b> nodes; the 'e';FI"-element and <b>2</b> Text node children.;F00[ I"( text );F