U:RDoc::NormalModule[i I"Timeout:EF@0o:RDoc::Markup::Document:@parts[S:RDoc::Markup::Heading:
leveli:	textI"timeout.rb;Fo:RDoc::Markup::BlankLine o:RDoc::Markup::Paragraph;[I"execution timeout;Fo; S;	;
i;I"Synopsis;Fo; o:RDoc::Markup::Verbatim;[I"  ;FI"require 'timeout';FI"
;FI"  ;FI"#status = Timeout::timeout(5) {;FI"
;FI"	    ;FI"H# Something that should be interrupted if it takes too much time...;FI"
;FI"  ;FI"};FI"
;FS;	;
i;I"Description;Fo; o;;[I"ZA way of performing a potentially long-running operation in a thread, and terminating;FI"Dit's execution if it hasn't finished by a fixed amount of time.;Fo; o;;[I"YPrevious versions of timeout didn't provide use a module for namespace. This version;FI"Hprovides both Timeout.timeout, and a backwards-compatible #timeout.;Fo; S;	;
i;I"Copyright;Fo; o:RDoc::Markup::List:
@type:	NOTE:@items[o:RDoc::Markup::ListItem:@labelI"Copyright;F;[o;;[I"=(C) 2000  Network Applied Communication Laboratory, Inc.;Fo;;I"Copyright;F;[o;;[I"=(C) 2000  Information-technology Promotion Agency, Japan;F[ [[I"THIS_FILE;Fo;;[ [I"CALLER_OFFSET;Fo;;[ [ [[I"
class;F[[:public[I"timeout;F[:protected[ [:private[ [I"instance;F[[;[ [;[ [;[@Q