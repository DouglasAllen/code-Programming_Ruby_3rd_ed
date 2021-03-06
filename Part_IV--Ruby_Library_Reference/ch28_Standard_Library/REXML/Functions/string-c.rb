U:RDoc::AnyMethod[iI"string:EFI"REXML::Functions::string;FT:publico:RDoc::Markup::Document:@parts[o:RDoc::Markup::Paragraph;	[I"MA node-set is converted to a string by returning the string-value of the;FI"Mnode in the node-set that is first in document order. If the node-set is;FI"(empty, an empty string is returned.;Fo:RDoc::Markup::BlankLine o;
;	[I"1A number is converted to a string as follows;Fo; o;
;	[I"'NaN is converted to the string NaN;Fo; o;
;	[I"/positive zero is converted to the string 0;Fo; o;
;	[I"/negative zero is converted to the string 0;Fo; o;
;	[I":positive infinity is converted to the string Infinity;Fo; o;
;	[I";negative infinity is converted to the string -Infinity;Fo; o;
;	[I"Kif the number is an integer, the number is represented in decimal form;FI"Jas a Number with no decimal point and no leading zeros, preceded by a;FI"-minus sign (-) if the number is negative;Fo; o;
;	[I"Eotherwise, the number is represented in decimal form as a Number;FI"Iincluding a decimal point with at least one digit before the decimal;FI"Hpoint and at least one digit after the decimal point, preceded by a;FI"Mminus sign (-) if the number is negative; there must be no leading zeros;FI"Hbefore the decimal point apart possibly from the one required digit;FI"Himmediately before the decimal point; beyond the one required digit;FI"Jafter the decimal point there must be as many, but only as many, more;FI"Kdigits as are needed to uniquely distinguish the number from all other;FI"IEEE 754 numeric values.;Fo; o;
;	[I"JThe boolean false value is converted to the string false. The boolean;FI"0true value is converted to the string true.;Fo; o;
;	[I"JAn object of a type other than the four basic types is converted to a;FI"4string in a way that is dependent on that type.;F00[ I"( object=nil );F