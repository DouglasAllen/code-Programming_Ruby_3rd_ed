U:RDoc::AnyMethod[iI"/:EFI"BigDecimal#/;FF:publico:RDoc::Markup::Document:@parts[o:RDoc::Markup::Paragraph;	[I"#Divide by the specified value.;Fo:RDoc::Markup::BlankLine o;
;	[I"	e.g.;Fo:RDoc::Markup::Verbatim;	[I"  ;FI"c = a.div(b,n);FI"
;Fo:RDoc::Markup::List:
@type:	NOTE:@items[o:RDoc::Markup::ListItem:@labelI"digits;F;	[o;
;	[I"�If specified and less than the number of significant digits of the result, the result is rounded to that number of digits, according to BigDecimal.mode.;Fo; o;
;	[I"JIf digits is 0, the result is the same as the / operator. If not, the;FI"@result is an integer BigDecimal, by analogy with Float#div.;Fo; o;
;	[I"KThe alias quo is provided since div(value, 0) is the same as computing;FI"the quotient; see divmod.;FI"#div(value, digits)
quo(value)
;F0[ I"	(p1);F