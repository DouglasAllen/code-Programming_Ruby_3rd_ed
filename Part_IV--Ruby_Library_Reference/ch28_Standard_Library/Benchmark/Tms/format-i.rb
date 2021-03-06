U:RDoc::AnyMethod[iI"format:EFI"Benchmark::Tms#format;FF:publico:RDoc::Markup::Document:@parts[	o:RDoc::Markup::Paragraph;	[	I"/Returns the contents of this Tms object as;FI"5a formatted string, according to a format string;FI"<like that passed to Kernel.format. In addition, #format;FI"&accepts the following extensions:;Fo:RDoc::Markup::BlankLine o:RDoc::Markup::List:
@type:	NOTE:@items[o:RDoc::Markup::ListItem:@labelI"<tt>%u</tt>;F;	[o;
;	[I"=Replaced by the user CPU time, as reported by Tms#utime.;Fo;;I"<tt>%y</tt>;F;	[o;
;	[I"WReplaced by the system CPU time, as reported by #stime (Mnemonic: y of "s*y*stem");Fo;;I"<tt>%U</tt>;F;	[o;
;	[I"HReplaced by the children's user CPU time, as reported by Tms#cutime;Fo;;I"<tt>%Y</tt>;F;	[o;
;	[I"JReplaced by the children's system CPU time, as reported by Tms#cstime;Fo;;I"<tt>%t</tt>;F;	[o;
;	[I"=Replaced by the total CPU time, as reported by Tms#total;Fo;;I"<tt>%r</tt>;F;	[o;
;	[I"?Replaced by the elapsed real time, as reported by Tms#real;Fo;;I"<tt>%n</tt>;F;	[o;
;	[I"UReplaced by the label string, as reported by Tms#label (Mnemonic: n of "*n*ame");Fo; o;
;	[I"MIf _fmtstr_ is not given, FMTSTR is used as default value, detailing the;FI"(user, system and real elapsed time.;F00[ I"(arg0 = nil, *args);F