U:RDoc::AnyMethod[iI"def_module:EFI"ERB#def_module;FF:publico:RDoc::Markup::Document:@parts[	o:RDoc::Markup::Paragraph;	[I"XCreate unnamed module, define _methodname_ as instance method of it, and return it.;Fo:RDoc::Markup::BlankLine o;
;	[I"example:;Fo:RDoc::Markup::Verbatim;	[I"  ;FI"Ofilename = 'example.rhtml'   # 'arg1' and 'arg2' are used in example.rhtml;FI"
;FI"  ;FI"'erb = ERB.new(File.read(filename));FI"
;FI"  ;FI"erb.filename = filename;FI"
;FI"  ;FI"4MyModule = erb.def_module('render(arg1, arg2)');FI"
;FI"  ;FI"class MyClass;FI"
;FI"	    ;FI"include MyModule;FI"
;FI"  ;FI"end;F00[ I"(methodname='erb');F