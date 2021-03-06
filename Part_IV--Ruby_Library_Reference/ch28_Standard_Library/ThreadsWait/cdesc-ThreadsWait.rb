U:RDoc::NormalClass[i I"ThreadsWait:EF@I"Object;Fo:RDoc::Markup::Document:@parts[o:RDoc::Markup::Paragraph;[	I"QThis class watches for termination of multiple threads.  Basic functionality;FI"O(wait until specified threads have terminated) can be accessed through the;FI"Lclass method ThreadsWait::all_waits.  Finer control can be gained using;FI"instance methods.;Fo:RDoc::Markup::BlankLine o;	;[I"Example:;Fo;
 o:RDoc::Markup::Verbatim;[I"  ;FI"1ThreadsWait.all_wait(thr1, thr2, ...) do |t|;FI"
;FI"	    ;FI".STDERR.puts "Thread #{t} has terminated.";FI"
;FI"  ;FI"end;FI"
;FI"
;FI"  ;FI"
;FI"  ;FI"&th = ThreadsWait.new(thread1,...);FI"
;FI"  ;FI"'th.next_wait # next one to be done;FI"
;FI"   ;Fo;	;[	I"QThis class watches for termination of multiple threads.  Basic functionality;FI"O(wait until specified threads have terminated) can be accessed through the;FI"Lclass method ThreadsWait::all_waits.  Finer control can be gained using;FI"instance methods.;Fo;
 o;	;[I"Example:;Fo;
 o;;[I"  ;FI"1ThreadsWait.all_wait(thr1, thr2, ...) do |t|;FI"
;FI"	    ;FI".STDERR.puts "Thread #{t} has terminated.";FI"
;FI"  ;FI"end;FI"
;FI"
;FI"  ;FI"
;FI"  ;FI"&th = ThreadsWait.new(thread1,...);FI"
;FI"  ;FI"'th.next_wait # next one to be done;FI"
;FI"   ;F[[I"threads;FI"RR;F[[I"RCS_ID;Fo;;[ [I"RCS_ID;Fo;;[ [ [[I"
class;F[[:public[I"all_waits;FI"new;F[:protected[ [:private[ [I"instance;F[[;[I"all_waits;FI"empty?;FI"finished?;FI"	join;FI"join_nowait;FI"next_wait;F[;[ [;[ 