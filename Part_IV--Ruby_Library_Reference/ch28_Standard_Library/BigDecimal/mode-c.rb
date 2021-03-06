U:RDoc::AnyMethod[iI"	mode:EFI"BigDecimal::mode;FT:publico:RDoc::Markup::Document:@parts[o:RDoc::Markup::Paragraph;	[I"IControls handling of arithmetic exceptions and rounding. If no value;FI"0is supplied, the current value is returned.;Fo:RDoc::Markup::BlankLine o;
;	[I"HSix values of the mode parameter control the handling of arithmetic;FI"exceptions:;Fo; o;
;	[I"BigDecimal::EXCEPTION_NaN;FI"#BigDecimal::EXCEPTION_INFINITY;FI"$BigDecimal::EXCEPTION_UNDERFLOW;FI"#BigDecimal::EXCEPTION_OVERFLOW;FI"%BigDecimal::EXCEPTION_ZERODIVIDE;FI"BigDecimal::EXCEPTION_ALL;Fo; o;
;	[I"JFor each mode parameter above, if the value set is false, computation;FI"Econtinues after an arithmetic exception of the appropriate type.;FI"8When computation continues, results are as follows:;Fo; o:RDoc::Markup::List:
@type:	NOTE:@items[
o:RDoc::Markup::ListItem:@labelI"EXCEPTION_NaN;F;	[o;
;	[I"NaN;Fo;;I"EXCEPTION_INFINITY;F;	[o;
;	[I"+infinity or -infinity;Fo;;I"EXCEPTION_UNDERFLOW;F;	[o;
;	[I"0;Fo;;I"EXCEPTION_OVERFLOW;F;	[o;
;	[I"+infinity or -infinity;Fo;;I"EXCEPTION_ZERODIVIDE;F;	[o;
;	[I"+infinity or -infinity;Fo; o;
;	[I"MOne value of the mode parameter controls the rounding of numeric values:;FI"8BigDecimal::ROUND_MODE. The values it can take are:;Fo; o;;;;[o;;I"ROUND_UP;F;	[o;
;	[I"round away from zero;Fo;;I"ROUND_DOWN;F;	[o;
;	[I""round towards zero (truncate);Fo;;I"ROUND_HALF_UP;F;	[o;
;	[I"Iround up if the appropriate digit >= 5, otherwise truncate (default);Fo;;I"ROUND_HALF_DOWN;F;	[o;
;	[I"?round up if the appropriate digit >= 6, otherwise truncate;Fo;;I"ROUND_HALF_EVEN;F;	[o;
;	[I"8round towards the even neighbor (Banker's rounding);Fo;;I"ROUND_CEILING;F;	[o;
;	[I"+round towards positive infinity (ceil);Fo;;I"ROUND_FLOOR;F;	[o;
;	[I",round towards negative infinity (floor);FI""BigDecimal.mode(mode, value)
;F0[ I"
(...);F