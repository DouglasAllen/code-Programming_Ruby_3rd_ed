U:RDoc::AnyMethod[iI"
civil:EFI"DateTime::civil;FT:publico:RDoc::Markup::Document:@parts[o:RDoc::Markup::Paragraph;	[I"@Create a new DateTime object corresponding to the specified;FI"7Civil Date and hour +h+, minute +min+, second +s+.;Fo:RDoc::Markup::BlankLine o;
;	[
I"CThe 24-hour clock is used.  Negative values of +h+, +min+, and;FI"A+sec+ are treating as counting backwards from the end of the;FI"@next larger unit (e.g. a +min+ of -2 is treated as 58).  No;FI"Gwraparound is performed.  If an invalid time portion is specified,;FI" an ArgumentError is raised.;Fo; o;
;	[I"H+of+ is the offset from UTC as a fraction of a day (defaults to 0).;FI"/+sg+ specifies the Day of Calendar Reform.;Fo; o;
;	[I"F+y+ defaults to -4712, +m+ to 1, and +d+ to 1; this is Julian Day;FI"1Number day 0.  The time values default to 0.;F00[ I"9(y=-4712, m=1, d=1, h=0, min=0, s=0, of=0, sg=ITALY);F