U:RDoc::NormalModule[i I"ObjectSpace:EF@0o:RDoc::Markup::Document:@parts[o:RDoc::Markup::Paragraph;[I"FThe <code>ObjectSpace</code> module contains a number of routines;FI"Hthat interact with the garbage collection facility and allow you to;FI"2traverse all living objects with an iterator.;Fo:RDoc::Markup::BlankLine o;	;[I"><code>ObjectSpace</code> also provides support for object;FI"Dfinalizers, procs that will be called when a specific object is;FI"1about to be destroyed by garbage collection.;Fo;
 o:RDoc::Markup::Verbatim;[I"   ;FI"include ObjectSpace;FI"
;FI"
;FI"   ;FI"a = "A";FI"
;FI"   ;FI"b = "B";FI"
;FI"   ;FI"c = "C";FI"
;FI"
;FI"   ;FI"Ddefine_finalizer(a, proc {|id| puts "Finalizer one on #{id}" });FI"
;FI"   ;FI"Ddefine_finalizer(a, proc {|id| puts "Finalizer two on #{id}" });FI"
;FI"   ;FI"Fdefine_finalizer(b, proc {|id| puts "Finalizer three on #{id}" });FI"
;Fo;	;[I"<em>produces:</em>;Fo;
 o;;[I"   ;FI"!Finalizer three on 537763470;FI"
;FI"   ;FI"Finalizer one on 537763480;FI"
;FI"   ;FI"Finalizer two on 537763480;F[ [ [ [[I"
class;F[[:public[I"_id2ref;FI"count_objects;FI"define_finalizer;FI"each_object;FI"garbage_collect;FI"undefine_finalizer;F[:protected[ [:private[ [I"instance;F[[;[ [;[ [;[ 