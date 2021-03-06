U:RDoc::AnyMethod[iI"setproperty:EFI"WIN32OLE#setproperty;FF:publico:RDoc::Markup::Document:@parts[o:RDoc::Markup::Paragraph;	[I"!Sets property of OLE object.;FI"JWhen you want to set property with argument, you can use this method.;Fo:RDoc::Markup::BlankLine o:RDoc::Markup::Verbatim;	[I"   ;FI".excel = WIN32OLE.new('Excel.Application');FI"
;FI"   ;FI"excel.Visible = true;FI"
;FI"   ;FI"book = excel.workbooks.add;FI"
;FI"   ;FI"sheet = book.worksheets(1);FI"
;FI"   ;FI"Gsheet.setproperty('Cells', 1, 2, 10) # => The B1 cell value is 10.;FI"<WIN32OLE.setproperty('property', [arg1, arg2,...] val)
;F0[ I"
(...);F