U:RDoc::AnyMethod[iI"read_body:EFI"Net#read_body;FF:publico:RDoc::Markup::Document:@parts[
o:RDoc::Markup::Paragraph;	[I"AGets entity body.  If the block given, yields it to +block+.;FI"IThe body is provided in fragments, as it is read in from the socket.;Fo:RDoc::Markup::BlankLine o;
;	[I"DCalling this method a second or subsequent time will return the;FI"already read string.;Fo; o:RDoc::Markup::Verbatim;	[-I"  ;FI"+http.request_get('/index.html') {|res|;FI"
;FI"	    ;FI"puts res.read_body;FI"
;FI"  ;FI"};FI"
;FI"
;FI"  ;FI"+http.request_get('/index.html') {|res|;FI"
;FI"	    ;FI",p res.read_body.object_id   # 538149362;FI"
;FI"	    ;FI",p res.read_body.object_id   # 538149362;FI"
;FI"  ;FI"};FI"
;FI"
;FI"  ;FI"# using iterator;FI"
;FI"  ;FI"+http.request_get('/index.html') {|res|;FI"
;FI"	    ;FI"res.read_body do |segment|;FI"
;FI"      ;FI"print segment;FI"
;FI"	    ;FI"end;FI"
;FI"  ;FI"};F00[ I"(dest = nil, &block);F