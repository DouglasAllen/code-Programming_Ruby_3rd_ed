U:RDoc::AnyMethod[iI"ordinal:EFI"DateTime::ordinal;FT:publico:RDoc::Markup::Document:@parts[o:RDoc::Markup::Paragraph;	[I"@Create a new DateTime object corresponding to the specified;FI"9Ordinal Date and hour +h+, minute +min+, second +s+.;Fo:RDoc::Markup::BlankLine o;
;	[
I"CThe 24-hour clock is used.  Negative values of +h+, +min+, and;FI"A+sec+ are treating as counting backwards from the end of the;FI"@next larger unit (e.g. a +min+ of -2 is treated as 58).  No;FI"Gwraparound is performed.  If an invalid time portion is specified,;FI" an ArgumentError is raised.;Fo; o;
;	[I"H+of+ is the offset from UTC as a fraction of a day (defaults to 0).;FI"/+sg+ specifies the Day of Calendar Reform.;Fo; o;
;	[I"C+y+ defaults to -4712, and +d+ to 1; this is Julian Day Number;FI"*day 0.  The time values default to 0.;F00[ I"4(y=-4712, d=1, h=0, min=0, s=0, of=0, sg=ITALY);F