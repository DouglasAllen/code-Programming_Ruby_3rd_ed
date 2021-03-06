U:RDoc::AnyMethod[iI"waitpid:EFI"Process::waitpid;FT:publico:RDoc::Markup::Document:@parts[o:RDoc::Markup::Paragraph;	[	I"CWaits for a child process to exit, returns its process id, and;FI"Bsets <code>$?</code> to a <code>Process::Status</code> object;FI"Dcontaining information on that process. Which child it waits on;FI"#depends on the value of _pid_:;Fo:RDoc::Markup::BlankLine o:RDoc::Markup::List:
@type:	NOTE:@items[	o:RDoc::Markup::ListItem:@labelI"> 0;F;	[o;
;	[I"7Waits for the child whose process ID equals _pid_.;Fo; o;;I"0;F;	[o;
;	[I"BWaits for any child whose process group ID equals that of the;FI"calling process.;Fo; o;;I"-1;F;	[o;
;	[I"<Waits for any child process (the default if no _pid_ is;FI"given).;Fo; o;;I"	< -1;F;	[o;
;	[I"CWaits for any child whose process group ID equals the absolute;FI"value of _pid_.;Fo; o;
;	[
I"@The _flags_ argument may be a logical or of the flag values;FI"G<code>Process::WNOHANG</code> (do not block if no child available);FI"Eor <code>Process::WUNTRACED</code> (return stopped children that;FI"?haven't been reported). Not all flags are available on all;FI"Dplatforms, but a flag value of zero will work on all platforms.;Fo; o;
;	[I"GCalling this method raises a <code>SystemError</code> if there are;FI"8no child processes. Not available on all platforms.;Fo; o:RDoc::Markup::Verbatim;	[#I"   ;FI"include Process;FI"
;FI"   ;FI"/fork { exit 99 }                 #=> 27429;FI"
;FI"   ;FI"/wait                             #=> 27429;FI"
;FI"   ;FI",$?.exitstatus                    #=> 99;FI"
;FI"
;FI"   ;FI"/pid = fork { sleep 3 }           #=> 27440;FI"
;FI"   ;FI"CTime.now                         #=> 2008-03-08 19:56:16 +0900;FI"
;FI"   ;FI"-waitpid(pid, Process::WNOHANG)   #=> nil;FI"
;FI"   ;FI"CTime.now                         #=> 2008-03-08 19:56:16 +0900;FI"
;FI"   ;FI"/waitpid(pid, 0)                  #=> 27440;FI"
;FI"   ;FI"CTime.now                         #=> 2008-03-08 19:56:19 +0900;FI"�Process.wait()                     -> fixnum
Process.wait(pid=-1, flags=0)      -> fixnum
Process.waitpid(pid=-1, flags=0)   -> fixnum
;F0[ I"
(...);F