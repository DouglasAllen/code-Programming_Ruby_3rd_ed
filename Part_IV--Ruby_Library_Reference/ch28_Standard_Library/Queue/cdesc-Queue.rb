U:RDoc::NormalClass[i I"
Queue:EF@I"Object;Fo:RDoc::Markup::Document:@parts[
o:RDoc::Markup::Paragraph;[I"LThis class provides a way to synchronize communication between threads.;Fo:RDoc::Markup::BlankLine o;	;[I"Example:;Fo;
 o:RDoc::Markup::Verbatim;[;I"  ;FI"require 'thread';FI"
;FI"
;FI"  ;FI"queue = Queue.new;FI"
;FI"
;FI"  ;FI"producer = Thread.new do;FI"
;FI"	    ;FI"5.times do |i|;FI"
;FI"      ;FI"%sleep rand(i) # simulate expense;FI"
;FI"      ;FI"queue << i;FI"
;FI"      ;FI"puts "#{i} produced";FI"
;FI"	    ;FI"end;FI"
;FI"  ;FI"end;FI"
;FI"
;FI"  ;FI"consumer = Thread.new do;FI"
;FI"	    ;FI"5.times do |i|;FI"
;FI"      ;FI"value = queue.pop;FI"
;FI"      ;FI"'sleep rand(i/2) # simulate expense;FI"
;FI"      ;FI"puts "consumed #{value}";FI"
;FI"	    ;FI"end;FI"
;FI"  ;FI"end;FI"
;FI"
;FI"  ;FI"consumer.join;F[ [ [ [[I"
class;F[[:public[I"new;F[:protected[ [:private[ [I"instance;F[[;[I"<<;FI"
clear;FI"deq;FI"empty?;FI"enq;FI"length;FI"num_waiting;FI"pop;FI"	push;FI"
shift;FI"	size;F[;[ [;[ 