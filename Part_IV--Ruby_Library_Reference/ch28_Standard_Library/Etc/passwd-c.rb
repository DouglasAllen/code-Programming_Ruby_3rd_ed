U:RDoc::AnyMethod[iI"passwd:EFI"Etc::passwd;FT:publico:RDoc::Markup::Document:@parts[o:RDoc::Markup::Paragraph;	[I"NProvides a convenient Ruby iterator which executes a block for each entry;FI"in the /etc/passwd file.;Fo:RDoc::Markup::BlankLine o;
;	[I"NThe code block is passed an Struct::Passwd struct; see getpwent above for;FI"details.;Fo; o;
;	[I"Example:;Fo; o:RDoc::Markup::Verbatim;	[I"	    ;FI"require 'etc';FI"
;FI"
;FI"	    ;FI"Etc.passwd {|u|;FI"
;FI"      ;FI""puts u.name + " = " + u.gecos;FI"
;FI"	    ;FI"};F00[ I"();F