U:RDoc::AnyMethod[iI"
group:EFI"Etc::group;FT:publico:RDoc::Markup::Document:@parts[o:RDoc::Markup::Paragraph;	[I"NProvides a convenient Ruby iterator which executes a block for each entry;FI"in the /etc/group file.;Fo:RDoc::Markup::BlankLine o;
;	[I"MThe code block is passed an Struct::Group struct; see getgrent above for;FI"details.;Fo; o;
;	[I"Example:;Fo; o:RDoc::Markup::Verbatim;	[I"	    ;FI"require 'etc';FI"
;FI"
;FI"	    ;FI"Etc.group {|g|;FI"
;FI"      ;FI"*puts g.name + ": " + g.mem.join(', ');FI"
;FI"	    ;FI"};F00[ I"();F