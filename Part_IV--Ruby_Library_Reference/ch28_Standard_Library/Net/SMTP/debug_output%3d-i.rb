U:RDoc::AnyMethod[iI"debug_output=:EFI"Net::SMTP#debug_output=;FF:publico:RDoc::Markup::Document:@parts[
o:RDoc::Markup::Paragraph;	[I"8WARNING: This method causes serious security holes.;FI"(Use this method for only debugging.;Fo:RDoc::Markup::BlankLine o;
;	[I",Set an output stream for debug logging.;FI"&You must call this before #start.;Fo; o:RDoc::Markup::Verbatim;	[I"  ;FI"# example;FI"
;FI"  ;FI"%smtp = Net::SMTP.new(addr, port);FI"
;FI"  ;FI""smtp.set_debug_output $stderr;FI"
;FI"  ;FI"smtp.start do |smtp|;FI"
;FI"	    ;FI"	....;FI"
;FI"  ;FI"end;F00[[I"Net::SMTP#set_debug_output;Fo;;	[ I"
(arg);F