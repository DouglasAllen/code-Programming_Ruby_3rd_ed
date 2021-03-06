U:RDoc::NormalClass[i I"WIN32OLE:EF@I"Object;Fo:RDoc::Markup::Document:@parts[	o:RDoc::Markup::Verbatim;[BI" ;FI"K<code>WIN32OLE</code> objects represent OLE Automation object in Ruby.;FI"
;FI"
;FI" ;FI"@By using WIN32OLE, you can access OLE server like VBScript.;FI"
;FI"
;FI" ;FI"Here is sample script.;FI"
;FI"
;FI"   ;FI"require 'win32ole';FI"
;FI"
;FI"   ;FI".excel = WIN32OLE.new('Excel.Application');FI"
;FI"   ;FI"excel.visible = true;FI"
;FI"   ;FI"&workbook = excel.Workbooks.Add();;FI"
;FI"   ;FI"(worksheet = workbook.Worksheets(1);;FI"
;FI"   ;FI"Fworksheet.Range("A1:D1").value = ["North","South","East","West"];;FI"
;FI"   ;FI"0worksheet.Range("A2:B2").value = [5.2, 10];;FI"
;FI"   ;FI"%worksheet.Range("C2").value = 8;;FI"
;FI"   ;FI"&worksheet.Range("D2").value = 20;;FI"
;FI"
;FI"   ;FI"&range = worksheet.Range("A1:D2");;FI"
;FI"   ;FI"range.select;FI"
;FI"   ;FI"!chart = workbook.Charts.Add;;FI"
;FI"
;FI"   ;FI"workbook.saved = true;;FI"
;FI"
;FI"   ;FI"#excel.ActiveWorkbook.Close(0);;FI"
;FI"   ;FI"excel.Quit();;FI"
;Fo:RDoc::Markup::Paragraph;[
I"CUnfortunately, Win32OLE doesn't support the argument passed by;FI"reference directly.;FI"/Instead, Win32OLE provides WIN32OLE::ARGV.;FI"IIf you want to get the result value of argument passed by reference,;FI" you can use WIN32OLE::ARGV.;Fo:RDoc::Markup::BlankLine o;	;[
I"   ;FI"(oleobj.method(arg1, arg2, refargv3);FI"
;FI"   ;FI"Pputs WIN32OLE::ARGV[2]   # the value of refargv3 after called oleobj.method;F[ [[I"VERSION;Fo;;[ [I"	ARGV;Fo;;[ [I"CP_ACP;Fo;;[ [I"CP_OEMCP;Fo;;[ [I"CP_MACCP;Fo;;[ [I"CP_THREAD_ACP;Fo;;[ [I"CP_SYMBOL;Fo;;[ [I"CP_UTF7;Fo;;[ [I"CP_UTF8;Fo;;[ [I"LOCALE_SYSTEM_DEFAULT;Fo;;[ [I"LOCALE_USER_DEFAULT;Fo;;[ [ [[I"
class;F[[:public[I"codepage;FI"codepage=;FI"connect;FI"const_load;FI"create_guid;FI"locale;FI"locale=;FI"new;FI"ole_free;FI"ole_initialize;FI"ole_reference_count;FI"ole_show_help;FI"ole_uninitialize;F[:protected[ [:private[ [I"instance;F[[;[I"[];FI"[]=;FI"_getproperty;FI"_invoke;FI"_setproperty;FI"	each;FI"invoke;FI"method_missing;FI"ole_activex_initialize;FI"ole_free;FI"ole_func_methods;FI"ole_get_methods;FI"ole_method;FI"ole_method_help;FI"ole_methods;FI"ole_obj_help;FI"ole_put_methods;FI"ole_query_interface;FI"ole_respond_to?;FI"ole_type;FI"ole_typelib;FI"setproperty;F[;[ [;[ 