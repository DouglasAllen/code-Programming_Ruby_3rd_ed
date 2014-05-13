U:RDoc::AnyMethod[iI"	test:EFI"!Shell::CommandProcessor#test;FF:publico:RDoc::Markup::Document:@parts[ 00[[I"+Shell::CommandProcessor#top_level_test;Fo;;	[o:RDoc::Markup::Paragraph;	[I"1CommandProcessor#test(command, file1, file2);FI"-CommandProcessor#[command, file1, file2];Fo:RDoc::Markup::Verbatim;	[+I"	    ;FI"&command: char or String or Symbol;FI"
;FI"	    ;FI"file1:   String;FI"
;FI"	    ;FI"file2:   String(optional);FI"
;FI"	    ;FI"return: Boolean;FI"
;FI"  ;FI"same as:;FI"
;FI"	    ;FI"Ctest()     (when command is char or length 1 string or symbol);FI"
;FI"	    ;FI"FileTest.command (others);FI"
;FI"  ;FI"example:;FI"
;FI"	    ;FI"sh[?e, "foo"];FI"
;FI"	    ;FI"sh[:e, "foo"];FI"
;FI"	    ;FI"sh["e", "foo"];FI"
;FI"	    ;FI"sh[:exists?, "foo"];FI"
;FI"	    ;FI"sh["exists?", "foo"];F[I"Shell::CommandProcessor#[];Fo;;	[ I" (command, file1, file2=nil);F