U:RDoc::AnyMethod[iI"	sign:EFI"BigDecimal#sign;FF:publico:RDoc::Markup::Document:@parts[o:RDoc::Markup::Paragraph;	[I"#Returns the sign of the value.;Fo:RDoc::Markup::BlankLine o;
;	[I"DReturns a positive value if > 0, a negative value if < 0, and a;FI"zero if == 0.;Fo; o;
;	[I"OThe specific value returned indicates the type and sign of the BigDecimal,;FI"as follows:;Fo; o:RDoc::Markup::List:
@type:	NOTE:@items[o:RDoc::Markup::ListItem:@labelI"BigDecimal::SIGN_NaN;F;	[o;
;	[I"value is Not a Number;Fo;;I"#BigDecimal::SIGN_POSITIVE_ZERO;F;	[o;
;	[I"value is +0;Fo;;I"#BigDecimal::SIGN_NEGATIVE_ZERO;F;	[o;
;	[I"value is -0;Fo;;I"'BigDecimal::SIGN_POSITIVE_INFINITE;F;	[o;
;	[I"value is +infinity;Fo;;I"'BigDecimal::SIGN_NEGATIVE_INFINITE;F;	[o;
;	[I"value is -infinity;Fo;;I"%BigDecimal::SIGN_POSITIVE_FINITE;F;	[o;
;	[I"value is positive;Fo;;I"%BigDecimal::SIGN_NEGATIVE_FINITE;F;	[o;
;	[I"value is negative;F00[ I"();F