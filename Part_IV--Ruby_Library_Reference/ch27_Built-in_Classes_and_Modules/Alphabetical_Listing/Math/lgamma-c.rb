U:RDoc::AnyMethod[iI"lgamma:EFI"Math::lgamma;FT:publico:RDoc::Markup::Document:@parts[
o:RDoc::Markup::Paragraph;	[I".Calculates the logarithmic gamma of x and;FI"the sign of gamma of x.;Fo:RDoc::Markup::BlankLine o;
;	[I"Math.lgamma(x) is same as;Fo:RDoc::Markup::Verbatim;	[	I" ;FI">[Math.log(Math.gamma(x).abs), Math.gamma(x) < 0 ? -1 : 1];FI" ;FI"
;Fo;
;	[I"5but avoid overflow by Math.gamma(x) for large x.;FI")Math.lgamma(x)  -> [float, -1 or 1]
;F0[ I"	(p1);F