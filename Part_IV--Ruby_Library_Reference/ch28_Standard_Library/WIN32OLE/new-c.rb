U:RDoc::AnyMethod[iI"new:EFI"WIN32OLE::new;FT:publico:RDoc::Markup::Document:@parts[o:RDoc::Markup::Paragraph;	[
I":Returns a new WIN32OLE object(OLE Automation object).;FI"?The first argument server specifies OLE Automation server.;FI"2The first argument should be CLSID or PROGID.;FI"CIf second argument host specified, then returns OLE Automation;FI"object on host.;Fo:RDoc::Markup::BlankLine o:RDoc::Markup::Verbatim;	[
I"	    ;FI"QWIN32OLE.new('Excel.Application') # => Excel OLE Automation WIN32OLE object.;FI"
;FI"	    ;FI"fWIN32OLE.new('{00024500-0000-0000-C000-000000000046}') # => Excel OLE Automation WIN32OLE object.;FI"5WIN32OLE.new(server, [host]) -> WIN32OLE object
;F0[ I"
(...);F