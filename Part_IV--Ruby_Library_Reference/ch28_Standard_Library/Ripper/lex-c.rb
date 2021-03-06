U:RDoc::AnyMethod[iI"lex:EFI"Ripper::lex;FT:publico:RDoc::Markup::Document:@parts[o:RDoc::Markup::Paragraph;	[I":Tokenizes Ruby program and returns an Array of Array,;FI"=which is formatted like [[lineno, column], type, token].;Fo:RDoc::Markup::BlankLine o:RDoc::Markup::Verbatim;	[-I"  ;FI"require 'ripper';FI"
;FI"  ;FI"require 'pp';FI"
;FI"
;FI"  ;FI"%p Ripper.lex("def m(a) nil end");FI"
;FI"	    ;FI"'#=> [[[1,  0], :on_kw,     "def"],;FI"
;FI"         ;FI""[[1,  3], :on_sp,     " "  ],;FI"
;FI"         ;FI""[[1,  4], :on_ident,  "m"  ],;FI"
;FI"         ;FI""[[1,  5], :on_lparen, "("  ],;FI"
;FI"         ;FI""[[1,  6], :on_ident,  "a"  ],;FI"
;FI"         ;FI""[[1,  7], :on_rparen, ")"  ],;FI"
;FI"         ;FI""[[1,  8], :on_sp,     " "  ],;FI"
;FI"         ;FI""[[1,  9], :on_kw,     "nil"],;FI"
;FI"         ;FI""[[1, 12], :on_sp,     " "  ],;FI"
;FI"         ;FI""[[1, 13], :on_kw,     "end"]];FI" ;F00[ I"&(src, filename = '-', lineno = 1);F