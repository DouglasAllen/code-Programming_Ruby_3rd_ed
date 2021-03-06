U:RDoc::AnyMethod[iI"new:EFI"BigDecimal::new;FT:publico:RDoc::Markup::Document:@parts[	o:RDoc::Markup::Paragraph;	[I"$Create a new BigDecimal object.;Fo:RDoc::Markup::BlankLine o:RDoc::Markup::List:
@type:	NOTE:@items[o:RDoc::Markup::ListItem:@labelI"initial;F;	[o;
;	[I"eThe initial value, as a String. Spaces are ignored, unrecognized characters terminate the value.;Fo; o;;I"digits;F;	[o;
;	[I"�The number of significant digits, as a Fixnum. If omitted or 0, the number of significant digits is determined from the initial value.;Fo; o;
;	[I"KThe actual number of significant digits used in computation is usually;FI"&larger than the specified number.;FI"new(initial, digits)
;F0[ I"
(...);F