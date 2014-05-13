U:RDoc::AnyMethod[iI"capture3:EFI"Open3::capture3;FT:publico:RDoc::Markup::Document:@parts[o:RDoc::Markup::Paragraph;	[I"UOpen3.capture3 captures the standard output and the standard error of a command.;Fo:RDoc::Markup::BlankLine o:RDoc::Markup::Verbatim;	[I"  ;FI"Lstdout_str, stderr_str, status = Open3.capture3([env,] cmd... [, opts]);FI"
;Fo;
;	[I"FThe arguments env, cmd and opts are passed to Open3.popen3 except;FI"Aopts[:stdin_data] and opts[:stdin_data].  See Process.spawn.;Fo; o;
;	[I"SIf opts[:stdin_data] is specified, it is sent to the command's standard input.;Fo; o;
;	[I"FIf opts[:binmode] is true, internal pipes are set to binary mode.;Fo; o;
;	[I"Example:;Fo; o;;	[KI"  ;FI"$# dot is a command of graphviz.;FI"
;FI"  ;FI"graph = <<'End';FI"
;FI"	    ;FI"digraph g {;FI"
;FI"      ;FI"a -> b;FI"
;FI"	    ;FI"};FI"
;FI"  ;FI"End;FI"
;FI"  ;FI"Klayouted_graph, dot_log = Open3.capture3("dot -v", :stdin_data=>graph);FI"
;FI"
;FI"  ;FI"Qo, e, s = Open3.capture3("echo a; sort >&2", :stdin_data=>"foo\nbar\nbaz\n");FI"
;FI"  ;FI"p o #=> "a\n";FI"
;FI"  ;FI"p e #=> "bar\nbaz\nfoo\n";FI"
;FI"  ;FI"1p s #=> #<Process::Status: pid 32682 exit 0>;FI"
;FI"
;FI"  ;FI"J# generate a thumnail image using the convert command of ImageMagick.;FI"
;FI"  ;FI"5# However, if the image stored really in a file,;FI"
;FI"  ;FI"R# system("convert", "-thumbnail", "80", "png:#{filename}", "png:-") is better;FI"
;FI"  ;FI""# because memory consumption.;FI"
;FI"  ;FI"Y# But if the image is stored in a DB or generated by gnuplot Open3.capture2 example,;FI"
;FI"  ;FI"&# Open3.capture3 is considerable.;FI"
;FI"  ;FI"#;FI"
;FI"  ;FI"fimage = File.read("/usr/share/openclipart/png/animals/mammals/sheep-md-v0.1.png", :binmode=>true);FI"
;FI"  ;FI"othumnail, err, s = Open3.capture3("convert -thumbnail 80 png:- png:-", :stdin_data=>image, :binmode=>true);FI"
;FI"  ;FI"if s.success?;FI"
;FI"	    ;FI"#STDOUT.binmode; print thumnail;FI"
;FI"  ;FI"end;F00[ I"(*cmd, &block);F