U:RDoc::AnyMethod[iI"summarize:EFI"OptionParser#summarize;FF:publico:RDoc::Markup::Document:@parts[o:RDoc::Markup::Paragraph;	[I"HPuts option summary into +to+ and returns +to+. Yields each line if;FI"a block is given.;Fo:RDoc::Markup::BlankLine o:RDoc::Markup::List:
@type:	NOTE:@items[	o:RDoc::Markup::ListItem:@labelI"	+to+;F;	[o;
;	[I"COutput destination, which must have method <<. Defaults to [].;Fo;;I"+width+;F;	[o;
;	[I"4Width of left side, defaults to @summary_width.;Fo;;I"
+max+;F;	[o;
;	[I"CMaximum length allowed for left side, defaults to +width+ - 1.;Fo;;I"+indent+;F;	[o;
;	[I".Indentation, defaults to @summary_indent.;F00[ I"W(to = [], width = @summary_width, max = width - 1, indent = @summary_indent, &blk);F