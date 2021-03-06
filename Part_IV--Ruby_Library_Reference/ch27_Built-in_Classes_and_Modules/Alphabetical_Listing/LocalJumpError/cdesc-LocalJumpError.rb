U:RDoc::NormalClass[i I"LocalJumpError:EF@I"StandardError;Fo:RDoc::Markup::Document:@parts[o:RDoc::Markup::Paragraph;[I"/Raised when Ruby can't yield as requested.;Fo:RDoc::Markup::BlankLine o;	;[I"FA typical scenario is attempting to yield when no block is given:;Fo;
 o:RDoc::Markup::Verbatim;[I"   ;FI"def call_block;FI"
;FI"
     ;FI"yield 42;FI"
;FI"   ;FI"end;FI"
;FI"   ;FI"call_block;FI"
;Fo;	;[I"#<em>raises the exception:</em>;Fo;
 o;;[I"   ;FI"+LocalJumpError: no block given (yield);FI"
;Fo;	;[I"A more subtle example:;Fo;
 o;;[I"   ;FI"def get_me_a_return;FI"
;FI"
     ;FI"Proc.new { return 42 };FI"
;FI"   ;FI"end;FI"
;FI"   ;FI"get_me_a_return.call;FI"
;Fo;	;[I"#<em>raises the exception:</em>;Fo;
 o;;[I"   ;FI"&LocalJumpError: unexpected return;F[ [ [ [[I"
class;F[[:public[ [:protected[ [:private[ [I"instance;F[[;[I"exit_value;FI"reason;F[;[ [;[ 