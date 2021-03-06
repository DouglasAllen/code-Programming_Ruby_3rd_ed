U:RDoc::AnyMethod[iI"waitall:EFI"Process::waitall;FT:publico:RDoc::Markup::Document:@parts[o:RDoc::Markup::Paragraph;	[I"2Waits for all children, returning an array of;FI"._pid_/_status_ pairs (where _status_ is a;FI"*<code>Process::Status</code> object).;Fo:RDoc::Markup::BlankLine o:RDoc::Markup::Verbatim;	[I"   ;FI"+fork { sleep 0.2; exit 2 }   #=> 27432;FI"
;FI"   ;FI"+fork { sleep 0.1; exit 1 }   #=> 27433;FI"
;FI"   ;FI"+fork {            exit 0 }   #=> 27434;FI"
;FI"   ;FI"p Process.waitall;FI"
;Fo;
;	[I"<em>produces</em>:;Fo; o;;	[I"   ;FI"7[[27434, #<Process::Status: pid=27434,exited(0)>],;FI"
;FI"	    ;FI"6[27433, #<Process::Status: pid=27433,exited(1)>],;FI"
;FI"	    ;FI"6[27432, #<Process::Status: pid=27432,exited(2)>]];FI" ;FI"1Process.waitall   -> [ [pid1,status1], ...]
;F0[ I"();F