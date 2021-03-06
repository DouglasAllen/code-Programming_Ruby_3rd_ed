U:RDoc::AnyMethod[iI"
spawn:EFI"Kernel#spawn;FF:publico:RDoc::Markup::Document:@parts[To:RDoc::Markup::Paragraph;	[I"9spawn executes specified command and return its pid.;Fo:RDoc::Markup::BlankLine o;
;	[I"5This method doesn't wait for end of the command.;FI"The parent process should;FI"-use <code>Process.wait</code> to collect;FI"+the termination status of its child or;FI"0use <code>Process.detach</code> to register;FI"!disinterest in their status;;FI"Eotherwise, the operating system may accumulate zombie processes.;Fo; o;
;	[I">spawn has bunch of options to specify process attributes:;Fo; o:RDoc::Markup::Verbatim;	[�I"  ;FI"env: hash;FI"
;FI"	    ;FI"/name => val : set the environment variable;FI"
;FI"	    ;FI"1name => nil : unset the environment variable;FI"
;FI"  ;FI"command...:;FI"
;FI"	    ;FI"\commandline                 : command line string which is passed to the standard shell;FI"
;FI"	    ;FI"Tcmdname, arg1, ...          : command name and one or more arguments (no shell);FI"
;FI"	    ;FI"8[cmdname, argv0], arg1, ... : command name, argv[0];FI" ;FI"*and zero or more arguments (no shell);FI"
;FI"  ;FI"options: hash;FI"
;FI"	    ;FI"$clearing environment variables:;FI"
;FI"      ;FI"U:unsetenv_others => true   : clear environment variables except specified by env;FI"
;FI"      ;FI"7:unsetenv_others => false  : don't clear (default);FI"
;FI"	    ;FI"process group:;FI"
;FI"      ;FI"4:pgroup => true or 0 : make a new process group;FI"
;FI"      ;FI";:pgroup => pgid      : join to specified process group;FI"
;FI"      ;FI"D:pgroup => nil       : don't change the process group (default);FI"
;FI"	    ;FI"Rresource limit: resourcename is core, cpu, data, etc.  See Process.setrlimit.;FI"
;FI"      ;FI"":rlimit_resourcename => limit;FI"
;FI"      ;FI"3:rlimit_resourcename => [cur_limit, max_limit];FI"
;FI"	    ;FI"current directory:;FI"
;FI"      ;FI":chdir => str;FI"
;FI"	    ;FI"umask:;FI"
;FI"      ;FI":umask => int;FI"
;FI"	    ;FI"redirection:;FI"
;FI"      ;FI"	key:;FI"
;FI"        ;FI">FD              : single file descriptor in child process;FI"
;FI"        ;FI"[FD, FD, ...];FI"   ;FI"0: multiple file descriptor in child process;FI"
;FI"      ;FI"value:;FI"
;FI"        ;FI"RFD                        : redirect to the file descriptor in parent process;FI"
;FI"        ;FI"Ostring                    : redirect to file with open(string, "r" or "w");FI"
;FI"        ;FI"[string];FI"                  ;FI"7: redirect to file with open(string, File::RDONLY);FI"
;FI"        ;FI"[string, open_mode];FI"       ;FI":: redirect to file with open(string, open_mode, 0644);FI"
;FI"        ;FI"[string, open_mode, perm];FI" ;FI":: redirect to file with open(string, open_mode, perm);FI"
;FI"        ;FI"[:child, FD];FI"              ;FI"1: redirect to the redirected file descriptor;FI"
;FI"        ;FI"K:close                    : close the file descriptor in child process;FI"
;FI"      ;FI"FD is one of follows;FI"
;FI"        ;FI"@:in     : the file descriptor 0 which is the standard input;FI"
;FI"        ;FI"A:out    : the file descriptor 1 which is the standard output;FI"
;FI"        ;FI"@:err    : the file descriptor 2 which is the standard error;FI"
;FI"        ;FI";integer : the file descriptor of specified the integer;FI"
;FI"        ;FI"9io      : the file descriptor specified as io.fileno;FI"
;FI"	    ;FI"]file descriptor inheritance: close non-redirected non-standard fds (3, 4, 5, ...) or not;FI"
;FI"      ;FI"G:close_others => false : inherit fds (default for system and exec);FI"
;FI"      ;FI"L:close_others => true  : don't inherit (default for spawn and IO.popen);FI"
;Fo;
;	[I"4If a hash is given as +env+, the environment is;FI"Gupdated by +env+ before <code>exec(2)</code> in the child process.;FI"FIf a pair in +env+ has nil as the value, the variable is deleted.;Fo; o;;	[I"  ;FI"$# set FOO as BAR and unset BAZ.;FI"
;FI"  ;FI"5pid = spawn({"FOO"=>"BAR", "BAZ"=>nil}, command);FI"
;Fo;
;	[I"%If a hash is given as +options+,;FI"it specifies;FI"process group,;FI"resource limit,;FI"current directory,;FI"umask and;FI"%redirects for the child process.;FI">Also, it can be specified to clear environment variables.;Fo; o;
;	[I"AThe <code>:unsetenv_others</code> key in +options+ specifies;FI"Cto clear environment variables, other than specified by +env+.;Fo; o;;	[I"  ;FI"Kpid = spawn(command, :unsetenv_others=>true) # no environment variable;FI"
;FI"  ;FI"Lpid = spawn({"FOO"=>"BAR"}, command, :unsetenv_others=>true) # FOO only;FI"
;Fo;
;	[
I"IThe <code>:pgroup</code> key in +options+ specifies a process group.;FI"FThe corresponding value should be true, zero or positive integer.;FI"Htrue and zero means the process should be a process leader of a new;FI"process group.;FI":Other values specifies a process group to be belongs.;Fo; o;;	[I"  ;FI"9pid = spawn(command, :pgroup=>true) # process leader;FI"
;FI"  ;FI"Hpid = spawn(command, :pgroup=>10) # belongs to the process group 10;FI"
;Fo;
;	[
I"JThe <code>:rlimit_</code><em>foo</em> key specifies a resource limit.;FI"L<em>foo</em> should be one of resource types such as <code>core</code>.;FI"OThe corresponding value should be an integer or an array which have one or;FI"@two integers: same as cur_limit and max_limit arguments for;FI"Process.setrlimit.;Fo; o;;	[I"  ;FI"(cur, max = Process.getrlimit(:CORE);FI"
;FI"  ;FI"Jpid = spawn(command, :rlimit_core=>[0,max]) # disable core temporary.;FI"
;FI"  ;FI"?pid = spawn(command, :rlimit_core=>max) # enable core dump;FI"
;FI"  ;FI"=pid = spawn(command, :rlimit_core=>0) # never dump core.;FI"
;Fo;
;	[I"NThe <code>:chdir</code> key in +options+ specifies the current directory.;Fo; o;;	[I"  ;FI"-pid = spawn(command, :chdir=>"/var/tmp");FI"
;Fo;
;	[I"BThe <code>:umask</code> key in +options+ specifies the umask.;Fo; o;;	[I"  ;FI"&pid = spawn(command, :umask=>077);FI"
;Fo;
;	[I"SThe :in, :out, :err, a fixnum, an IO and an array key specifies a redirection.;FI"AThe redirection maps a file descriptor in the child process.;Fo; o;
;	[I">For example, stderr can be merged into stdout as follows:;Fo; o;;	[I"  ;FI"%pid = spawn(command, :err=>:out);FI"
;FI"  ;FI"pid = spawn(command, 2=>1);FI"
;FI"  ;FI"'pid = spawn(command, STDERR=>:out);FI"
;FI"  ;FI")pid = spawn(command, STDERR=>STDOUT);FI"
;Fo;
;	[I".The hash keys specifies a file descriptor;FI"8in the child process started by <code>spawn</code>.;FI"E:err, 2 and STDERR specifies the standard error stream (stderr).;Fo; o;
;	[I"0The hash values specifies a file descriptor;FI"<in the parent process which invokes <code>spawn</code>.;FI"F:out, 1 and STDOUT specifies the standard output stream (stdout).;Fo; o;
;	[I"In the above example,;FI"?the standard output in the child process is not specified.;FI"0So it is inherited from the parent process.;Fo; o;
;	[I"LThe standard input stream (stdin) can be specified by :in, 0 and STDIN.;Fo; o;
;	[I"1A filename can be specified as a hash value.;Fo; o;;	[I"  ;FI"7pid = spawn(command, :in=>"/dev/null") # read mode;FI"
;FI"  ;FI"9pid = spawn(command, :out=>"/dev/null") # write mode;FI"
;FI"  ;FI"3pid = spawn(command, :err=>"log") # write mode;FI"
;FI"  ;FI"5pid = spawn(command, 3=>"/dev/null") # read mode;FI"
;Fo;
;	[I"For stdout and stderr,;FI" it is opened in write mode.;FI"!Otherwise read mode is used.;Fo; o;
;	[I"EFor specifying flags and permission of file creation explicitly,;FI"an array is used instead.;Fo; o;;	[I"  ;FI"?pid = spawn(command, :in=>["file"]) # read mode is assumed;FI"
;FI"  ;FI"-pid = spawn(command, :in=>["file", "r"]);FI"
;FI"  ;FI"<pid = spawn(command, :out=>["log", "w"]) # 0644 assumed;FI"
;FI"  ;FI"3pid = spawn(command, :out=>["log", "w", 0600]);FI"
;FI"  ;FI"Spid = spawn(command, :out=>["log", File::WRONLY|File::EXCL|File::CREAT, 0600]);FI"
;Fo;
;	[
I":The array specifies a filename, flags and permission.;FI"-The flags can be a string or an integer.;FI"=If the flags is omitted or nil, File::RDONLY is assumed.;FI")The permission should be an integer.;FI":If the permission is omitted or nil, 0644 is assumed.;Fo; o;
;	[I"AIf an array of IOs and integers are specified as a hash key,;FI"%all the elements are redirected.;Fo; o;;	[I"  ;FI"3# stdout and stderr is redirected to log file.;FI"
;FI"  ;FI"*# The file "log" is opened just once.;FI"
;FI"  ;FI"5pid = spawn(command, [:out, :err]=>["log", "w"]);FI"
;Fo;
;	[I"DAnother way to merge multiple file descriptors is [:child, fd].;FI"B\[:child, fd] means the file descriptor in the child process.;FI"This is different from fd.;FI"MFor example, :err=>:out means redirecting child stderr to parent stdout.;FI"MBut :err=>[:child, :out] means redirecting child stderr to child stdout.;FI"JThey differs if stdout is redirected in the child process as follows.;Fo; o;;	[I"  ;FI"3# stdout and stderr is redirected to log file.;FI"
;FI"  ;FI"*# The file "log" is opened just once.;FI"
;FI"  ;FI"Cpid = spawn(command, :out=>["log", "w"], :err=>[:child, :out]);FI"
;Fo;
;	[I"I\[:child, :out] can be used to merge stderr into stdout in IO.popen.;FI"KIn this case, IO.popen redirects stdout to a pipe in the child process;FI"5and [:child, :out] refers the redirected stdout.;Fo; o;;	[I"  ;FI"Pio = IO.popen(["sh", "-c", "echo out; echo err >&2", :err=>[:child, :out]]);FI"
;FI"  ;FI"p io.read #=> "out\nerr\n";FI"
;Fo;
;	[
I"Fspawn closes all non-standard unspecified descriptors by default.;FI"/The "standard" descriptors are 0, 1 and 2.;FI"8This behavior is specified by :close_others option.;FI"D:close_others doesn't affect the standard descriptors which are;FI"3closed only if :close is specified explicitly.;Fo; o;;	[I"  ;FI"Kpid = spawn(command, :close_others=>true)  # close 3,4,5,... (default);FI"
;FI"  ;FI"Gpid = spawn(command, :close_others=>false) # don't close 3,4,5,...;FI"
;Fo;
;	[I"=:close_others is true by default for spawn and IO.popen.;Fo; o;
;	[I"2So IO.pipe and spawn can be used as IO.popen.;Fo; o;;	[I"  ;FI"'# similar to r = IO.popen(command);FI"
;FI"  ;FI"r, w = IO.pipe;FI"
;FI"  ;FI"Kpid = spawn(command, :out=>w)   # r, w is closed in the child process.;FI"
;FI"  ;FI"w.close;FI"
;Fo;
;	[I"D:close is specified as a hash value to close a fd individually.;Fo; o;;	[I"  ;FI"f = open(foo);FI"
;FI"  ;FI"9system(command, f=>:close)        # don't inherit f.;FI"
;Fo;
;	[I"/If a file descriptor need to be inherited,;FI"io=>io can be used.;Fo; o;;	[I"  ;FI"8# valgrind has --log-fd option for log destination.;FI"
;FI"  ;FI"E# log_w=>log_w indicates log_w.fileno inherits to child process.;FI"
;FI"  ;FI"log_r, log_w = IO.pipe;FI"
;FI"  ;FI"Spid = spawn("valgrind", "--log-fd=#{log_w.fileno}", "echo", "a", log_w=>log_w);FI"
;FI"  ;FI"log_w.close;FI"
;FI"  ;FI"p log_r.read;FI"
;Fo;
;	[I"6It is also possible to exchange file descriptors.;Fo; o;;	[I"  ;FI"1pid = spawn(command, :out=>:err, :err=>:out);FI"
;Fo;
;	[
I"AThe hash keys specify file descriptors in the child process.;FI"FThe hash values specifies file descriptors in the parent process.;FI"9So the above specifies exchanging stdout and stderr.;FI"MInternally, +spawn+ uses an extra file descriptor to resolve such cyclic;FI"file descriptor mapping.;Fo; o;
;	[I"9See <code>Kernel.exec</code> for the standard shell.;FI"kspawn([env,] command... [,options])     -> pid
Process.spawn([env,] command... [,options])     -> pid
;F0[ I"
(...);F