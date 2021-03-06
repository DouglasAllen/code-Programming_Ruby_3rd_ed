U:RDoc::AnyMethod[iI"setrlimit:EFI"Process::setrlimit;FT:publico:RDoc::Markup::Document:@parts[o:RDoc::Markup::Paragraph;	[I",Sets the resource limit of the process.;FI"/_cur_limit_ means current (soft) limit and;FI",_max_limit_ means maximum (hard) limit.;Fo:RDoc::Markup::BlankLine o;
;	[I"6If _max_limit_ is not given, _cur_limit_ is used.;Fo; o;
;	[I"8_resource_ indicates the kind of resource to limit.;FI"6It should be a symbol such as <code>:CORE</code>,;FI",a string such as <code>"CORE"</code> or;FI":a constant such as <code>Process::RLIMIT_CORE</code>.;FI".The available resources are OS dependent.;FI"*Ruby may support following resources.;Fo; o:RDoc::Markup::List:
@type:
LABEL:@items[o:RDoc::Markup::ListItem:@labelI"	CORE;F;	[o;
;	[I"core size (bytes) (SUSv3);Fo;;I"CPU;F;	[o;
;	[I"CPU time (seconds) (SUSv3);Fo;;I"	DATA;F;	[o;
;	[I"!data segment (bytes) (SUSv3);Fo;;I"
FSIZE;F;	[o;
;	[I"file size (bytes) (SUSv3);Fo;;I"NOFILE;F;	[o;
;	[I"&file descriptors (number) (SUSv3);Fo;;I"
STACK;F;	[o;
;	[I"stack size (bytes) (SUSv3);Fo;;I"AS;F;	[o;
;	[I"Utotal available memory (bytes) (SUSv3, NetBSD, FreeBSD, OpenBSD but 4.4BSD-Lite);Fo;;I"MEMLOCK;F;	[o;
;	[I"8total size for mlock(2) (bytes) (4.4BSD, GNU/Linux);Fo;;I"
NPROC;F;	[o;
;	[I"Bnumber of processes for the user (number) (4.4BSD, GNU/Linux);Fo;;I"RSS;F;	[o;
;	[I"5resident memory size (bytes) (4.2BSD, GNU/Linux);Fo;;I"SBSIZE;F;	[o;
;	[I"1all socket buffers (bytes) (NetBSD, FreeBSD);Fo; o;
;	[I"'_cur_limit_ and _max_limit_ may be;FI"7<code>:INFINITY</code>, <code>"INFINITY"</code> or;FI")<code>Process::RLIM_INFINITY</code>,;FI"2which means that the resource is not limited.;FI"6They may be <code>Process::RLIM_SAVED_MAX</code>,;FI"-<code>Process::RLIM_SAVED_CUR</code> and;FI"+corresponding symbols and strings too.;FI"0See system setrlimit(2) manual for details.;Fo; o;
;	[I"?The following example raise the soft limit of core size to;FI"6the hard limit to try to make core dump possible.;Fo; o:RDoc::Markup::Verbatim;	[I"  ;FI":Process.setrlimit(:CORE, Process.getrlimit(:CORE)[1]);FI"�Process.setrlimit(resource, cur_limit, max_limit)        -> nil
Process.setrlimit(resource, cur_limit)                   -> nil
;F0[ I"
(...);F