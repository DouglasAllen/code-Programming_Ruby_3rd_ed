U:RDoc::AnyMethod[iI"new:EFI"WIN32OLE_TYPELIB::new;FT:publico:RDoc::Markup::Document:@parts[
o:RDoc::Markup::Paragraph;	[I"+Returns a new WIN32OLE_TYPELIB object.;Fo:RDoc::Markup::BlankLine o;
;	[I"RThe first argument <i>typelib</i>  specifies OLE type library name or GUID or;FI"OLE library file.;FI"IThe second argument is major version or version of the type library.;FI")The third argument is minor version.;FI"9The second argument and third argument are optional.;FI"SIf the first argument is type library name, then the second and third argument;FI"are ignored.;Fo; o:RDoc::Markup::Verbatim;	["I"	    ;FI"Gtlib1 = WIN32OLE_TYPELIB.new('Microsoft Excel 9.0 Object Library');FI"
;FI"	    ;FI"Ktlib2 = WIN32OLE_TYPELIB.new('{00020813-0000-0000-C000-000000000046}');FI"
;FI"	    ;FI"Ptlib3 = WIN32OLE_TYPELIB.new('{00020813-0000-0000-C000-000000000046}', 1.3);FI"
;FI"	    ;FI"Qtlib4 = WIN32OLE_TYPELIB.new('{00020813-0000-0000-C000-000000000046}', 1, 3);FI"
;FI"	    ;FI"Etlib5 = WIN32OLE_TYPELIB.new("C:\\WINNT\\SYSTEM32\\SHELL32.DLL");FI"
;FI"	    ;FI"?puts tlib1.name  # -> 'Microsoft Excel 9.0 Object Library';FI"
;FI"	    ;FI"?puts tlib2.name  # -> 'Microsoft Excel 9.0 Object Library';FI"
;FI"	    ;FI"?puts tlib3.name  # -> 'Microsoft Excel 9.0 Object Library';FI"
;FI"	    ;FI"?puts tlib4.name  # -> 'Microsoft Excel 9.0 Object Library';FI"
;FI"	    ;FI"Dputs tlib5.name  # -> 'Microsoft Shell Controls And Automation';FI"UWIN32OLE_TYPELIB.new(typelib [, version1, version2]) -> WIN32OLE_TYPELIB object
;F0[ I"
(...);F