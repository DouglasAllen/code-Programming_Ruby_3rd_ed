U:RDoc::AnyMethod[iI"number:EFI"REXML::Functions::number;FT:publico:RDoc::Markup::Document:@parts[o:RDoc::Markup::Paragraph;	[
I"Ja string that consists of optional whitespace followed by an optional;FI"Kminus sign followed by a Number followed by whitespace is converted to;FI"Cthe IEEE 754 number that is nearest (according to the IEEE 754;FI"Hround-to-nearest rule) to the mathematical value represented by the;FI"1string; any other string is converted to NaN;Fo:RDoc::Markup::BlankLine o;
;	[I"Dboolean true is converted to 1; boolean false is converted to 0;Fo; o;
;	[I"La node-set is first converted to a string as if by a call to the string;FI"Efunction and then converted in the same way as a string argument;Fo; o;
;	[I"Jan object of a type other than the four basic types is converted to a;FI"3number in a way that is dependent on that type;F00[ I"( object=nil );F