U:RDoc::AnyMethod[iI"	sexp:EFI"Ripper::sexp;FT:publico:RDoc::Markup::Document:@parts[	o:RDoc::Markup::List:
@type:
LABEL:@items[o:RDoc::Markup::ListItem:@labelI"EXPERIMENTAL;F;	[o:RDoc::Markup::BlankLine o:RDoc::Markup::Paragraph;	[I"(Parses +src+ and create S-exp tree.;FI".This method is for mainly developper use.;Fo; o:RDoc::Markup::Verbatim;	[/I"  ;FI"require 'ripper';FI"
;FI"  ;FI"require 'pp;FI"
;FI"
;FI"  ;FI"'pp Ripper.sexp("def m(a) nil end");FI"
;FI"	    ;FI"#=> [:program,;FI"
;FI"         ;FI"[:stmts_add,;FI"
;FI"          ;FI"[:stmts_new],;FI"
;FI"          ;FI"[:def,;FI"
;FI"           ;FI"[:@ident, "m", [1, 4]],;FI"
;FI"           ;FI"B[:paren, [:params, [[:@ident, "a", [1, 6]]], nil, nil, nil]],;FI"
;FI"           ;FI"[:bodystmt,;FI"
;FI"            ;FI"C[:stmts_add, [:stmts_new], [:var_ref, [:@kw, "nil", [1, 9]]]],;FI"
;FI"            ;FI"	nil,;FI"
;FI"            ;FI"	nil,;FI"
;FI"            ;FI"nil]]]];F00[ I"&(src, filename = '-', lineno = 1);F