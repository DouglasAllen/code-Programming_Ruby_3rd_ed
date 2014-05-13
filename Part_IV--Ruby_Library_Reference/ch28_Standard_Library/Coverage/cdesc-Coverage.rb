U:RDoc::NormalModule[i I"Coverage:EF@0o:RDoc::Markup::Document:@parts[o:RDoc::Markup::Paragraph;[I"=Coverage provides coverage measurement feature for Ruby.;FI"JThis feature is experimental, so these APIs may be changed in future.;Fo:RDoc::Markup::BlankLine S:RDoc::Markup::Heading:
leveli:	textI"
Usage;Fo;
 o;	;[	I"(1) require "coverage.so";FI"(2) do Coverage.start;FI")(3) require or load Ruby source file;FI"M(4) Coverage.result will return a hash that contains filename as key and;Fo:RDoc::Markup::Verbatim;[I"	    ;FI"coverage array as value.;FI"
;FS;;i;I"Example;Fo;
 o;;[5I"  ;FI"[foo.rb];FI" ;FI"
;FI"  ;FI"
s = 0;FI"
;FI"  ;FI"10.times do |x|;FI"
;FI"	    ;FI"s += x;FI"
;FI"  ;FI"end;FI"
;FI"
;FI"  ;FI"if s == 45;FI"
;FI"	    ;FI"
p :ok;FI"
;FI"  ;FI"	else;FI"
;FI"	    ;FI"
p :ng;FI"
;FI"  ;FI"end;FI"
;FI"  ;FI"
[EOF];FI" ;FI"
;FI"
;FI"  ;FI"require "coverage.so";FI"
;FI"  ;FI"Coverage.start;FI"
;FI"  ;FI"require "foo.rb";FI"
;FI"  ;FI"Op Coverage.result  #=> {"foo.rb"=>[1, 1, 10, nil, nil, 1, 1, nil, 0, nil]};F[ [ [ [[I"
class;F[[:public[I"result;FI"
start;F[:protected[ [:private[ [I"instance;F[[;[ [;[ [;[ 