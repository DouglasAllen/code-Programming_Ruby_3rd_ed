U:RDoc::AnyMethod[iI"truncate:EFI"BigDecimal#truncate;FF:publico:RDoc::Markup::Document:@parts[o:RDoc::Markup::Paragraph;	[I"ETruncate to the nearest 1, returning the result as a BigDecimal.;Fo:RDoc::Markup::BlankLine o;
;	[I"(BigDecimal('3.14159').truncate -> 3;Fo; o;
;	[I"$BigDecimal('8.7').truncate -> 8;Fo; o;
;	[I"MIf n is specified and positive, the fractional part of the result has no;FI" more than that many digits.;Fo; o;
;	[I"QIf n is specified and negative, at least that many digits to the left of the;FI"+decimal point will be 0 in the result.;Fo; o;
;	[I"/BigDecimal('3.14159').truncate(3) -> 3.141;Fo; o;
;	[I"4BigDecimal('13345.234').truncate(-2) -> 13300.0;FI"truncate(n)
;F0[ I"
(...);F