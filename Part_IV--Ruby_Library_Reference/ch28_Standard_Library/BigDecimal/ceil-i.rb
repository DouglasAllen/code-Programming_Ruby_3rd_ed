U:RDoc::AnyMethod[iI"	ceil:EFI"BigDecimal#ceil;FF:publico:RDoc::Markup::Document:@parts[o:RDoc::Markup::Paragraph;	[I"UReturn the smallest integer greater than or equal to the value, as a BigDecimal.;Fo:RDoc::Markup::BlankLine o;
;	[I"$BigDecimal('3.14159').ceil -> 4;Fo; o;
;	[I""BigDecimal('-9.1').ceil -> -9;Fo; o;
;	[I"MIf n is specified and positive, the fractional part of the result has no;FI" more than that many digits.;Fo; o;
;	[I"2If n is specified and negative, at least that;FI"Jmany digits to the left of the decimal point will be 0 in the result.;Fo; o;
;	[I"+BigDecimal('3.14159').ceil(3) -> 3.142;Fo; o;
;	[I"0BigDecimal('13345.234').ceil(-2) -> 13400.0;FI"ceil(n)
;F0[ I"
(...);F