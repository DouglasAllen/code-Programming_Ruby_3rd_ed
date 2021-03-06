U:RDoc::AnyMethod[iI"at_exit:EFI"Kernel#at_exit;FF:publico:RDoc::Markup::Document:@parts[o:RDoc::Markup::Paragraph;	[	I"7Converts _block_ to a +Proc+ object (and therefore;FI"Gbinds it at the point of call) and registers it for execution when;FI"Ethe program exits. If multiple handlers are registered, they are;FI"/executed in reverse order of registration.;Fo:RDoc::Markup::BlankLine o:RDoc::Markup::Verbatim;	[I"   ;FI"def do_at_exit(str1);FI"
;FI"
     ;FI"at_exit { print str1 };FI"
;FI"   ;FI"end;FI"
;FI"   ;FI"#at_exit { puts "cruel world" };FI"
;FI"   ;FI"do_at_exit("goodbye ");FI"
;FI"   ;FI"	exit;FI"
;Fo;
;	[I"<em>produces:</em>;Fo; o;;	[I"   ;FI"goodbye cruel world;FI"at_exit { block } -> proc
;F0[ I"();F