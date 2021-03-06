U:RDoc::AnyMethod[iI"default:EFI"WIN32OLE_PARAM#default;FF:publico:RDoc::Markup::Document:@parts[o:RDoc::Markup::Paragraph;	[I"@Returns default value. If the default value does not exist,;FI"this method returns nil.;Fo:RDoc::Markup::Verbatim;	[DI"   ;FI"Otobj = WIN32OLE_TYPE.new('Microsoft Excel 9.0 Object Library', 'Workbook');FI"
;FI"   ;FI"1method = WIN32OLE_METHOD.new(tobj, 'SaveAs');FI"
;FI"   ;FI""method.params.each do |param|;FI"
;FI"
     ;FI"if param.default;FI"
;FI"       ;FI".puts "#{param.name} (= #{param.default})";FI"
;FI"
     ;FI"	else;FI"
;FI"       ;FI"puts "#{param}";FI"
;FI"
     ;FI"end;FI"
;FI"   ;FI"end;FI"
;FI"
;FI"   ;FI"*The above script result is following:;FI"
;FI"       ;FI"Filename;FI"
;FI"       ;FI"FileFormat;FI"
;FI"       ;FI"Password;FI"
;FI"       ;FI"WriteResPassword;FI"
;FI"       ;FI"ReadOnlyRecommended;FI"
;FI"       ;FI"CreateBackup;FI"
;FI"       ;FI"AccessMode (= 1);FI"
;FI"       ;FI"ConflictResolution;FI"
;FI"       ;FI"AddToMru;FI"
;FI"       ;FI"TextCodepage;FI"
;FI"       ;FI"TextVisualLayout;FI"WIN32OLE_PARAM#default
;F0[ I"();F