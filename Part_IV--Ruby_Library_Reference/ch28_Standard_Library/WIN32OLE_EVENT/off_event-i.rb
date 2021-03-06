U:RDoc::AnyMethod[iI"off_event:EFI"WIN32OLE_EVENT#off_event;FF:publico:RDoc::Markup::Document:@parts[o:RDoc::Markup::Paragraph;	[I"#removes the callback of event.;Fo:RDoc::Markup::BlankLine o:RDoc::Markup::Verbatim;	[I"  ;FI"6ie = WIN32OLE.new('InternetExplorer.Application');FI"
;FI"  ;FI" ev = WIN32OLE_EVENT.new(ie);FI"
;FI"  ;FI",ev.on_event('BeforeNavigate2') {|*args|;FI"
;FI"	    ;FI"args.last[6] = true;FI"
;FI"  ;FI"};FI"
;FI"	    ;FI"...;FI"
;FI"  ;FI"$ev.off_event('BeforeNavigate2');FI"
;FI"	    ;FI"...;FI"'WIN32OLE_EVENT#off_event([event])
;F0[ I"
(...);F