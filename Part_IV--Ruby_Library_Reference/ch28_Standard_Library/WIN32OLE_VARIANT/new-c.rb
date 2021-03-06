U:RDoc::AnyMethod[iI"new:EFI"WIN32OLE_VARIANT::new;FT:publico:RDoc::Markup::Document:@parts[o:RDoc::Markup::Paragraph;	[	I".Returns Ruby object wrapping OLE variant.;FI"NThe first argument specifies Ruby object to convert OLE variant variable.;FI"0The second argument specifies VARIANT type.;FI"OIn some situation, you need the WIN32OLE_VARIANT object to pass OLE method;Fo:RDoc::Markup::BlankLine o:RDoc::Markup::Verbatim;	[I"   ;FI".shell = WIN32OLE.new("Shell.Application");FI"
;FI"   ;FI",folder = shell.NameSpace("C:\\Windows");FI"
;FI"   ;FI"'item = folder.ParseName("tmp.txt");FI"
;FI"   ;FI"F# You can't use Ruby String object to call FolderItem.InvokeVerb.;FI"
;FI"   ;FI"K# Instead, you have to use WIN32OLE_VARIANT object to call the method.;FI"
;FI"   ;FI"<shortcut = WIN32OLE_VARIANT.new("Create Shortcut(\&S)");FI"
;FI"   ;FI"item.invokeVerb(shortcut);FI"EWIN32OLE_VARIANT.new(val, vartype) #=> WIN32OLE_VARIANT object.
;F0[ I"
(...);F