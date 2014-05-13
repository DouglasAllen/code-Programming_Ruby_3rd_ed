U:RDoc::AnyMethod[iI"	path:EFI"URI::FTP#path;FF:publico:RDoc::Markup::Document:@parts[o:RDoc::Markup::Paragraph;	[I"&Returns the path from an FTP URI.;Fo:RDoc::Markup::BlankLine o;
;	[I"GRFC 1738 specifically states that the path for an FTP URI does not;FI"Kinclude the / which separates the URI path from the URI host. Example:;Fo; o:RDoc::Markup::Verbatim;	[I"	    ;FI"#ftp://ftp.example.com/pub/ruby;FI"
;Fo;
;	[I">The above URI indicates that the client should connect to;FI"Gftp.example.com then cd pub/ruby from the initial login directory.;Fo; o;
;	[I"DIf you want to cd to an absolute directory, you must include an;FI"*escaped / (%2F) in the path. Example:;Fo; o;;	[I"	    ;FI"&ftp://ftp.example.com/%2Fpub/ruby;FI"
;Fo;
;	[I"-This method will then return "/pub/ruby";F00[ I"();F