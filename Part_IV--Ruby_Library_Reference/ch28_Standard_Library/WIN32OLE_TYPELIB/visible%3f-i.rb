U:RDoc::AnyMethod[iI"visible?:EFI"WIN32OLE_TYPELIB#visible?;FF:publico:RDoc::Markup::Document:@parts[o:RDoc::Markup::Paragraph;	[
I"@Returns true if the type library information is not hidden.;FI"MIf wLibFlags of TLIBATTR is 0 or LIBFLAG_FRESTRICTED or LIBFLAG_FHIDDEN,;FI"7the method returns false, otherwise, returns true.;FI"AIf the method fails to access the TLIBATTR information, then;FI"$WIN32OLERuntimeError is raised.;Fo:RDoc::Markup::BlankLine o:RDoc::Markup::Verbatim;	[
I"   ;FI"Ftlib = WIN32OLE_TYPELIB.new('Microsoft Excel 9.0 Object Library');FI"
;FI"   ;FI"tlib.visible? # => true;FI"WIN32OLE_TYPELIB#visible?
;F0[ I"();F