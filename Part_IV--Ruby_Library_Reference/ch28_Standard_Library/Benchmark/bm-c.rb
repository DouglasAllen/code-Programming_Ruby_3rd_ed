U:RDoc::AnyMethod[iI"bm:EFI"Benchmark::bm;FT:publico:RDoc::Markup::Document:@parts[o:RDoc::Markup::Paragraph;	[I"UA simple interface to the #benchmark method, #bm is generates sequential reports;FI"Jwith labels.  The parameters have the same meaning as for #benchmark.;Fo:RDoc::Markup::BlankLine o:RDoc::Markup::Verbatim;	[I"	    ;FI"require 'benchmark';FI"
;FI"
;FI"	    ;FI"n = 50000;FI"
;FI"	    ;FI"Benchmark.bm(7) do |x|;FI"
;FI"      ;FI"7x.report("for:")   { for i in 1..n; a = "1"; end };FI"
;FI"      ;FI"7x.report("times:") { n.times do   ; a = "1"; end };FI"
;FI"      ;FI"7x.report("upto:")  { 1.upto(n) do ; a = "1"; end };FI"
;FI"	    ;FI"end;FI"
;Fo;
;	[I"<i>Generates:</i>;Fo; o;;	[I"                    ;FI"+user     system      total        real;FI"
;FI"       ;FI"9for:     1.050000   0.000000   1.050000 (  0.503462);FI"
;FI"       ;FI"9times:   1.533333   0.016667   1.550000 (  0.735473);FI"
;FI"       ;FI"9upto:    1.500000   0.016667   1.516667 (  0.711239);F0I"report;F[ I"(label_width = 0, *labels);F