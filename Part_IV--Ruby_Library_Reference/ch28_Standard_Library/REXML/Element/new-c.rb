U:RDoc::AnyMethod[iI"new:EFI"REXML::Element::new;FT:publico:RDoc::Markup::Document:@parts[o:RDoc::Markup::Paragraph;	[I"Constructor;Fo:RDoc::Markup::List:
@type:	NOTE:@items[o:RDoc::Markup::ListItem:@labelI"arg;F;	[o;
;	[
I"7if not supplied, will be set to the default value.;FI"FIf a String, the name of this object will be set to the argument.;FI">If an Element, the object will be shallowly cloned; name,;FI"Gattributes, and namespaces will be copied.  Children will +not+ be;FI"copied.;Fo;;I"parent;F;	[o;
;	[I"7if supplied, must be a Parent, and will be used as;FI"the parent of this object.;Fo;;I"context;F;	[o;
;	[I"IIf supplied, must be a hash containing context items.  Context items;FI"include:;Fo;;:BULLET;[	o;;0;	[o;
;	[I"L<tt>:respect_whitespace</tt> the value of this is :+all+ or an array of;FI"7strings being the names of the elements to respect;FI")whitespace for.  Defaults to :+all+.;Fo;;0;	[o;
;	[I"I<tt>:compress_whitespace</tt> the value can be :+all+ or an array of;FI"Estrings being the names of the elements to ignore whitespace on.;FI"%Overrides :+respect_whitespace+.;Fo;;0;	[o;
;	[	I"J<tt>:ignore_whitespace_nodes</tt> the value can be :+all+ or an array;FI"Bof strings being the names of the elements in which to ignore;FI"Jwhitespace-only nodes.  If this is set, Text nodes which contain only;FI"7whitespace will not be added to the document tree.;Fo;;0;	[o;
;	[I"K<tt>:raw</tt> can be :+all+, or an array of strings being the names of;FI"?the elements to process in raw mode.  In raw mode, special;FI"=characters in text is not converted to or from entities.;F00[ I"1( arg = UNDEFINED, parent=nil, context=nil );F