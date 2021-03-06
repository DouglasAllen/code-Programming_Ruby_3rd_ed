U:RDoc::AnyMethod[iI"	bmbm:EFI"Benchmark#bmbm;FF:privateo:RDoc::Markup::Document:@parts[o:RDoc::Markup::Paragraph;	[I"ASometimes benchmark results are skewed because code executed;FI"Cearlier encounters different garbage collection overheads than;FI"Fthat run later. #bmbm attempts to minimize this effect by running;FI"Gthe tests twice, the first time as a rehearsal in order to get the;FI"4runtime environment stable, the second time for;FI"Dreal. <tt>GC.start</tt> is executed before the start of each of;FI">the real timings; the cost of this is not included in the;FI"Etimings. In reality, though, there's only so much that #bmbm can;FI"Gdo, and the results are not guaranteed to be isolated from garbage;FI""collection and other effects.;Fo:RDoc::Markup::BlankLine o;
;	[I"=Because #bmbm takes two passes through the tests, it can;FI"(calculate the required label width.;Fo; o:RDoc::Markup::Verbatim;	[I"      ;FI"require 'benchmark';FI"
;FI"
;FI"      ;FI"&array = (1..1000000).map { rand };FI"
;FI"
;FI"      ;FI"Benchmark.bmbm do |x|;FI"
;FI"        ;FI"*x.report("sort!") { array.dup.sort! };FI"
;FI"        ;FI"*x.report("sort")  { array.dup.sort  };FI"
;FI"      ;FI"end;FI"
;Fo;
;	[I"<i>Generates:</i>;Fo; o;;	[I"       ;FI"8Rehearsal -----------------------------------------;FI"
;FI"       ;FI"8sort!  11.928000   0.010000  11.938000 ( 12.756000);FI"
;FI"       ;FI"8sort   13.048000   0.020000  13.068000 ( 13.857000);FI"
;FI"       ;FI"8------------------------------- total: 25.006000sec;FI"
;FI"
;FI"                   ;FI"+user     system      total        real;FI"
;FI"       ;FI"8sort!  12.959000   0.010000  12.969000 ( 13.793000);FI"
;FI"       ;FI"8sort   12.007000   0.000000  12.007000 ( 12.791000);FI"
;Fo;
;	[I"A#bmbm yields a Benchmark::Job object and returns an array of;FI"Benchmark::Tms objects.;F0I"job;F[ I"(width = 0);F