U:RDoc::AnyMethod[iI"
round:EFI"BigDecimal#round;FF:publico:RDoc::Markup::Document:@parts[o:RDoc::Markup::Paragraph;	[I"ORound to the nearest 1 (by default), returning the result as a BigDecimal.;Fo:RDoc::Markup::BlankLine o;
;	[I"%BigDecimal('3.14159').round -> 3;Fo; o;
;	[I"!BigDecimal('8.7').round -> 9;Fo; o;
;	[I"MIf n is specified and positive, the fractional part of the result has no;FI" more than that many digits.;Fo; o;
;	[I"QIf n is specified and negative, at least that many digits to the left of the;FI"+decimal point will be 0 in the result.;Fo; o;
;	[I",BigDecimal('3.14159').round(3) -> 3.142;Fo; o;
;	[I"1BigDecimal('13345.234').round(-2) -> 13300.0;Fo; o;
;	[I"IThe value of the optional mode argument can be used to determine how;FI"0rounding is performed; see BigDecimal.mode.;FI"round(n,mode)
;F0[ I"
(...);F