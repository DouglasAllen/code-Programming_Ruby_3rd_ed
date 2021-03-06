U:RDoc::NormalClass[i I"DateTime:EF@I"	Date;Fo:RDoc::Markup::Document:@parts[*o:RDoc::Markup::Paragraph;[I"(Class representing a date and time.;Fo:RDoc::Markup::BlankLine o;	;[I"?See the documentation to the file date.rb for an overview.;Fo;
 o;	;[I"1DateTime objects are immutable once created.;Fo;
 S:RDoc::Markup::Heading:
leveli:	textI"Other methods.;Fo;
 o;	;[I"DThe following methods are defined in Date, but declared private;FI"Cthere.  They are made public in DateTime.  They are documented;FI"
here.;Fo;
 S;;i;I"hour();Fo;
 o;	;[	I"8Get the hour-of-the-day of the time.  This is given;FI"@using the 24-hour clock, counting from midnight.  The first;FI"?hour after midnight is hour 0; the last hour of the day is;FI"hour 23.;Fo;
 S;;i;I"
min();Fo;
 o;	;[I",Get the minute-of-the-hour of the time.;Fo;
 S;;i;I"
sec();Fo;
 o;	;[I".Get the second-of-the-minute of the time.;Fo;
 S;;i;I"sec_fraction();Fo;
 o;	;[I"CGet the fraction of a second of the time.  This is returned as;FI"a +Rational+.;Fo;
 S;;i;I"zone();Fo;
 o;	;[I"BGet the time zone as a String.  This is representation of the;FI">time offset such as "+1000", not the true time-zone name.;Fo;
 S;;i;I"offset();Fo;
 o;	;[I"GGet the time zone offset as a fraction of a day.  This is returned;FI"as a +Rational+.;Fo;
 S;;i;I"new_offset(of=0);Fo;
 o;	;[I"GCreate a new DateTime object, identical to the current one, except;FI"Fwith a new time zone offset of +of+.  +of+ is the new offset from;FI" UTC as a fraction of a day.;F[ [ [ [[I"
class;F[[:public[I"_strptime;FI"
civil;FI"commercial;FI"jd;FI"json_create;FI"ordinal;FI"
parse;FI"strptime;F[:protected[ [:private[ [I"instance;F[[;[I"iso8601;FI"jisx0301;FI"rfc3339;FI"strftime;FI"to_date;FI"to_datetime;FI"to_json;FI"	to_s;FI"to_time;FI"xmlschema;F[;[ [;[ 