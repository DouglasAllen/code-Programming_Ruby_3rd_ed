U:RDoc::AnyMethod[iI"handler=:EFI"WIN32OLE_EVENT#handler=;FF:publico:RDoc::Markup::Document:@parts[o:RDoc::Markup::Paragraph;	[I";sets event handler object. If handler object has onXXX;FI"?method according to XXX event, then onXXX method is called;FI"when XXX event occurs.;Fo:RDoc::Markup::BlankLine o;
;	[I"9If handler object has method_missing and there is no;FI"7method according to the event, then method_missing;FI",called and 1-st argument is event name.;Fo; o;
;	[	I":If handler object has onXXX method and there is block;FI"1defined by WIN32OLE_EVENT#on_event('XXX'){},;FI"Cthen block is executed but handler object method is not called;FI"when XXX event occurs.;Fo; o:RDoc::Markup::Verbatim;	[>I"	    ;FI"class Handler;FI"
;FI"      ;FI"!def onStatusTextChange(text);FI"
;FI"        ;FI"puts "StatusTextChanged";FI"
;FI"      ;FI"end;FI"
;FI"      ;FI"def onPropertyChange(prop);FI"
;FI"        ;FI"puts "PropertyChanged";FI"
;FI"      ;FI"end;FI"
;FI"      ;FI"!def method_missing(ev, *arg);FI"
;FI"        ;FI"puts "other event #{ev}";FI"
;FI"      ;FI"end;FI"
;FI"	    ;FI"end;FI"
;FI"
;FI"	    ;FI"handler = Handler.new;FI"
;FI"	    ;FI"6ie = WIN32OLE.new('InternetExplorer.Application');FI"
;FI"	    ;FI" ev = WIN32OLE_EVENT.new(ie);FI"
;FI"	    ;FI"-ev.on_event("StatusTextChange") {|*args|;FI"
;FI"      ;FI" puts "this block executed.";FI"
;FI"      ;FI"<puts "handler.onStatusTextChange method is not called.";FI"
;FI"	    ;FI"};FI"
;FI"	    ;FI"ev.handler = handler;FI"WIN32OLE_EVENT#handler=
;F0[ I"	(p1);F