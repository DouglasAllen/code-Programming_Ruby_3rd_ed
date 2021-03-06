U:RDoc::AnyMethod[iI"new:EFI"WIN32OLE_METHOD::new;FT:publico:RDoc::Markup::Document:@parts[o:RDoc::Markup::Paragraph;	[
I"JReturns a new WIN32OLE_METHOD object which represents the information;FI"about OLE method.;FI"GThe first argument <i>ole_type</i> specifies WIN32OLE_TYPE object.;FI"RThe second argument <i>method</i> specifies OLE method name defined OLE class;FI"+which represents WIN32OLE_TYPE object.;Fo:RDoc::Markup::BlankLine o:RDoc::Markup::Verbatim;	[
I"   ;FI"Otobj = WIN32OLE_TYPE.new('Microsoft Excel 9.0 Object Library', 'Workbook');FI"
;FI"   ;FI"1method = WIN32OLE_METHOD.new(tobj, 'SaveAs');FI"FWIN32OLE_METHOD.new(ole_type,  method) -> WIN32OLE_METHOD object
;F0[ I"(p1, p2);F