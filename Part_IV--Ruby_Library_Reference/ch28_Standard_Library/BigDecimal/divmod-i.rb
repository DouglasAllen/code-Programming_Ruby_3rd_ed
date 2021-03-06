U:RDoc::AnyMethod[iI"divmod:EFI"BigDecimal#divmod;FF:publico:RDoc::Markup::Document:@parts[o:RDoc::Markup::Paragraph;	[I"IDivides by the specified value, and returns the quotient and modulus;FI"Nas BigDecimal numbers. The quotient is rounded towards negative infinity.;Fo:RDoc::Markup::BlankLine o;
;	[I"For example:;Fo; o;
;	[I"require 'bigdecimal';Fo; o;
;	[I"a = BigDecimal.new("42");FI"b = BigDecimal.new("9");Fo; o;
;	[I"q,m = a.divmod(b);Fo; o;
;	[I"c = q * b + m;Fo; o;
;	[I"a == c  -> true;Fo; o;
;	[I"NThe quotient q is (a/b).floor, and the modulus is the amount that must be;FI"added to q * b to get a.;F00[ I"	(p1);F