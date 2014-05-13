U:RDoc::AnyMethod[iI"make_expires:EFI"#Rinda::TupleEntry#make_expires;FF:publico:RDoc::Markup::Document:@parts[o:RDoc::Markup::Paragraph;	[I"?Returns an expiry Time based on +sec+ which can be one of:;Fo:RDoc::Markup::List:
@type:	NOTE:@items[o:RDoc::Markup::ListItem:@labelI"Numeric;F;	[o;
;	[I""+sec+ seconds into the future;Fo;;I"+true+;F;	[o;
;	[I"8the expiry time is the start of 1970 (i.e. expired);Fo;;I"
+nil+;F;	[o;
;	[I"Ait is  Tue Jan 19 03:14:07 GMT Standard Time 2038 (i.e. when;FI"UNIX clocks will die);F00[ I"(sec=nil);F