U:RDoc::AnyMethod[iI"on_event:EFI"WIN32OLE_EVENT#on_event;FF:publico:RDoc::Markup::Document:@parts[o:RDoc::Markup::Paragraph;	[
I" Defines the callback event.;FI"LIf argument is omitted, this method defines the callback of all events.;FI"IIf you want to modify reference argument in callback, return hash in;FI"Ncallback. If you want to return value to OLE server as result of callback;FI"use `return' or :return.;Fo:RDoc::Markup::BlankLine o:RDoc::Markup::Verbatim;	[6I"  ;FI"6ie = WIN32OLE.new('InternetExplorer.Application');FI"
;FI"  ;FI" ev = WIN32OLE_EVENT.new(ie);FI"
;FI"  ;FI"5ev.on_event("NavigateComplete") {|url| puts url};FI"
;FI"  ;FI"3ev.on_event() {|ev, *args| puts "#{ev} fired"};FI"
;FI"
;FI"  ;FI",ev.on_event("BeforeNavigate2") {|*args|;FI"
;FI"	    ;FI"...;FI"
;FI"	    ;FI"># set true to BeforeNavigate reference argument `Cancel'.;FI"
;FI"	    ;FI"1# Cancel is 7-th argument of BeforeNavigate,;FI"
;FI"	    ;FI";# so you can use 6 as key of hash instead of 'Cancel'.;FI"
;FI"	    ;FI"&# The argument is counted from 0.;FI"
;FI"	    ;FI"/# The hash key of 0 means first argument.);FI"
;FI"	    ;FI">{:Cancel => true}  # or {'Cancel' => true} or {6 => true};FI"
;FI"  ;FI"};FI"
;FI"
;FI"  ;FI"ev.on_event(...) {|*args|;FI"
;FI"	    ;FI" {:return => 1, :xxx => yyy};FI"
;FI"  ;FI"};FI"+WIN32OLE_EVENT#on_event([event]){...}
;F0[ I"
(...);F