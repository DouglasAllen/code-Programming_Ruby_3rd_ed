U:RDoc::NormalClass[i I"ZStream:EFI"Zlib::ZStream;FI"Object;Fo:RDoc::Markup::Document:@parts[o:RDoc::Markup::Paragraph;[I"IZlib::ZStream is the abstract class for the stream which handles the;FI"Ccompressed data. The operations are defined in the subclasses:;FI"HZlib::Deflate for compression, and Zlib::Inflate for decompression.;Fo:RDoc::Markup::BlankLine o;	;[
I"OAn instance of Zlib::ZStream has one stream (struct zstream in the source);FI"Oand two variable-length buffers which associated to the input (next_in) of;FI"Jthe stream and the output (next_out) of the stream. In this document,;FI"M"input buffer" means the buffer for input, and "output buffer" means the;FI"buffer for output.;Fo;
 o;	;[I"LData input into an instance of Zlib::ZStream are temporally stored into;FI"Nthe end of input buffer, and then data in input buffer are processed from;FI"Hthe beginning of the buffer until no more output from the stream is;FI"Nproduced (i.e. until avail_out > 0 after processing).  During processing,;FI"Moutput buffer is allocated and expanded automatically to hold all output;FI"
data.;Fo;
 o;	;[I"KSome particular instance methods consume the data in output buffer and;FI"return them as a String.;Fo;
 o;	;[I"/Here is an ascii art for describing above:;Fo;
 o:RDoc::Markup::Verbatim;[&I"   ;FI"E+================ an instance of Zlib::ZStream ================+;FI"
;FI"   ;FI"E||                                                            ||;FI"
;FI"   ;FI"E||     +--------+          +-------+          +--------+      ||;FI"
;FI"   ;FI"E||  +--| output |<---------|zstream|<---------| input  |<--+  ||;FI"
;FI"   ;FI"E||  |  | buffer |  next_out+-------+next_in   | buffer |   |  ||;FI"
;FI"   ;FI"E||  |  +--------+                             +--------+   |  ||;FI"
;FI"   ;FI"E||  |                                                      |  ||;FI"
;FI"   ;FI"E+===|======================================================|===+;FI"
;FI"       ;FI"=|                                                      |;FI"
;FI"       ;FI"=v                                                      |;FI"
;FI"   ;FI"G"output data"                                         "input data";FI"
;Fo;	;[I"OIf an error occurs during processing input buffer, an exception which is a;FI"Lsubclass of Zlib::Error is raised.  At that time, both input and output;FI"Dbuffer keep their conditions at the time when the error occurs.;Fo;
 S:RDoc::Markup::Heading:
leveli:	textI"Method Catalogue;Fo;
 o;	;[	I"NMany of the methods in this class are fairly low-level and unlikely to be;FI"Iof interest to users.  In fact, users are unlikely to use this class;FI"Bdirectly; rather they will be interested in Zlib::Inflate and;FI"Zlib::Deflate.;Fo;
 o;	;[I"/The higher level methods are listed below.;Fo;
 o:RDoc::Markup::List:
@type:BULLET:@items[o:RDoc::Markup::ListItem:@label0;[o;	;[I"#total_in;Fo;;0;[o;	;[I"#total_out;Fo;;0;[o;	;[I"#data_type;Fo;;0;[o;	;[I"#adler;Fo;;0;[o;	;[I"#reset;Fo;;0;[o;	;[I"#finish;Fo;;0;[o;	;[I"#finished?;Fo;;0;[o;	;[I"#close;Fo;;0;[o;	;[I"#closed?;F[ [ [ [[I"
class;F[[:public[ [:protected[ [:private[ [I"instance;F[[;[I"
adler;FI"avail_in;FI"avail_out;FI"avail_out=;FI"
close;FI"closed?;FI"data_type;FI"end;FI"ended?;FI"finish;FI"finished?;FI"flush_next_in;FI"flush_next_out;FI"
reset;FI"stream_end?;FI"total_in;FI"total_out;F[;[ [;[ 