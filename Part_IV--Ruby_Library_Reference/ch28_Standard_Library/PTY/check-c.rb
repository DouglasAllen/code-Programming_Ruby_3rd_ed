U:RDoc::AnyMethod[iI"
check:EFI"PTY::check;FT:publico:RDoc::Markup::Document:@parts[o:RDoc::Markup::Paragraph;	[	I"Cchecks the status of the child process specified by _pid_, and;FI"Hreturns +nil+ if the process is still alive and active.  Otherwise,;FI"Hreturns +Process::Status+ about the process if _raise_ is false, or;FI",+PTY::ChildExited+ exception is raised.;FI"?PTY.check(pid[, raise=false])   => Process::Status or nil
;F0[ I"
(...);F