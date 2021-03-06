U:RDoc::AnyMethod[iI"popen2e:EFI"Open3::popen2e;FT:publico:RDoc::Markup::Document:@parts[o:RDoc::Markup::Paragraph;	[I">Open3.popen2e is similer to Open3.popen3 except it merges;FI">the standard output stream and the standard error stream.;Fo:RDoc::Markup::BlankLine o;
;	[I"Block form:;Fo; o:RDoc::Markup::Verbatim;	[I"  ;FI"POpen3.popen2e([env,] cmd... [, opts]) {|stdin, stdout_and_stderr, wait_thr|;FI"
;FI"	    ;FI"5pid = wait_thr.pid # pid of the started process.;FI"
;FI"	    ;FI"...;FI"
;FI"	    ;FI"Dexit_status = wait_thr.value # Process::Status object returned.;FI"
;FI"  ;FI"};FI"
;Fo;
;	[I"Non-block form:;Fo; o;;	[I"  ;FI"Ostdin, stdout_and_stderr, wait_thr = Open3.popen2e([env,] cmd... [, opts]);FI"
;FI"  ;FI"...;FI"
;FI"  ;FI"Ystdin.close  # stdin and stdout_and_stderr should be closed explicitly in this form.;FI"
;FI"  ;FI"stdout_and_stderr.close;FI"
;Fo;
;	[I"HSee Process.spawn for the optional hash arguments _env_ and _opts_.;Fo; o;
;	[I"Example:;Fo;;	[I"  ;FI"# check gcc warnings;FI"
;FI"  ;FI"source = "foo.c";FI"
;FI"  ;FI"4Open3.popen2e("gcc", "-Wall", source) {|i,oe,t|;FI"
;FI"	    ;FI"oe.each {|line|;FI"
;FI"      ;FI"if /warning/ =~ line;FI"
;FI"        ;FI"...;FI"
;FI"      ;FI"end;FI"
;FI"	    ;FI"};FI"
;FI"  ;FI"};F00[ I"(*cmd, &block);F