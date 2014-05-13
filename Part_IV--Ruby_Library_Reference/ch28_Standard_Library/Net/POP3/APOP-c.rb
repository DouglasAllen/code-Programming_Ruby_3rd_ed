U:RDoc::AnyMethod[iI"	APOP:EFI"Net::POP3::APOP;FT:publico:RDoc::Markup::Document:@parts[o:RDoc::Markup::Paragraph;	[I"CReturns the APOP class if +isapop+ is true; otherwise, returns;FI"!the POP class.  For example:;Fo:RDoc::Markup::BlankLine o:RDoc::Markup::Verbatim;	[I"	    ;FI"# Example 1;FI"
;FI"	    ;FI"4pop = Net::POP3::APOP($is_apop).new(addr, port);FI"
;FI"
;FI"	    ;FI"# Example 2;FI"
;FI"	    ;FI"9Net::POP3::APOP($is_apop).start(addr, port) do |pop|;FI"
;FI"      ;FI"	....;FI"
;FI"	    ;FI"end;F00[ I"(isapop);F