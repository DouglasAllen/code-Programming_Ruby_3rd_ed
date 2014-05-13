U:RDoc::AnyMethod[iI"def_method:EFI"ERB#def_method;FF:publico:RDoc::Markup::Document:@parts[	o:RDoc::Markup::Paragraph;	[I"ODefine _methodname_ as instance method of _mod_ from compiled ruby source.;Fo:RDoc::Markup::BlankLine o;
;	[I"example:;Fo:RDoc::Markup::Verbatim;	[I"  ;FI"Ofilename = 'example.rhtml'   # 'arg1' and 'arg2' are used in example.rhtml;FI"
;FI"  ;FI"'erb = ERB.new(File.read(filename));FI"
;FI"  ;FI"<erb.def_method(MyClass, 'render(arg1, arg2)', filename);FI"
;FI"  ;FI")print MyClass.new.render('foo', 123);F00[ I"%(mod, methodname, fname='(ERB)');F