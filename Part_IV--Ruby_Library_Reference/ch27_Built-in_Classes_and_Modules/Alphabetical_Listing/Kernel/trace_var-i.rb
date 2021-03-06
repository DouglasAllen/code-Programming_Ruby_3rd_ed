U:RDoc::AnyMethod[iI"trace_var:EFI"Kernel#trace_var;FF:publico:RDoc::Markup::Document:@parts[o:RDoc::Markup::Paragraph;	[I"GControls tracing of assignments to global variables. The parameter;FI"C+symbol_ identifies the variable (as either a string name or a;FI":symbol identifier). _cmd_ (which may be a string or a;FI">+Proc+ object) or block is executed whenever the variable;FI"9is assigned. The block or +Proc+ object receives the;FI"2variable's new value as a parameter. Also see;FI"&<code>Kernel::untrace_var</code>.;Fo:RDoc::Markup::BlankLine o:RDoc::Markup::Verbatim;	[I"   ;FI"7trace_var :$_, proc {|v| puts "$_ is now '#{v}'" };FI"
;FI"   ;FI"$_ = "hello";FI"
;FI"   ;FI"$_ = ' there';FI"
;Fo;
;	[I"<em>produces:</em>;Fo; o;;	[
I"   ;FI"$_ is now 'hello';FI"
;FI"   ;FI"$_ is now ' there';FI"[trace_var(symbol, cmd )             -> nil
trace_var(symbol) {|val| block }    -> nil
;F0[ I"
(...);F