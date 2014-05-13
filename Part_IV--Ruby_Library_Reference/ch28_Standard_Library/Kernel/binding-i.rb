U:RDoc::AnyMethod[iI"binding:EFI"Kernel#binding;FF:publico:RDoc::Markup::Document:@parts[o:RDoc::Markup::Paragraph;	[	I"<Returns a +Binding+ object, describing the variable and;FI"Gmethod bindings at the point of call. This object can be used when;FI"<calling +eval+ to execute the evaluated command in this;FI">environment. Also see the description of class +Binding+.;Fo:RDoc::Markup::BlankLine o:RDoc::Markup::Verbatim;	[I"   ;FI"def getBinding(param);FI"
;FI"
     ;FI"return binding;FI"
;FI"   ;FI"end;FI"
;FI"   ;FI"b = getBinding("hello");FI"
;FI"   ;FI"#eval("param", b)   #=> "hello";FI"binding -> a_binding
;F0[ I"();F