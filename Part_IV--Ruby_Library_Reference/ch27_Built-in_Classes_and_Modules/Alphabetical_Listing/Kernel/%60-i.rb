U:RDoc::AnyMethod[iI"`:EFI"Kernel#`;FF:publico:RDoc::Markup::Document:@parts[o:RDoc::Markup::Paragraph;	[I"@Returns the standard output of running _cmd_ in a subshell.;FI"2The built-in syntax <code>%x{...}</code> uses;FI"=this method. Sets <code>$?</code> to the process status.;Fo:RDoc::Markup::BlankLine o:RDoc::Markup::Verbatim;	[I"   ;FI"B`date`                   #=> "Wed Apr  9 08:56:30 CDT 2003\n";FI"
;FI"   ;FI"+`ls testdir`.split[1]    #=> "main.rb";FI"
;FI"   ;FI"*`echo oops && exit 99`   #=> "oops\n";FI"
;FI"   ;FI"$$?.exitstatus            #=> 99;FI"`cmd`    -> string
;F0[ I"	(p1);F