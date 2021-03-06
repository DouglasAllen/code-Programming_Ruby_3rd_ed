U:RDoc::AnyMethod[iI"popen2:EFI"Open3#popen2;FF:privateo:RDoc::Markup::Document:@parts[o:RDoc::Markup::Paragraph;	[I"NOpen3.popen2 is similer to Open3.popen3 except it doesn't make a pipe for;FI"the standard error stream.;Fo:RDoc::Markup::BlankLine o;
;	[I"Block form:;Fo; o:RDoc::Markup::Verbatim;	[I"  ;FI"DOpen3.popen2([env,] cmd... [, opts]) {|stdin, stdout, wait_thr|;FI"
;FI"	    ;FI"5pid = wait_thr.pid # pid of the started process.;FI"
;FI"	    ;FI"...;FI"
;FI"	    ;FI"Dexit_status = wait_thr.value # Process::Status object returned.;FI"
;FI"  ;FI"};FI"
;Fo;
;	[I"Non-block form:;Fo; o;;	[I"  ;FI"Cstdin, stdout, wait_thr = Open3.popen2([env,] cmd... [, opts]);FI"
;FI"  ;FI"...;FI"
;FI"  ;FI"Nstdin.close  # stdin and stdout should be closed explicitly in this form.;FI"
;FI"  ;FI"stdout.close;FI"
;Fo;
;	[I"HSee Process.spawn for the optional hash arguments _env_ and _opts_.;Fo; o;
;	[I"Example:;Fo; o;;	[3I"  ;FI"#Open3.popen2("wc -c") {|i,o,t|;FI"
;FI"	    ;FI"9i.print "answer to life the universe and everything";FI"
;FI"	    ;FI"i.close;FI"
;FI"	    ;FI"p o.gets #=> "42\n";FI"
;FI"  ;FI"};FI"
;FI"
;FI"  ;FI"#Open3.popen2("bc -q") {|i,o,t|;FI"
;FI"	    ;FI"i.puts "obase=13";FI"
;FI"	    ;FI"i.puts "6 * 9";FI"
;FI"	    ;FI"p o.gets #=> "42\n";FI"
;FI"  ;FI"};FI"
;FI"
;FI"  ;FI" Open3.popen2("dc") {|i,o,t|;FI"
;FI"	    ;FI"i.print "42P";FI"
;FI"	    ;FI"i.close;FI"
;FI"	    ;FI"p o.read #=> "*";FI"
;FI"  ;FI"};F00[ I"(*cmd, &block);F