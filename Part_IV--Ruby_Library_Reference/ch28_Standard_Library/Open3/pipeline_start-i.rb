U:RDoc::AnyMethod[iI"pipeline_start:EFI"Open3#pipeline_start;FF:privateo:RDoc::Markup::Document:@parts[o:RDoc::Markup::Paragraph;	[I"BOpen3.pipeline_start starts a list of commands as a pipeline.;FI"4No pipe made for stdin of the first command and;FI" stdout of the last command.;Fo:RDoc::Markup::BlankLine o:RDoc::Markup::Verbatim;	[I"  ;FI"COpen3.pipeline_start(cmd1, cmd2, ... [, opts]) {|wait_threads|;FI"
;FI"	    ;FI"...;FI"
;FI"  ;FI"};FI"
;FI"
;FI"  ;FI"Bwait_threads = Open3.pipeline_start(cmd1, cmd2, ... [, opts]);FI"
;FI"  ;FI"...;FI"
;Fo;
;	[I"&Each cmd is a string or an array.;FI"AIf it is an array, the elements are passed to Process.spawn.;Fo; o;;	[I"  ;FI"	cmd:;FI"
;FI"	    ;FI"\commandline                              command line string which is passed to a shell;FI"
;FI"	    ;FI"[env, commandline, opts];FI"                 ;FI"3command line string which is passed to a shell;FI"
;FI"	    ;FI"$[env, cmdname, arg1, ..., opts];FI"          ;FI"6command name and one or more arguments (no shell);FI"
;FI"	    ;FI"-[env, [cmdname, argv0], arg1, ..., opts];FI" ;FI"<command name and arguments including argv[0] (no shell);FI"
;FI"
;FI"  ;FI";Note that env and opts are optional, as Process.spawn.;FI"
;Fo;
;	[I"Example:;Fo; o;;	[;I"  ;FI"# run xeyes in 10 seconds.;FI"
;FI"  ;FI"(Open3.pipeline_start("xeyes") {|ts|;FI"
;FI"	    ;FI"sleep 10;FI"
;FI"	    ;FI"t = ts[0];FI"
;FI"	    ;FI" Process.kill("TERM", t.pid);FI"
;FI"	    ;FI"Bp t.value #=> #<Process::Status: pid 911 SIGTERM (signal 15)>;FI"
;FI"  ;FI"};FI"
;FI"
;FI"  ;FI"2# convert pdf to ps and send it to a printer.;FI"
;FI"  ;FI"0# collect error message of pdftops and lpr.;FI"
;FI"  ;FI"pdf_file = "paper.pdf";FI"
;FI"  ;FI"printer = "printer-name";FI"
;FI"  ;FI"err_r, err_w = IO.pipe;FI"
;FI"  ;FI"5Open3.pipeline_start(["pdftops", pdf_file, "-"],;FI"
;FI"                       ;FI"["lpr", "-P#{printer}"],;FI"
;FI"                       ;FI":err=>err_w) {|ts|;FI"
;FI"	    ;FI"err_w.close;FI"
;FI"	    ;FI"6p err_r.read # error messages of pdftops and lpr.;FI"
;FI"  ;FI"};F00[ I"(*cmds, &block);F