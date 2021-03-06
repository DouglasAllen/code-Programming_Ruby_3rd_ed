U:RDoc::AnyMethod[iI"pipeline_w:EFI"Open3#pipeline_w;FF:privateo:RDoc::Markup::Document:@parts[o:RDoc::Markup::Paragraph;	[I"IOpen3.pipeline_w starts a list of commands as a pipeline with a pipe;FI"/which connects stdin of the first command.;Fo:RDoc::Markup::BlankLine o:RDoc::Markup::Verbatim;	[I"  ;FI"LOpen3.pipeline_w(cmd1, cmd2, ... [, opts]) {|first_stdin, wait_threads|;FI"
;FI"	    ;FI"...;FI"
;FI"  ;FI"};FI"
;FI"
;FI"  ;FI"Kfirst_stdin, wait_threads = Open3.pipeline_w(cmd1, cmd2, ... [, opts]);FI"
;FI"  ;FI"...;FI"
;FI"  ;FI"first_stdin.close;FI"
;Fo;
;	[I"&Each cmd is a string or an array.;FI"AIf it is an array, the elements are passed to Process.spawn.;Fo; o;;	[I"  ;FI"	cmd:;FI"
;FI"	    ;FI"\commandline                              command line string which is passed to a shell;FI"
;FI"	    ;FI"[env, commandline, opts];FI"                 ;FI"3command line string which is passed to a shell;FI"
;FI"	    ;FI"$[env, cmdname, arg1, ..., opts];FI"          ;FI"6command name and one or more arguments (no shell);FI"
;FI"	    ;FI"-[env, [cmdname, argv0], arg1, ..., opts];FI" ;FI"<command name and arguments including argv[0] (no shell);FI"
;FI"
;FI"  ;FI";Note that env and opts are optional, as Process.spawn.;FI"
;Fo;
;	[I"Example:;Fo; o;;	[I"  ;FI"BOpen3.pipeline_w("bzip2 -c", :out=>"/tmp/hello.bz2") {|i, ts|;FI"
;FI"	    ;FI"i.puts "hello";FI"
;FI"  ;FI"};F00[ I"(*cmds, &block);F