U:RDoc::AnyMethod[iI"
limit:EFI"BigDecimal::limit;FT:publico:RDoc::Markup::Document:@parts[
o:RDoc::Markup::Paragraph;	[I"GLimit the number of significant digits in newly created BigDecimal;FI"Hnumbers to the specified value. Rounding is performed as necessary,;FI"%as specified by BigDecimal.mode.;Fo:RDoc::Markup::BlankLine o;
;	[I"5A limit of 0, the default, means no upper limit.;Fo; o;
;	[I"JThe limit specified by this method takes less priority over any limit;FI"Kspecified to instance methods such as ceil, floor, truncate, or round.;FI"BigDecimal.limit(digits)
;F0[ I"
(...);F