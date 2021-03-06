U:RDoc::AnyMethod[iI"
floor:EFI"BigDecimal#floor;FF:publico:RDoc::Markup::Document:@parts[o:RDoc::Markup::Paragraph;	[I"QReturn the largest integer less than or equal to the value, as a BigDecimal.;Fo:RDoc::Markup::BlankLine o;
;	[I"%BigDecimal('3.14159').floor -> 3;Fo; o;
;	[I"$BigDecimal('-9.1').floor -> -10;Fo; o;
;	[I"MIf n is specified and positive, the fractional part of the result has no;FI" more than that many digits.;Fo; o;
;	[I"2If n is specified and negative, at least that;FI"Jmany digits to the left of the decimal point will be 0 in the result.;Fo; o;
;	[I",BigDecimal('3.14159').floor(3) -> 3.141;Fo; o;
;	[I"1BigDecimal('13345.234').floor(-2) -> 13300.0;FI"floor(n)
;F0[ I"
(...);F