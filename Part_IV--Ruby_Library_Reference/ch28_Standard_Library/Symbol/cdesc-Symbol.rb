U:RDoc::NormalClass[i I"Symbol:EF@I"Object;Fo:RDoc::Markup::Document:@parts[o:RDoc::Markup::Paragraph;[I"A<code>Symbol</code> objects represent names and some strings;FI"inside the Ruby;FI"Einterpreter. They are generated using the <code>:name</code> and;FI"$<code>:"string"</code> literals;FI"Esyntax, and by the various <code>to_sym</code> methods. The same;FI"J<code>Symbol</code> object will be created for a given name or string;FI"Ifor the duration of a program's execution, regardless of the context;FI"Hor meaning of that name. Thus if <code>Fred</code> is a constant in;FI"Bone context, a method in another, and a class in a third, the;FI"F<code>Symbol</code> <code>:Fred</code> will be the same object in;FI"all three contexts.;Fo:RDoc::Markup::BlankLine o:RDoc::Markup::Verbatim;[1I"   ;FI"module One;FI"
;FI"
     ;FI"class Fred;FI"
;FI"
     ;FI"end;FI"
;FI"
     ;FI"$f1 = :Fred;FI"
;FI"   ;FI"end;FI"
;FI"   ;FI"module Two;FI"
;FI"
     ;FI"Fred = 1;FI"
;FI"
     ;FI"$f2 = :Fred;FI"
;FI"   ;FI"end;FI"
;FI"   ;FI"def Fred();FI"
;FI"   ;FI"end;FI"
;FI"   ;FI"$f3 = :Fred;FI"
;FI"   ;FI" $f1.object_id   #=> 2514190;FI"
;FI"   ;FI" $f2.object_id   #=> 2514190;FI"
;FI"   ;FI" $f3.object_id   #=> 2514190;F[ [ [[I"Comparable;Fo;;[ [[I"
class;F[[:public[I"all_symbols;FI"json_create;F[:protected[ [:private[ [I"instance;F[[;[I"<=>;FI"==;FI"===;FI"=~;FI"[];FI"capitalize;FI"casecmp;FI"dclone;FI"downcase;FI"empty?;FI"encoding;FI"id2name;FI"inspect;FI"intern;FI"length;FI"
match;FI"	next;FI"	size;FI"
slice;FI"	succ;FI"swapcase;FI"to_json;FI"to_proc;FI"	to_s;FI"to_sym;FI"upcase;F[;[ [;[ 