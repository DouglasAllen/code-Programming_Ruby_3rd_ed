U:RDoc::AnyMethod[iI"add:EFI"Logger#add;FF:publico:RDoc::Markup::Document:@parts[S:RDoc::Markup::Heading:
leveli:	textI"Synopsis;Fo:RDoc::Markup::BlankLine o:RDoc::Markup::Verbatim;	[I"  ;FI"@Logger#add(severity, message = nil, progname = nil) { ... };FI"
;FS;
;i;I"	Args;Fo; o:RDoc::Markup::List:
@type:	NOTE:@items[	o:RDoc::Markup::ListItem:@labelI"+severity+;F;	[o:RDoc::Markup::Paragraph;	[I"KSeverity.  Constants are defined in Logger namespace: +DEBUG+, +INFO+,;FI",+WARN+, +ERROR+, +FATAL+, or +UNKNOWN+.;Fo;;I"+message+;F;	[o;;	[I"-The log message.  A String or Exception.;Fo;;I"+progname+;F;	[o;;	[I"TProgram name string.  Can be omitted.  Treated as a message if no +message+ and;FI"+block+ are given.;Fo;;I"+block+;F;	[o;;	[I"ICan be omitted.  Called to get a message string if +message+ is nil.;Fo; S;
;i;I"Return;Fo; o;;	[I"-+true+ if successful, +false+ otherwise.;Fo; o;;	[I"QWhen the given severity is not high enough (for this particular logger), log;FI"#no message, and return +true+.;Fo; S;
;i;I"Description;Fo; o;;	[I"MLog a message if the given severity is high enough.  This is the generic;FI"Nlogging method.  Users will be more inclined to use #debug, #info, #warn,;FI"#error, and #fatal.;Fo; o;;	[I"I<b>Message format</b>: +message+ can be any object, but it has to be;FI"Lconverted to a String in order to log it.  Generally, +inspect+ is used;FI")if the given object is not a String.;FI"NA special case is an +Exception+ object, which will be printed in detail,;FI"Cincluding message, class, and backtrace.  See #msg2str for the;FI" implementation if required.;Fo; S;
;i;I"	Bugs;Fo; o;;:BULLET;[o;;0;	[o;;	[I"Logfile is not locked.;Fo;;0;	[o;;	[I",Append open does not need to lock file.;Fo;;0;	[o;;	[I"GBut on the OS which supports multi I/O, records possibly be mixed.;F0I" ;F[[I"Logger#log;Fo;;	[ I"6(severity, message = nil, progname = nil, &block);F