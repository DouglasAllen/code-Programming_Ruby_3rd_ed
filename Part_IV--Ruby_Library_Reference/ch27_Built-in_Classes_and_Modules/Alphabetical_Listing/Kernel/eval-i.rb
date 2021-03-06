U:RDoc::AnyMethod[iI"	eval:EFI"Kernel#eval;FF:publico:RDoc::Markup::Document:@parts[o:RDoc::Markup::Paragraph;	[
I"<Evaluates the Ruby expression(s) in <em>string</em>. If;FI"D<em>binding</em> is given, which must be a <code>Binding</code>;FI"?object, the evaluation is performed in its context. If the;FI"Boptional <em>filename</em> and <em>lineno</em> parameters are;FI"=present, they will be used when reporting syntax errors.;Fo:RDoc::Markup::BlankLine o:RDoc::Markup::Verbatim;	[I"   ;FI"def getBinding(str);FI"
;FI"
     ;FI"return binding;FI"
;FI"   ;FI"end;FI"
;FI"   ;FI"str = "hello";FI"
;FI"   ;FI"?eval "str + ' Fred'"                      #=> "hello Fred";FI"
;FI"   ;FI"=eval "str + ' Fred'", getBinding("bye")   #=> "bye Fred";FI"=eval(string [, binding [, filename [,lineno]]])  -> obj
;F0[ I"
(...);F