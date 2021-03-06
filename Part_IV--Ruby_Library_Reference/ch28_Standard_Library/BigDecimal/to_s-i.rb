U:RDoc::AnyMethod[iI"	to_s:EFI"BigDecimal#to_s;FF:publico:RDoc::Markup::Document:@parts[o:RDoc::Markup::Paragraph;	[I"$Converts the value to a string.;Fo:RDoc::Markup::BlankLine o;
;	[I".The default format looks like  0.xxxxEnn.;Fo; o;
;	[I"OThe optional parameter s consists of either an integer; or an optional '+';FI"Por ' ', followed by an optional number, followed by an optional 'E' or 'F'.;Fo; o;
;	[I"KIf there is a '+' at the start of s, positive values are returned with;FI"a leading '+'.;Fo; o;
;	[I"LA space at the start of s returns positive values with a leading space.;Fo; o;
;	[I"NIf s contains a number, a space is inserted after each group of that many;FI"fractional digits.;Fo; o;
;	[I"EIf s ends with an 'E', engineering notation (0.xxxxEnn) is used.;Fo; o;
;	[I"IIf s ends with an 'F', conventional floating point notation is used.;Fo; o;
;	[I"Examples:;Fo; o;
;	[I"VBigDecimal.new('-123.45678901234567890').to_s('5F') -> '-123.45678 90123 45678 9';Fo; o;
;	[I"TBigDecimal.new('123.45678901234567890').to_s('+8F') -> '+123.45678901 23456789';Fo; o;
;	[I"RBigDecimal.new('123.45678901234567890').to_s(' F') -> ' 123.4567890123456789';FI"to_s(s)
;F0[ I"
(...);F