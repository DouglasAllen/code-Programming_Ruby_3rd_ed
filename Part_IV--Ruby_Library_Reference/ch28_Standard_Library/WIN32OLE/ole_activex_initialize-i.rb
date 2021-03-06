U:RDoc::AnyMethod[iI"ole_activex_initialize:EFI"$WIN32OLE#ole_activex_initialize;FF:publico:RDoc::Markup::Document:@parts[o:RDoc::Markup::Paragraph;	[I";Initialize WIN32OLE object(ActiveX Control) by calling;FI"IPersistMemory::InitNew.;Fo:RDoc::Markup::BlankLine o;
;	[I"ABefore calling OLE method, some kind of the ActiveX controls;FI"6created with MFC should be initialized by calling;FI"IPersistXXX::InitNew.;Fo; o;
;	[I"CIf and only if you received the exception "HRESULT error code:;FI"=0x8000ffff catastrophic failure", try this method before;FI"invoking any ole_method.;Fo; o:RDoc::Markup::Verbatim;	[I"   ;FI"<obj = WIN32OLE.new("ProgID_or_GUID_of_ActiveX_Control");FI"
;FI"   ;FI"obj.ole_activex_initialize;FI"
;FI"   ;FI"obj.method(...);FI"/WIN32OLE#ole_activex_initialize() -> Qnil
;F0[ I"();F