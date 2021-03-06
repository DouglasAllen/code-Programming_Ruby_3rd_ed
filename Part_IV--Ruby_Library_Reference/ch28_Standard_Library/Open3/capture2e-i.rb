U:RDoc::AnyMethod[iI"capture2e:EFI"Open3#capture2e;FF:privateo:RDoc::Markup::Document:@parts[o:RDoc::Markup::Paragraph;	[I"VOpen3.capture2e captures the standard output and the standard error of a command.;Fo:RDoc::Markup::BlankLine o:RDoc::Markup::Verbatim;	[I"  ;FI"Lstdout_and_stderr_str, status = Open3.capture2e([env,] cmd... [, opts]);FI"
;Fo;
;	[I"FThe arguments env, cmd and opts are passed to Open3.popen3 except;FI"Aopts[:stdin_data] and opts[:stdin_data].  See Process.spawn.;Fo; o;
;	[I"SIf opts[:stdin_data] is specified, it is sent to the command's standard input.;Fo; o;
;	[I"FIf opts[:binmode] is true, internal pipes are set to binary mode.;Fo; o;
;	[I"Example:;Fo; o;;	[
I"  ;FI"# capture make log;FI"
;FI"  ;FI"*make_log, s = Open3.capture2e("make");F00[ I"(*cmd, &block);F