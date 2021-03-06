U:RDoc::AnyMethod[iI"
write:EFI"REXML::CData#write;FF:publico:RDoc::Markup::Document:@parts[S:RDoc::Markup::Heading:
leveli:	textI"DEPRECATED;Fo:RDoc::Markup::Paragraph;	[I"%See the rexml/formatters package;Fo:RDoc::Markup::BlankLine o;;	[I"(Generates XML output of this object;Fo; o:RDoc::Markup::List:
@type:	NOTE:@items[	o:RDoc::Markup::ListItem:@labelI"output;F;	[o;;	[I"4Where to write the string.  Defaults to $stdout;Fo;;I"indent;F;	[o;;	[I"&The amount to indent this node by;Fo;;I"transitive;F;	[o;;	[I"Ignored;Fo;;I"ie_hack;F;	[o;;	[I"Ignored;Fo; o;;	[I"_Examples_;Fo:RDoc::Markup::Verbatim;	[
I" ;FI"#c = CData.new( " Some text " );FI"
;FI" ;FI"8c.write( $stdout )     #->  <![CDATA[ Some text ]]>;F00[ I"C( output=$stdout, indent=-1, transitive=false, ie_hack=false );F