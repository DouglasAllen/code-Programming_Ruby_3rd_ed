U:RDoc::AnyMethod[iI"on_event_with_outargs:EFI")WIN32OLE_EVENT#on_event_with_outargs;FF:publico:RDoc::Markup::Document:@parts[o:RDoc::Markup::Paragraph;	[I"#Defines the callback of event.;FI"-If you want modify argument in callback,;FI"Byou could use this method instead of WIN32OLE_EVENT#on_event.;Fo:RDoc::Markup::BlankLine o:RDoc::Markup::Verbatim;	[I"  ;FI"6ie = WIN32OLE.new('InternetExplorer.Application');FI"
;FI"  ;FI" ev = WIN32OLE_EVENT.new(ie);FI"
;FI"  ;FI"9ev.on_event_with_outargs('BeforeNavigate2') {|*args|;FI"
;FI"	    ;FI"args.last[6] = true;FI"
;FI"  ;FI"};FI"8WIN32OLE_EVENT#on_event_with_outargs([event]){...}
;F0[ I"
(...);F