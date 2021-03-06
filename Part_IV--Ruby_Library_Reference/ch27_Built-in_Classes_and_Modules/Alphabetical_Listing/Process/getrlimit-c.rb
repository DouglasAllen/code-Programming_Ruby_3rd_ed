U:RDoc::AnyMethod[iI"getrlimit:EFI"Process::getrlimit;FT:publico:RDoc::Markup::Document:@parts[
o:RDoc::Markup::Paragraph;	[I",Gets the resource limit of the process.;FI"/_cur_limit_ means current (soft) limit and;FI",_max_limit_ means maximum (hard) limit.;Fo:RDoc::Markup::BlankLine o;
;	[
I"8_resource_ indicates the kind of resource to limit.;FI"<It is specified as a symbol such as <code>:CORE</code>,;FI",a string such as <code>"CORE"</code> or;FI":a constant such as <code>Process::RLIMIT_CORE</code>.;FI"'See Process.setrlimit for details.;Fo; o;
;	[	I"L_cur_limit_ and _max_limit_ may be <code>Process::RLIM_INFINITY</code>,;FI",<code>Process::RLIM_SAVED_MAX</code> or;FI"*<code>Process::RLIM_SAVED_CUR</code>.;FI"JSee Process.setrlimit and the system getrlimit(2) manual for details.;FI"=Process.getrlimit(resource)   -> [cur_limit, max_limit]
;F0[ I"	(p1);F