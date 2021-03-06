U:RDoc::AnyMethod[iI"	data:EFI"Net::SMTP#data;FF:publico:RDoc::Markup::Document:@parts[o:RDoc::Markup::Paragraph;	[	I"!This method sends a message.;FI"1If +msgstr+ is given, sends it as a message.;FI"6If block is given, yield a message writer stream.;FI"7You must write message before the block is closed.;Fo:RDoc::Markup::BlankLine o:RDoc::Markup::Verbatim;	[3I"  ;FI"# Example 1 (by string);FI"
;FI"  ;FI"smtp.data(<<EndMessage);FI"
;FI"  ;FI"From: john@example.com;FI"
;FI"  ;FI"To: betty@example.com;FI"
;FI"  ;FI"Subject: I found a bug;FI"
;FI"
;FI"  ;FI"Check vm.c:58879.;FI"
;FI"  ;FI"EndMessage;FI"
;FI"
;FI"  ;FI"# Example 2 (by block);FI"
;FI"  ;FI"smtp.data {|f|;FI"
;FI"	    ;FI"$f.puts "From: john@example.com";FI"
;FI"	    ;FI"#f.puts "To: betty@example.com";FI"
;FI"	    ;FI"$f.puts "Subject: I found a bug";FI"
;FI"	    ;FI"f.puts "";FI"
;FI"	    ;FI"f.puts "Check vm.c:58879.";FI"
;FI"  ;FI"};F0I"stream;F[ I"(msgstr = nil);F