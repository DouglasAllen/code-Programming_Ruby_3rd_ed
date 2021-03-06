U:RDoc::AnyMethod[iI"unadvise:EFI"WIN32OLE_EVENT#unadvise;FF:publico:RDoc::Markup::Document:@parts[o:RDoc::Markup::Paragraph;	[I"Rdisconnects OLE server. If this method called, then the WIN32OLE_EVENT object;FI"4does not receive the OLE server event any more.;FI")This method is trial implementation.;Fo:RDoc::Markup::BlankLine o:RDoc::Markup::Verbatim;	[I"	    ;FI"6ie = WIN32OLE.new('InternetExplorer.Application');FI"
;FI"	    ;FI" ev = WIN32OLE_EVENT.new(ie);FI"
;FI"	    ;FI"ev.on_event() {...};FI"
;FI"       ;FI"...;FI"
;FI"	    ;FI"ev.unadvise;FI"$WIN32OLE_EVENT#unadvise -> nil
;F0[ I"();F