U:RDoc::AnyMethod[iI"invoke:EFI"WIN32OLE#invoke;FF:publico:RDoc::Markup::Document:@parts[o:RDoc::Markup::Paragraph;	[	I"Runs OLE method.;FI"KThe first argument specifies the method name of OLE Automation object.;FI"6The others specify argument of the <i>method</i>.;FI"QIf you can not execute <i>method</i> directly, then use this method instead.;Fo:RDoc::Markup::BlankLine o:RDoc::Markup::Verbatim;	[
I"  ;FI".excel = WIN32OLE.new('Excel.Application');FI"
;FI"  ;FI"2excel.invoke('Quit')  # => same as excel.Quit;FI"EWIN32OLE#invoke(method, [arg1,...])  => return value of method.
;F0[ I"
(...);F