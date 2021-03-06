U:RDoc::AnyMethod[iI"new:EFI"REXML::Text::new;FT:publico:RDoc::Markup::Document:@parts[o:RDoc::Markup::Paragraph;	[I"Constructor;FI"E+arg+ if a String, the content is set to the String.  If a Text,;FI"$the object is shallowly cloned.;Fo:RDoc::Markup::BlankLine o;
;	[I"A+respect_whitespace+ (boolean, false) if true, whitespace is;FI"respected;Fo; o;
;	[I":+parent+ (nil) if this is a Parent object, the parent;FI"will be set to this.;Fo; o;
;	[I"9+raw+ (nil) This argument can be given three values.;FI"LIf true, then the value of used to construct this object is expected to;FI"Lcontain no unescaped XML markup, and REXML will not change the text. If;FI"Othis value is false, the string may contain any characters, and REXML will;FI"Jescape any and all defined entities whose values are contained in the;FI"Itext.  If this value is nil (the default), then the raw value of the;FI"Lparent will be used as the raw value for this node.  If there is no raw;FI"Jvalue for the parent, and no value is supplied, the default is false.;FI"MUse this field if you have entities defined for some text, and you don't;FI".want REXML to escape that text in output.;Fo:RDoc::Markup::Verbatim;	[I"  ;FI"8Text.new( "<&", false, nil, false ) #-> "&lt;&amp;";FI"
;FI"  ;FI"GText.new( "&lt;&amp;", false, nil, false ) #-> "&amp;lt;&amp;amp;";FI"
;FI"  ;FI"<Text.new( "<&", false, nil, true )  #-> Parse exception;FI"
;FI"  ;FI"?Text.new( "&lt;&amp;", false, nil, true )  #-> "&lt;&amp;";FI"
;FI"  ;FI"9# Assume that the entity "s" is defined to be "sean";FI"
;FI"  ;FI"<# and that the entity    "r" is defined to be "russell";FI"
;FI"  ;FI"6Text.new( "sean russell" )          #-> "&s; &r;";FI"
;FI"  ;FI"DText.new( "sean russell", false, nil, true ) #-> "sean russell";FI"
;Fo;
;	[I"K+entity_filter+ (nil) This can be an array of entities to match in the;FI"Ksupplied text.  This argument is only useful if +raw+ is set to false.;Fo;;	[I"  ;FI"KText.new( "sean russell", false, nil, false, ["s"] ) #-> "&s; russell";FI"
;FI"  ;FI"KText.new( "sean russell", false, nil, true, ["s"] ) #-> "sean russell";FI"
;Fo;
;	[I"BIn the last example, the +entity_filter+ argument is ignored.;Fo; o;
;	[I" +illegal+ INTERNAL USE ONLY;F00[ I"k(arg, respect_whitespace=false, parent=nil, raw=nil, entity_filter=nil, illegal=NEEDS_A_SECOND_CHECK );F