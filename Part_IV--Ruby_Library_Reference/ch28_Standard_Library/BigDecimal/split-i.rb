U:RDoc::AnyMethod[iI"
split:EFI"BigDecimal#split;FF:publico:RDoc::Markup::Document:@parts[o:RDoc::Markup::Paragraph;	[I"PSplits a BigDecimal number into four parts, returned as an array of values.;Fo:RDoc::Markup::BlankLine o;
;	[I"PThe first value represents the sign of the BigDecimal, and is -1 or 1, or 0;FI"'if the BigDecimal is Not a Number.;Fo; o;
;	[I"LThe second value is a string representing the significant digits of the;FI"'BigDecimal, with no leading zeros.;Fo; o;
;	[I"PThe third value is the base used for arithmetic (currently always 10) as an;FI"Integer.;Fo; o;
;	[I"-The fourth value is an Integer exponent.;Fo; o;
;	[I"OIf the BigDecimal can be represented as 0.xxxxxx*10**n, then xxxxxx is the;FI"Ostring of significant digits with no leading zeros, and n is the exponent.;Fo; o;
;	[I"MFrom these values, you can translate a BigDecimal to a float as follows:;Fo; o:RDoc::Markup::Verbatim;	[I"  ;FI"7sign, significant_digits, base, exponent = a.split;FI"
;FI"  ;FI"Cf = sign * "0.#{significant_digits}".to_f * (base ** exponent);FI"
;Fo;
;	[I"Q(Note that the to_f method is provided as a more convenient way to translate;FI"a BigDecimal to a Float.);F00[ I"();F