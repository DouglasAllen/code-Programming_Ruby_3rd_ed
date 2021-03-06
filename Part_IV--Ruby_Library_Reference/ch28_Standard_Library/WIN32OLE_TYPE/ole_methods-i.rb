U:RDoc::AnyMethod[iI"ole_methods:EFI"WIN32OLE_TYPE#ole_methods;FF:publico:RDoc::Markup::Document:@parts[o:RDoc::Markup::Paragraph;	[I"SReturns array of WIN32OLE_METHOD objects which represent OLE method defined in;FI"OLE type library.;Fo:RDoc::Markup::Verbatim;	[I"  ;FI"Ptobj = WIN32OLE_TYPE.new('Microsoft Excel 9.0 Object Library', 'Worksheet');FI"
;FI"  ;FI"+methods = tobj.ole_methods.collect{|m|;FI"
;FI"	    ;FI"m.name;FI"
;FI"  ;FI"};FI"
;FI"  ;FI"-# => ['Activate', 'Copy', 'Delete',....];FI"GWIN32OLE_TYPE#ole_methods # the array of WIN32OLE_METHOD objects.
;F0[ I"();F