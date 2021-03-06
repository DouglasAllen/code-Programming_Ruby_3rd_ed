U:RDoc::NormalClass[i I"	POP3:EFI"Net::POP3;FI"Protocol;Fo:RDoc::Markup::Document:@parts[XS:RDoc::Markup::Heading:
leveli:	textI"Net::POP3;Fo:RDoc::Markup::BlankLine S;	;
i;I"What is This Library?;Fo; o:RDoc::Markup::Paragraph;[I"7This library provides functionality for retrieving;FI"Demail via POP3, the Post Office Protocol version 3. For details;FI"Bof POP3, see [RFC1939] (http://www.ietf.org/rfc/rfc1939.txt).;Fo; S;	;
i;I"Examples;Fo; S;	;
i;I"Retrieving Messages;Fo; o;;[I"EThis example retrieves messages from the server and deletes them;FI"on the server.;Fo; o;;[	I"CMessages are written to files named 'inbox/1', 'inbox/2', ....;FI"AReplace 'pop.example.com' with your POP3 server address, and;FI"B'YourAccount' and 'YourPassword' with the appropriate account;FI"details.;Fo; o:RDoc::Markup::Verbatim;[9I"	    ;FI"require 'net/pop';FI"
;FI"
;FI"	    ;FI"+pop = Net::POP3.new('pop.example.com');FI"
;FI"	    ;FI"?pop.start('YourAccount', 'YourPassword')             # (1);FI"
;FI"	    ;FI"if pop.mails.empty?;FI"
;FI"      ;FI"puts 'No mail.';FI"
;FI"	    ;FI"	else;FI"
;FI"      ;FI"
i = 0;FI"
;FI"      ;FI"=pop.each_mail do |m|   # or "pop.mails.each ..."   # (2);FI"
;FI"        ;FI"(File.open("inbox/#{i}", 'w') do |f|;FI"
;FI"          ;FI"f.write m.pop;FI"
;FI"        ;FI"end;FI"
;FI"        ;FI"m.delete;FI"
;FI"        ;FI"i += 1;FI"
;FI"      ;FI"end;FI"
;FI"      ;FI"+puts "#{pop.mails.size} mails popped.";FI"
;FI"	    ;FI"end;FI"
;FI"	    ;FI"?pop.finish                                           # (3);FI"
;Fo:RDoc::Markup::List:
@type:NUMBER:@items[o:RDoc::Markup::ListItem:@label0;[o;;[I"0Call Net::POP3#start and start POP session.;Fo;;0;[o;;[I"?Access messages by using POP3#each_mail and/or POP3#mails.;Fo;;0;[o;;[I"NClose POP session by calling POP3#finish or use the block form of #start.;Fo; S;	;
i;I"Shortened Code;Fo; o;;[I"IThe example above is very verbose. You can shorten the code by using;FI"Gsome utility methods. First, the block form of Net::POP3.start can;FI"=be used instead of POP3.new, POP3#start and POP3#finish.;Fo; o;;[9I"	    ;FI"require 'net/pop';FI"
;FI"
;FI"	    ;FI",Net::POP3.start('pop.example.com', 110,;FI"
;FI"                    ;FI",'YourAccount', 'YourPassword') do |pop|;FI"
;FI"      ;FI"if pop.mails.empty?;FI"
;FI"        ;FI"puts 'No mail.';FI"
;FI"      ;FI"	else;FI"
;FI"        ;FI"
i = 0;FI"
;FI"        ;FI"5pop.each_mail do |m|   # or "pop.mails.each ...";FI"
;FI"          ;FI"(File.open("inbox/#{i}", 'w') do |f|;FI"
;FI"            ;FI"f.write m.pop;FI"
;FI"          ;FI"end;FI"
;FI"          ;FI"m.delete;FI"
;FI"          ;FI"i += 1;FI"
;FI"        ;FI"end;FI"
;FI"        ;FI"+puts "#{pop.mails.size} mails popped.";FI"
;FI"      ;FI"end;FI"
;FI"	    ;FI"end;FI"
;Fo;;[I"BPOP3#delete_all is an alternative for #each_mail and #delete.;Fo; o;;[3I"	    ;FI"require 'net/pop';FI"
;FI"
;FI"	    ;FI",Net::POP3.start('pop.example.com', 110,;FI"
;FI"                    ;FI",'YourAccount', 'YourPassword') do |pop|;FI"
;FI"      ;FI"if pop.mails.empty?;FI"
;FI"        ;FI"puts 'No mail.';FI"
;FI"      ;FI"	else;FI"
;FI"        ;FI"
i = 1;FI"
;FI"        ;FI"pop.delete_all do |m|;FI"
;FI"          ;FI"(File.open("inbox/#{i}", 'w') do |f|;FI"
;FI"            ;FI"f.write m.pop;FI"
;FI"          ;FI"end;FI"
;FI"          ;FI"i += 1;FI"
;FI"        ;FI"end;FI"
;FI"      ;FI"end;FI"
;FI"	    ;FI"end;FI"
;Fo;;[I")And here is an even shorter example.;Fo; o;;[!I"	    ;FI"require 'net/pop';FI"
;FI"
;FI"	    ;FI"
i = 0;FI"
;FI"	    ;FI"1Net::POP3.delete_all('pop.example.com', 110,;FI"
;FI"                         ;FI"*'YourAccount', 'YourPassword') do |m|;FI"
;FI"      ;FI"(File.open("inbox/#{i}", 'w') do |f|;FI"
;FI"        ;FI"f.write m.pop;FI"
;FI"      ;FI"end;FI"
;FI"      ;FI"i += 1;FI"
;FI"	    ;FI"end;FI"
;FS;	;
i;I"Memory Space Issues;Fo; o;;[I"?All the examples above get each message as one big string.;FI"This example avoids this.;Fo; o;;['I"	    ;FI"require 'net/pop';FI"
;FI"
;FI"	    ;FI"
i = 1;FI"
;FI"	    ;FI"1Net::POP3.delete_all('pop.example.com', 110,;FI"
;FI"                         ;FI"*'YourAccount', 'YourPassword') do |m|;FI"
;FI"      ;FI"(File.open("inbox/#{i}", 'w') do |f|;FI"
;FI"        ;FI":m.pop do |chunk|    # get a message little by little.;FI"
;FI"          ;FI"f.write chunk;FI"
;FI"        ;FI"end;FI"
;FI"        ;FI"i += 1;FI"
;FI"      ;FI"end;FI"
;FI"	    ;FI"end;FI"
;FS;	;
i;I"Using APOP;Fo; o;;[I"6The net/pop library supports APOP authentication.;FI"ITo use APOP, use the Net::APOP class instead of the Net::POP3 class.;FI"CYou can use the utility method, Net::POP3.APOP(). For example:;Fo; o;;[I"	    ;FI"require 'net/pop';FI"
;FI"
;FI"	    ;FI"1# Use APOP authentication if $isapop == true;FI"
;FI"	    ;FI"@pop = Net::POP3.APOP($is_apop).new('apop.example.com', 110);FI"
;FI"	    ;FI"5pop.start(YourAccount', 'YourPassword') do |pop|;FI"
;FI"      ;FI"$# Rest of the code is the same.;FI"
;FI"	    ;FI"end;FI"
;FS;	;
i;I"6Fetch Only Selected Mail Using 'UIDL' POP Command;Fo; o;;[I"4If your POP server provides UIDL functionality,;FI":you can grab only selected mails from the POP server.;FI"	e.g.;Fo; o;;[!I"	    ;FI"def need_pop?( id );FI"
;FI"      ;FI",# determine if we need pop this mail...;FI"
;FI"	    ;FI"end;FI"
;FI"
;FI"	    ;FI",Net::POP3.start('pop.example.com', 110,;FI"
;FI"                    ;FI".'Your account', 'Your password') do |pop|;FI"
;FI"      ;FI"@pop.mails.select { |m| need_pop?(m.unique_id) }.each do |m|;FI"
;FI"        ;FI"do_something(m.pop);FI"
;FI"      ;FI"end;FI"
;FI"	    ;FI"end;FI"
;Fo;;[I"MThe POPMail#unique_id() method returns the unique-id of the message as a;FI"=String. Normally the unique-id is a hash of the message.;FS;	;
i;I"Net::POP3;Fo; S;	;
i;I"What is This Library?;Fo; o;;[I"7This library provides functionality for retrieving;FI"Demail via POP3, the Post Office Protocol version 3. For details;FI"Bof POP3, see [RFC1939] (http://www.ietf.org/rfc/rfc1939.txt).;Fo; S;	;
i;I"Examples;Fo; S;	;
i;I"Retrieving Messages;Fo; o;;[I"EThis example retrieves messages from the server and deletes them;FI"on the server.;Fo; o;;[	I"CMessages are written to files named 'inbox/1', 'inbox/2', ....;FI"AReplace 'pop.example.com' with your POP3 server address, and;FI"B'YourAccount' and 'YourPassword' with the appropriate account;FI"details.;Fo; o;;[9I"	    ;FI"require 'net/pop';FI"
;FI"
;FI"	    ;FI"+pop = Net::POP3.new('pop.example.com');FI"
;FI"	    ;FI"?pop.start('YourAccount', 'YourPassword')             # (1);FI"
;FI"	    ;FI"if pop.mails.empty?;FI"
;FI"      ;FI"puts 'No mail.';FI"
;FI"	    ;FI"	else;FI"
;FI"      ;FI"
i = 0;FI"
;FI"      ;FI"=pop.each_mail do |m|   # or "pop.mails.each ..."   # (2);FI"
;FI"        ;FI"(File.open("inbox/#{i}", 'w') do |f|;FI"
;FI"          ;FI"f.write m.pop;FI"
;FI"        ;FI"end;FI"
;FI"        ;FI"m.delete;FI"
;FI"        ;FI"i += 1;FI"
;FI"      ;FI"end;FI"
;FI"      ;FI"+puts "#{pop.mails.size} mails popped.";FI"
;FI"	    ;FI"end;FI"
;FI"	    ;FI"?pop.finish                                           # (3);FI"
;Fo;;;;[o;;0;[o;;[I"0Call Net::POP3#start and start POP session.;Fo;;0;[o;;[I"?Access messages by using POP3#each_mail and/or POP3#mails.;Fo;;0;[o;;[I"NClose POP session by calling POP3#finish or use the block form of #start.;Fo; S;	;
i;I"Shortened Code;Fo; o;;[I"IThe example above is very verbose. You can shorten the code by using;FI"Gsome utility methods. First, the block form of Net::POP3.start can;FI"=be used instead of POP3.new, POP3#start and POP3#finish.;Fo; o;;[9I"	    ;FI"require 'net/pop';FI"
;FI"
;FI"	    ;FI",Net::POP3.start('pop.example.com', 110,;FI"
;FI"                    ;FI",'YourAccount', 'YourPassword') do |pop|;FI"
;FI"      ;FI"if pop.mails.empty?;FI"
;FI"        ;FI"puts 'No mail.';FI"
;FI"      ;FI"	else;FI"
;FI"        ;FI"
i = 0;FI"
;FI"        ;FI"5pop.each_mail do |m|   # or "pop.mails.each ...";FI"
;FI"          ;FI"(File.open("inbox/#{i}", 'w') do |f|;FI"
;FI"            ;FI"f.write m.pop;FI"
;FI"          ;FI"end;FI"
;FI"          ;FI"m.delete;FI"
;FI"          ;FI"i += 1;FI"
;FI"        ;FI"end;FI"
;FI"        ;FI"+puts "#{pop.mails.size} mails popped.";FI"
;FI"      ;FI"end;FI"
;FI"	    ;FI"end;FI"
;Fo;;[I"BPOP3#delete_all is an alternative for #each_mail and #delete.;Fo; o;;[3I"	    ;FI"require 'net/pop';FI"
;FI"
;FI"	    ;FI",Net::POP3.start('pop.example.com', 110,;FI"
;FI"                    ;FI",'YourAccount', 'YourPassword') do |pop|;FI"
;FI"      ;FI"if pop.mails.empty?;FI"
;FI"        ;FI"puts 'No mail.';FI"
;FI"      ;FI"	else;FI"
;FI"        ;FI"
i = 1;FI"
;FI"        ;FI"pop.delete_all do |m|;FI"
;FI"          ;FI"(File.open("inbox/#{i}", 'w') do |f|;FI"
;FI"            ;FI"f.write m.pop;FI"
;FI"          ;FI"end;FI"
;FI"          ;FI"i += 1;FI"
;FI"        ;FI"end;FI"
;FI"      ;FI"end;FI"
;FI"	    ;FI"end;FI"
;Fo;;[I")And here is an even shorter example.;Fo; o;;[!I"	    ;FI"require 'net/pop';FI"
;FI"
;FI"	    ;FI"
i = 0;FI"
;FI"	    ;FI"1Net::POP3.delete_all('pop.example.com', 110,;FI"
;FI"                         ;FI"*'YourAccount', 'YourPassword') do |m|;FI"
;FI"      ;FI"(File.open("inbox/#{i}", 'w') do |f|;FI"
;FI"        ;FI"f.write m.pop;FI"
;FI"      ;FI"end;FI"
;FI"      ;FI"i += 1;FI"
;FI"	    ;FI"end;FI"
;FS;	;
i;I"Memory Space Issues;Fo; o;;[I"?All the examples above get each message as one big string.;FI"This example avoids this.;Fo; o;;['I"	    ;FI"require 'net/pop';FI"
;FI"
;FI"	    ;FI"
i = 1;FI"
;FI"	    ;FI"1Net::POP3.delete_all('pop.example.com', 110,;FI"
;FI"                         ;FI"*'YourAccount', 'YourPassword') do |m|;FI"
;FI"      ;FI"(File.open("inbox/#{i}", 'w') do |f|;FI"
;FI"        ;FI":m.pop do |chunk|    # get a message little by little.;FI"
;FI"          ;FI"f.write chunk;FI"
;FI"        ;FI"end;FI"
;FI"        ;FI"i += 1;FI"
;FI"      ;FI"end;FI"
;FI"	    ;FI"end;FI"
;FS;	;
i;I"Using APOP;Fo; o;;[I"6The net/pop library supports APOP authentication.;FI"ITo use APOP, use the Net::APOP class instead of the Net::POP3 class.;FI"CYou can use the utility method, Net::POP3.APOP(). For example:;Fo; o;;[I"	    ;FI"require 'net/pop';FI"
;FI"
;FI"	    ;FI"1# Use APOP authentication if $isapop == true;FI"
;FI"	    ;FI"@pop = Net::POP3.APOP($is_apop).new('apop.example.com', 110);FI"
;FI"	    ;FI"5pop.start(YourAccount', 'YourPassword') do |pop|;FI"
;FI"      ;FI"$# Rest of the code is the same.;FI"
;FI"	    ;FI"end;FI"
;FS;	;
i;I"6Fetch Only Selected Mail Using 'UIDL' POP Command;Fo; o;;[I"4If your POP server provides UIDL functionality,;FI":you can grab only selected mails from the POP server.;FI"	e.g.;Fo; o;;[!I"	    ;FI"def need_pop?( id );FI"
;FI"      ;FI",# determine if we need pop this mail...;FI"
;FI"	    ;FI"end;FI"
;FI"
;FI"	    ;FI",Net::POP3.start('pop.example.com', 110,;FI"
;FI"                    ;FI".'Your account', 'Your password') do |pop|;FI"
;FI"      ;FI"@pop.mails.select { |m| need_pop?(m.unique_id) }.each do |m|;FI"
;FI"        ;FI"do_something(m.pop);FI"
;FI"      ;FI"end;FI"
;FI"	    ;FI"end;FI"
;Fo;;[I"MThe POPMail#unique_id() method returns the unique-id of the message as a;FI"=String. Normally the unique-id is a hash of the message.;FS;	;
i;I"Net::POP3;Fo; S;	;
i;I"What is This Library?;Fo; o;;[I"7This library provides functionality for retrieving;FI"Demail via POP3, the Post Office Protocol version 3. For details;FI"Bof POP3, see [RFC1939] (http://www.ietf.org/rfc/rfc1939.txt).;Fo; S;	;
i;I"Examples;Fo; S;	;
i;I"Retrieving Messages;Fo; o;;[I"EThis example retrieves messages from the server and deletes them;FI"on the server.;Fo; o;;[	I"CMessages are written to files named 'inbox/1', 'inbox/2', ....;FI"AReplace 'pop.example.com' with your POP3 server address, and;FI"B'YourAccount' and 'YourPassword' with the appropriate account;FI"details.;Fo; o;;[9I"	    ;FI"require 'net/pop';FI"
;FI"
;FI"	    ;FI"+pop = Net::POP3.new('pop.example.com');FI"
;FI"	    ;FI"?pop.start('YourAccount', 'YourPassword')             # (1);FI"
;FI"	    ;FI"if pop.mails.empty?;FI"
;FI"      ;FI"puts 'No mail.';FI"
;FI"	    ;FI"	else;FI"
;FI"      ;FI"
i = 0;FI"
;FI"      ;FI"=pop.each_mail do |m|   # or "pop.mails.each ..."   # (2);FI"
;FI"        ;FI"(File.open("inbox/#{i}", 'w') do |f|;FI"
;FI"          ;FI"f.write m.pop;FI"
;FI"        ;FI"end;FI"
;FI"        ;FI"m.delete;FI"
;FI"        ;FI"i += 1;FI"
;FI"      ;FI"end;FI"
;FI"      ;FI"+puts "#{pop.mails.size} mails popped.";FI"
;FI"	    ;FI"end;FI"
;FI"	    ;FI"?pop.finish                                           # (3);FI"
;Fo;;;;[o;;0;[o;;[I"0Call Net::POP3#start and start POP session.;Fo;;0;[o;;[I"?Access messages by using POP3#each_mail and/or POP3#mails.;Fo;;0;[o;;[I"NClose POP session by calling POP3#finish or use the block form of #start.;Fo; S;	;
i;I"Shortened Code;Fo; o;;[I"IThe example above is very verbose. You can shorten the code by using;FI"Gsome utility methods. First, the block form of Net::POP3.start can;FI"=be used instead of POP3.new, POP3#start and POP3#finish.;Fo; o;;[9I"	    ;FI"require 'net/pop';FI"
;FI"
;FI"	    ;FI",Net::POP3.start('pop.example.com', 110,;FI"
;FI"                    ;FI",'YourAccount', 'YourPassword') do |pop|;FI"
;FI"      ;FI"if pop.mails.empty?;FI"
;FI"        ;FI"puts 'No mail.';FI"
;FI"      ;FI"	else;FI"
;FI"        ;FI"
i = 0;FI"
;FI"        ;FI"5pop.each_mail do |m|   # or "pop.mails.each ...";FI"
;FI"          ;FI"(File.open("inbox/#{i}", 'w') do |f|;FI"
;FI"            ;FI"f.write m.pop;FI"
;FI"          ;FI"end;FI"
;FI"          ;FI"m.delete;FI"
;FI"          ;FI"i += 1;FI"
;FI"        ;FI"end;FI"
;FI"        ;FI"+puts "#{pop.mails.size} mails popped.";FI"
;FI"      ;FI"end;FI"
;FI"	    ;FI"end;FI"
;Fo;;[I"BPOP3#delete_all is an alternative for #each_mail and #delete.;Fo; o;;[3I"	    ;FI"require 'net/pop';FI"
;FI"
;FI"	    ;FI",Net::POP3.start('pop.example.com', 110,;FI"
;FI"                    ;FI",'YourAccount', 'YourPassword') do |pop|;FI"
;FI"      ;FI"if pop.mails.empty?;FI"
;FI"        ;FI"puts 'No mail.';FI"
;FI"      ;FI"	else;FI"
;FI"        ;FI"
i = 1;FI"
;FI"        ;FI"pop.delete_all do |m|;FI"
;FI"          ;FI"(File.open("inbox/#{i}", 'w') do |f|;FI"
;FI"            ;FI"f.write m.pop;FI"
;FI"          ;FI"end;FI"
;FI"          ;FI"i += 1;FI"
;FI"        ;FI"end;FI"
;FI"      ;FI"end;FI"
;FI"	    ;FI"end;FI"
;Fo;;[I")And here is an even shorter example.;Fo; o;;[!I"	    ;FI"require 'net/pop';FI"
;FI"
;FI"	    ;FI"
i = 0;FI"
;FI"	    ;FI"1Net::POP3.delete_all('pop.example.com', 110,;FI"
;FI"                         ;FI"*'YourAccount', 'YourPassword') do |m|;FI"
;FI"      ;FI"(File.open("inbox/#{i}", 'w') do |f|;FI"
;FI"        ;FI"f.write m.pop;FI"
;FI"      ;FI"end;FI"
;FI"      ;FI"i += 1;FI"
;FI"	    ;FI"end;FI"
;FS;	;
i;I"Memory Space Issues;Fo; o;;[I"?All the examples above get each message as one big string.;FI"This example avoids this.;Fo; o;;['I"	    ;FI"require 'net/pop';FI"
;FI"
;FI"	    ;FI"
i = 1;FI"
;FI"	    ;FI"1Net::POP3.delete_all('pop.example.com', 110,;FI"
;FI"                         ;FI"*'YourAccount', 'YourPassword') do |m|;FI"
;FI"      ;FI"(File.open("inbox/#{i}", 'w') do |f|;FI"
;FI"        ;FI":m.pop do |chunk|    # get a message little by little.;FI"
;FI"          ;FI"f.write chunk;FI"
;FI"        ;FI"end;FI"
;FI"        ;FI"i += 1;FI"
;FI"      ;FI"end;FI"
;FI"	    ;FI"end;FI"
;FS;	;
i;I"Using APOP;Fo; o;;[I"6The net/pop library supports APOP authentication.;FI"ITo use APOP, use the Net::APOP class instead of the Net::POP3 class.;FI"CYou can use the utility method, Net::POP3.APOP(). For example:;Fo; o;;[I"	    ;FI"require 'net/pop';FI"
;FI"
;FI"	    ;FI"1# Use APOP authentication if $isapop == true;FI"
;FI"	    ;FI"@pop = Net::POP3.APOP($is_apop).new('apop.example.com', 110);FI"
;FI"	    ;FI"5pop.start(YourAccount', 'YourPassword') do |pop|;FI"
;FI"      ;FI"$# Rest of the code is the same.;FI"
;FI"	    ;FI"end;FI"
;FS;	;
i;I"6Fetch Only Selected Mail Using 'UIDL' POP Command;Fo; o;;[I"4If your POP server provides UIDL functionality,;FI":you can grab only selected mails from the POP server.;FI"	e.g.;Fo; o;;[!I"	    ;FI"def need_pop?( id );FI"
;FI"      ;FI",# determine if we need pop this mail...;FI"
;FI"	    ;FI"end;FI"
;FI"
;FI"	    ;FI",Net::POP3.start('pop.example.com', 110,;FI"
;FI"                    ;FI".'Your account', 'Your password') do |pop|;FI"
;FI"      ;FI"@pop.mails.select { |m| need_pop?(m.unique_id) }.each do |m|;FI"
;FI"        ;FI"do_something(m.pop);FI"
;FI"      ;FI"end;FI"
;FI"	    ;FI"end;FI"
;Fo;;[I"MThe POPMail#unique_id() method returns the unique-id of the message as a;FI"=String. Normally the unique-id is a hash of the message.;FS;	;
i;I"Net::POP3;Fo; S;	;
i;I"What is This Library?;Fo; o;;[I"7This library provides functionality for retrieving;FI"Demail via POP3, the Post Office Protocol version 3. For details;FI"Bof POP3, see [RFC1939] (http://www.ietf.org/rfc/rfc1939.txt).;Fo; S;	;
i;I"Examples;Fo; S;	;
i;I"Retrieving Messages;Fo; o;;[I"EThis example retrieves messages from the server and deletes them;FI"on the server.;Fo; o;;[	I"CMessages are written to files named 'inbox/1', 'inbox/2', ....;FI"AReplace 'pop.example.com' with your POP3 server address, and;FI"B'YourAccount' and 'YourPassword' with the appropriate account;FI"details.;Fo; o;;[9I"	    ;FI"require 'net/pop';FI"
;FI"
;FI"	    ;FI"+pop = Net::POP3.new('pop.example.com');FI"
;FI"	    ;FI"?pop.start('YourAccount', 'YourPassword')             # (1);FI"
;FI"	    ;FI"if pop.mails.empty?;FI"
;FI"      ;FI"puts 'No mail.';FI"
;FI"	    ;FI"	else;FI"
;FI"      ;FI"
i = 0;FI"
;FI"      ;FI"=pop.each_mail do |m|   # or "pop.mails.each ..."   # (2);FI"
;FI"        ;FI"(File.open("inbox/#{i}", 'w') do |f|;FI"
;FI"          ;FI"f.write m.pop;FI"
;FI"        ;FI"end;FI"
;FI"        ;FI"m.delete;FI"
;FI"        ;FI"i += 1;FI"
;FI"      ;FI"end;FI"
;FI"      ;FI"+puts "#{pop.mails.size} mails popped.";FI"
;FI"	    ;FI"end;FI"
;FI"	    ;FI"?pop.finish                                           # (3);FI"
;Fo;;;;[o;;0;[o;;[I"0Call Net::POP3#start and start POP session.;Fo;;0;[o;;[I"?Access messages by using POP3#each_mail and/or POP3#mails.;Fo;;0;[o;;[I"NClose POP session by calling POP3#finish or use the block form of #start.;Fo; S;	;
i;I"Shortened Code;Fo; o;;[I"IThe example above is very verbose. You can shorten the code by using;FI"Gsome utility methods. First, the block form of Net::POP3.start can;FI"=be used instead of POP3.new, POP3#start and POP3#finish.;Fo; o;;[9I"	    ;FI"require 'net/pop';FI"
;FI"
;FI"	    ;FI",Net::POP3.start('pop.example.com', 110,;FI"
;FI"                    ;FI",'YourAccount', 'YourPassword') do |pop|;FI"
;FI"      ;FI"if pop.mails.empty?;FI"
;FI"        ;FI"puts 'No mail.';FI"
;FI"      ;FI"	else;FI"
;FI"        ;FI"
i = 0;FI"
;FI"        ;FI"5pop.each_mail do |m|   # or "pop.mails.each ...";FI"
;FI"          ;FI"(File.open("inbox/#{i}", 'w') do |f|;FI"
;FI"            ;FI"f.write m.pop;FI"
;FI"          ;FI"end;FI"
;FI"          ;FI"m.delete;FI"
;FI"          ;FI"i += 1;FI"
;FI"        ;FI"end;FI"
;FI"        ;FI"+puts "#{pop.mails.size} mails popped.";FI"
;FI"      ;FI"end;FI"
;FI"	    ;FI"end;FI"
;Fo;;[I"BPOP3#delete_all is an alternative for #each_mail and #delete.;Fo; o;;[3I"	    ;FI"require 'net/pop';FI"
;FI"
;FI"	    ;FI",Net::POP3.start('pop.example.com', 110,;FI"
;FI"                    ;FI",'YourAccount', 'YourPassword') do |pop|;FI"
;FI"      ;FI"if pop.mails.empty?;FI"
;FI"        ;FI"puts 'No mail.';FI"
;FI"      ;FI"	else;FI"
;FI"        ;FI"
i = 1;FI"
;FI"        ;FI"pop.delete_all do |m|;FI"
;FI"          ;FI"(File.open("inbox/#{i}", 'w') do |f|;FI"
;FI"            ;FI"f.write m.pop;FI"
;FI"          ;FI"end;FI"
;FI"          ;FI"i += 1;FI"
;FI"        ;FI"end;FI"
;FI"      ;FI"end;FI"
;FI"	    ;FI"end;FI"
;Fo;;[I")And here is an even shorter example.;Fo; o;;[!I"	    ;FI"require 'net/pop';FI"
;FI"
;FI"	    ;FI"
i = 0;FI"
;FI"	    ;FI"1Net::POP3.delete_all('pop.example.com', 110,;FI"
;FI"                         ;FI"*'YourAccount', 'YourPassword') do |m|;FI"
;FI"      ;FI"(File.open("inbox/#{i}", 'w') do |f|;FI"
;FI"        ;FI"f.write m.pop;FI"
;FI"      ;FI"end;FI"
;FI"      ;FI"i += 1;FI"
;FI"	    ;FI"end;FI"
;FS;	;
i;I"Memory Space Issues;Fo; o;;[I"?All the examples above get each message as one big string.;FI"This example avoids this.;Fo; o;;['I"	    ;FI"require 'net/pop';FI"
;FI"
;FI"	    ;FI"
i = 1;FI"
;FI"	    ;FI"1Net::POP3.delete_all('pop.example.com', 110,;FI"
;FI"                         ;FI"*'YourAccount', 'YourPassword') do |m|;FI"
;FI"      ;FI"(File.open("inbox/#{i}", 'w') do |f|;FI"
;FI"        ;FI":m.pop do |chunk|    # get a message little by little.;FI"
;FI"          ;FI"f.write chunk;FI"
;FI"        ;FI"end;FI"
;FI"        ;FI"i += 1;FI"
;FI"      ;FI"end;FI"
;FI"	    ;FI"end;FI"
;FS;	;
i;I"Using APOP;Fo; o;;[I"6The net/pop library supports APOP authentication.;FI"ITo use APOP, use the Net::APOP class instead of the Net::POP3 class.;FI"CYou can use the utility method, Net::POP3.APOP(). For example:;Fo; o;;[I"	    ;FI"require 'net/pop';FI"
;FI"
;FI"	    ;FI"1# Use APOP authentication if $isapop == true;FI"
;FI"	    ;FI"@pop = Net::POP3.APOP($is_apop).new('apop.example.com', 110);FI"
;FI"	    ;FI"5pop.start(YourAccount', 'YourPassword') do |pop|;FI"
;FI"      ;FI"$# Rest of the code is the same.;FI"
;FI"	    ;FI"end;FI"
;FS;	;
i;I"6Fetch Only Selected Mail Using 'UIDL' POP Command;Fo; o;;[I"4If your POP server provides UIDL functionality,;FI":you can grab only selected mails from the POP server.;FI"	e.g.;Fo; o;;[!I"	    ;FI"def need_pop?( id );FI"
;FI"      ;FI",# determine if we need pop this mail...;FI"
;FI"	    ;FI"end;FI"
;FI"
;FI"	    ;FI",Net::POP3.start('pop.example.com', 110,;FI"
;FI"                    ;FI".'Your account', 'Your password') do |pop|;FI"
;FI"      ;FI"@pop.mails.select { |m| need_pop?(m.unique_id) }.each do |m|;FI"
;FI"        ;FI"do_something(m.pop);FI"
;FI"      ;FI"end;FI"
;FI"	    ;FI"end;FI"
;Fo;;[I"MThe POPMail#unique_id() method returns the unique-id of the message as a;FI"=String. Normally the unique-id is a hash of the message.;FS;	;
i;I"Net::POP3;Fo; S;	;
i;I"What is This Library?;Fo; o;;[I"7This library provides functionality for retrieving;FI"Demail via POP3, the Post Office Protocol version 3. For details;FI"Bof POP3, see [RFC1939] (http://www.ietf.org/rfc/rfc1939.txt).;Fo; S;	;
i;I"Examples;Fo; S;	;
i;I"Retrieving Messages;Fo; o;;[I"EThis example retrieves messages from the server and deletes them;FI"on the server.;Fo; o;;[	I"CMessages are written to files named 'inbox/1', 'inbox/2', ....;FI"AReplace 'pop.example.com' with your POP3 server address, and;FI"B'YourAccount' and 'YourPassword' with the appropriate account;FI"details.;Fo; o;;[9I"	    ;FI"require 'net/pop';FI"
;FI"
;FI"	    ;FI"+pop = Net::POP3.new('pop.example.com');FI"
;FI"	    ;FI"?pop.start('YourAccount', 'YourPassword')             # (1);FI"
;FI"	    ;FI"if pop.mails.empty?;FI"
;FI"      ;FI"puts 'No mail.';FI"
;FI"	    ;FI"	else;FI"
;FI"      ;FI"
i = 0;FI"
;FI"      ;FI"=pop.each_mail do |m|   # or "pop.mails.each ..."   # (2);FI"
;FI"        ;FI"(File.open("inbox/#{i}", 'w') do |f|;FI"
;FI"          ;FI"f.write m.pop;FI"
;FI"        ;FI"end;FI"
;FI"        ;FI"m.delete;FI"
;FI"        ;FI"i += 1;FI"
;FI"      ;FI"end;FI"
;FI"      ;FI"+puts "#{pop.mails.size} mails popped.";FI"
;FI"	    ;FI"end;FI"
;FI"	    ;FI"?pop.finish                                           # (3);FI"
;Fo;;;;[o;;0;[o;;[I"0Call Net::POP3#start and start POP session.;Fo;;0;[o;;[I"?Access messages by using POP3#each_mail and/or POP3#mails.;Fo;;0;[o;;[I"NClose POP session by calling POP3#finish or use the block form of #start.;Fo; S;	;
i;I"Shortened Code;Fo; o;;[I"IThe example above is very verbose. You can shorten the code by using;FI"Gsome utility methods. First, the block form of Net::POP3.start can;FI"=be used instead of POP3.new, POP3#start and POP3#finish.;Fo; o;;[9I"	    ;FI"require 'net/pop';FI"
;FI"
;FI"	    ;FI",Net::POP3.start('pop.example.com', 110,;FI"
;FI"                    ;FI",'YourAccount', 'YourPassword') do |pop|;FI"
;FI"      ;FI"if pop.mails.empty?;FI"
;FI"        ;FI"puts 'No mail.';FI"
;FI"      ;FI"	else;FI"
;FI"        ;FI"
i = 0;FI"
;FI"        ;FI"5pop.each_mail do |m|   # or "pop.mails.each ...";FI"
;FI"          ;FI"(File.open("inbox/#{i}", 'w') do |f|;FI"
;FI"            ;FI"f.write m.pop;FI"
;FI"          ;FI"end;FI"
;FI"          ;FI"m.delete;FI"
;FI"          ;FI"i += 1;FI"
;FI"        ;FI"end;FI"
;FI"        ;FI"+puts "#{pop.mails.size} mails popped.";FI"
;FI"      ;FI"end;FI"
;FI"	    ;FI"end;FI"
;Fo;;[I"BPOP3#delete_all is an alternative for #each_mail and #delete.;Fo; o;;[3I"	    ;FI"require 'net/pop';FI"
;FI"
;FI"	    ;FI",Net::POP3.start('pop.example.com', 110,;FI"
;FI"                    ;FI",'YourAccount', 'YourPassword') do |pop|;FI"
;FI"      ;FI"if pop.mails.empty?;FI"
;FI"        ;FI"puts 'No mail.';FI"
;FI"      ;FI"	else;FI"
;FI"        ;FI"
i = 1;FI"
;FI"        ;FI"pop.delete_all do |m|;FI"
;FI"          ;FI"(File.open("inbox/#{i}", 'w') do |f|;FI"
;FI"            ;FI"f.write m.pop;FI"
;FI"          ;FI"end;FI"
;FI"          ;FI"i += 1;FI"
;FI"        ;FI"end;FI"
;FI"      ;FI"end;FI"
;FI"	    ;FI"end;FI"
;Fo;;[I")And here is an even shorter example.;Fo; o;;[!I"	    ;FI"require 'net/pop';FI"
;FI"
;FI"	    ;FI"
i = 0;FI"
;FI"	    ;FI"1Net::POP3.delete_all('pop.example.com', 110,;FI"
;FI"                         ;FI"*'YourAccount', 'YourPassword') do |m|;FI"
;FI"      ;FI"(File.open("inbox/#{i}", 'w') do |f|;FI"
;FI"        ;FI"f.write m.pop;FI"
;FI"      ;FI"end;FI"
;FI"      ;FI"i += 1;FI"
;FI"	    ;FI"end;FI"
;FS;	;
i;I"Memory Space Issues;Fo; o;;[I"?All the examples above get each message as one big string.;FI"This example avoids this.;Fo; o;;['I"	    ;FI"require 'net/pop';FI"
;FI"
;FI"	    ;FI"
i = 1;FI"
;FI"	    ;FI"1Net::POP3.delete_all('pop.example.com', 110,;FI"
;FI"                         ;FI"*'YourAccount', 'YourPassword') do |m|;FI"
;FI"      ;FI"(File.open("inbox/#{i}", 'w') do |f|;FI"
;FI"        ;FI":m.pop do |chunk|    # get a message little by little.;FI"
;FI"          ;FI"f.write chunk;FI"
;FI"        ;FI"end;FI"
;FI"        ;FI"i += 1;FI"
;FI"      ;FI"end;FI"
;FI"	    ;FI"end;FI"
;FS;	;
i;I"Using APOP;Fo; o;;[I"6The net/pop library supports APOP authentication.;FI"ITo use APOP, use the Net::APOP class instead of the Net::POP3 class.;FI"CYou can use the utility method, Net::POP3.APOP(). For example:;Fo; o;;[I"	    ;FI"require 'net/pop';FI"
;FI"
;FI"	    ;FI"1# Use APOP authentication if $isapop == true;FI"
;FI"	    ;FI"@pop = Net::POP3.APOP($is_apop).new('apop.example.com', 110);FI"
;FI"	    ;FI"5pop.start(YourAccount', 'YourPassword') do |pop|;FI"
;FI"      ;FI"$# Rest of the code is the same.;FI"
;FI"	    ;FI"end;FI"
;FS;	;
i;I"6Fetch Only Selected Mail Using 'UIDL' POP Command;Fo; o;;[I"4If your POP server provides UIDL functionality,;FI":you can grab only selected mails from the POP server.;FI"	e.g.;Fo; o;;[!I"	    ;FI"def need_pop?( id );FI"
;FI"      ;FI",# determine if we need pop this mail...;FI"
;FI"	    ;FI"end;FI"
;FI"
;FI"	    ;FI",Net::POP3.start('pop.example.com', 110,;FI"
;FI"                    ;FI".'Your account', 'Your password') do |pop|;FI"
;FI"      ;FI"@pop.mails.select { |m| need_pop?(m.unique_id) }.each do |m|;FI"
;FI"        ;FI"do_something(m.pop);FI"
;FI"      ;FI"end;FI"
;FI"	    ;FI"end;FI"
;Fo;;[I"MThe POPMail#unique_id() method returns the unique-id of the message as a;FI"=String. Normally the unique-id is a hash of the message.;FS;	;
i;I"Net::POP3;Fo; S;	;
i;I"What is This Library?;Fo; o;;[I"7This library provides functionality for retrieving;FI"Demail via POP3, the Post Office Protocol version 3. For details;FI"Bof POP3, see [RFC1939] (http://www.ietf.org/rfc/rfc1939.txt).;Fo; S;	;
i;I"Examples;Fo; S;	;
i;I"Retrieving Messages;Fo; o;;[I"EThis example retrieves messages from the server and deletes them;FI"on the server.;Fo; o;;[	I"CMessages are written to files named 'inbox/1', 'inbox/2', ....;FI"AReplace 'pop.example.com' with your POP3 server address, and;FI"B'YourAccount' and 'YourPassword' with the appropriate account;FI"details.;Fo; o;;[9I"	    ;FI"require 'net/pop';FI"
;FI"
;FI"	    ;FI"+pop = Net::POP3.new('pop.example.com');FI"
;FI"	    ;FI"?pop.start('YourAccount', 'YourPassword')             # (1);FI"
;FI"	    ;FI"if pop.mails.empty?;FI"
;FI"      ;FI"puts 'No mail.';FI"
;FI"	    ;FI"	else;FI"
;FI"      ;FI"
i = 0;FI"
;FI"      ;FI"=pop.each_mail do |m|   # or "pop.mails.each ..."   # (2);FI"
;FI"        ;FI"(File.open("inbox/#{i}", 'w') do |f|;FI"
;FI"          ;FI"f.write m.pop;FI"
;FI"        ;FI"end;FI"
;FI"        ;FI"m.delete;FI"
;FI"        ;FI"i += 1;FI"
;FI"      ;FI"end;FI"
;FI"      ;FI"+puts "#{pop.mails.size} mails popped.";FI"
;FI"	    ;FI"end;FI"
;FI"	    ;FI"?pop.finish                                           # (3);FI"
;Fo;;;;[o;;0;[o;;[I"0Call Net::POP3#start and start POP session.;Fo;;0;[o;;[I"?Access messages by using POP3#each_mail and/or POP3#mails.;Fo;;0;[o;;[I"NClose POP session by calling POP3#finish or use the block form of #start.;Fo; S;	;
i;I"Shortened Code;Fo; o;;[I"IThe example above is very verbose. You can shorten the code by using;FI"Gsome utility methods. First, the block form of Net::POP3.start can;FI"=be used instead of POP3.new, POP3#start and POP3#finish.;Fo; o;;[9I"	    ;FI"require 'net/pop';FI"
;FI"
;FI"	    ;FI",Net::POP3.start('pop.example.com', 110,;FI"
;FI"                    ;FI",'YourAccount', 'YourPassword') do |pop|;FI"
;FI"      ;FI"if pop.mails.empty?;FI"
;FI"        ;FI"puts 'No mail.';FI"
;FI"      ;FI"	else;FI"
;FI"        ;FI"
i = 0;FI"
;FI"        ;FI"5pop.each_mail do |m|   # or "pop.mails.each ...";FI"
;FI"          ;FI"(File.open("inbox/#{i}", 'w') do |f|;FI"
;FI"            ;FI"f.write m.pop;FI"
;FI"          ;FI"end;FI"
;FI"          ;FI"m.delete;FI"
;FI"          ;FI"i += 1;FI"
;FI"        ;FI"end;FI"
;FI"        ;FI"+puts "#{pop.mails.size} mails popped.";FI"
;FI"      ;FI"end;FI"
;FI"	    ;FI"end;FI"
;Fo;;[I"BPOP3#delete_all is an alternative for #each_mail and #delete.;Fo; o;;[3I"	    ;FI"require 'net/pop';FI"
;FI"
;FI"	    ;FI",Net::POP3.start('pop.example.com', 110,;FI"
;FI"                    ;FI",'YourAccount', 'YourPassword') do |pop|;FI"
;FI"      ;FI"if pop.mails.empty?;FI"
;FI"        ;FI"puts 'No mail.';FI"
;FI"      ;FI"	else;FI"
;FI"        ;FI"
i = 1;FI"
;FI"        ;FI"pop.delete_all do |m|;FI"
;FI"          ;FI"(File.open("inbox/#{i}", 'w') do |f|;FI"
;FI"            ;FI"f.write m.pop;FI"
;FI"          ;FI"end;FI"
;FI"          ;FI"i += 1;FI"
;FI"        ;FI"end;FI"
;FI"      ;FI"end;FI"
;FI"	    ;FI"end;FI"
;Fo;;[I")And here is an even shorter example.;Fo; o;;[!I"	    ;FI"require 'net/pop';FI"
;FI"
;FI"	    ;FI"
i = 0;FI"
;FI"	    ;FI"1Net::POP3.delete_all('pop.example.com', 110,;FI"
;FI"                         ;FI"*'YourAccount', 'YourPassword') do |m|;FI"
;FI"      ;FI"(File.open("inbox/#{i}", 'w') do |f|;FI"
;FI"        ;FI"f.write m.pop;FI"
;FI"      ;FI"end;FI"
;FI"      ;FI"i += 1;FI"
;FI"	    ;FI"end;FI"
;FS;	;
i;I"Memory Space Issues;Fo; o;;[I"?All the examples above get each message as one big string.;FI"This example avoids this.;Fo; o;;['I"	    ;FI"require 'net/pop';FI"
;FI"
;FI"	    ;FI"
i = 1;FI"
;FI"	    ;FI"1Net::POP3.delete_all('pop.example.com', 110,;FI"
;FI"                         ;FI"*'YourAccount', 'YourPassword') do |m|;FI"
;FI"      ;FI"(File.open("inbox/#{i}", 'w') do |f|;FI"
;FI"        ;FI":m.pop do |chunk|    # get a message little by little.;FI"
;FI"          ;FI"f.write chunk;FI"
;FI"        ;FI"end;FI"
;FI"        ;FI"i += 1;FI"
;FI"      ;FI"end;FI"
;FI"	    ;FI"end;FI"
;FS;	;
i;I"Using APOP;Fo; o;;[I"6The net/pop library supports APOP authentication.;FI"ITo use APOP, use the Net::APOP class instead of the Net::POP3 class.;FI"CYou can use the utility method, Net::POP3.APOP(). For example:;Fo; o;;[I"	    ;FI"require 'net/pop';FI"
;FI"
;FI"	    ;FI"1# Use APOP authentication if $isapop == true;FI"
;FI"	    ;FI"@pop = Net::POP3.APOP($is_apop).new('apop.example.com', 110);FI"
;FI"	    ;FI"5pop.start(YourAccount', 'YourPassword') do |pop|;FI"
;FI"      ;FI"$# Rest of the code is the same.;FI"
;FI"	    ;FI"end;FI"
;FS;	;
i;I"6Fetch Only Selected Mail Using 'UIDL' POP Command;Fo; o;;[I"4If your POP server provides UIDL functionality,;FI":you can grab only selected mails from the POP server.;FI"	e.g.;Fo; o;;[!I"	    ;FI"def need_pop?( id );FI"
;FI"      ;FI",# determine if we need pop this mail...;FI"
;FI"	    ;FI"end;FI"
;FI"
;FI"	    ;FI",Net::POP3.start('pop.example.com', 110,;FI"
;FI"                    ;FI".'Your account', 'Your password') do |pop|;FI"
;FI"      ;FI"@pop.mails.select { |m| need_pop?(m.unique_id) }.each do |m|;FI"
;FI"        ;FI"do_something(m.pop);FI"
;FI"      ;FI"end;FI"
;FI"	    ;FI"end;FI"
;Fo;;[I"MThe POPMail#unique_id() method returns the unique-id of the message as a;FI"=String. Normally the unique-id is a hash of the message.;FS;	;
i;I"Net::POP3;Fo; S;	;
i;I"What is This Library?;Fo; o;;[I"7This library provides functionality for retrieving;FI"Demail via POP3, the Post Office Protocol version 3. For details;FI"Bof POP3, see [RFC1939] (http://www.ietf.org/rfc/rfc1939.txt).;Fo; S;	;
i;I"Examples;Fo; S;	;
i;I"Retrieving Messages;Fo; o;;[I"EThis example retrieves messages from the server and deletes them;FI"on the server.;Fo; o;;[	I"CMessages are written to files named 'inbox/1', 'inbox/2', ....;FI"AReplace 'pop.example.com' with your POP3 server address, and;FI"B'YourAccount' and 'YourPassword' with the appropriate account;FI"details.;Fo; o;;[9I"	    ;FI"require 'net/pop';FI"
;FI"
;FI"	    ;FI"+pop = Net::POP3.new('pop.example.com');FI"
;FI"	    ;FI"?pop.start('YourAccount', 'YourPassword')             # (1);FI"
;FI"	    ;FI"if pop.mails.empty?;FI"
;FI"      ;FI"puts 'No mail.';FI"
;FI"	    ;FI"	else;FI"
;FI"      ;FI"
i = 0;FI"
;FI"      ;FI"=pop.each_mail do |m|   # or "pop.mails.each ..."   # (2);FI"
;FI"        ;FI"(File.open("inbox/#{i}", 'w') do |f|;FI"
;FI"          ;FI"f.write m.pop;FI"
;FI"        ;FI"end;FI"
;FI"        ;FI"m.delete;FI"
;FI"        ;FI"i += 1;FI"
;FI"      ;FI"end;FI"
;FI"      ;FI"+puts "#{pop.mails.size} mails popped.";FI"
;FI"	    ;FI"end;FI"
;FI"	    ;FI"?pop.finish                                           # (3);FI"
;Fo;;;;[o;;0;[o;;[I"0Call Net::POP3#start and start POP session.;Fo;;0;[o;;[I"?Access messages by using POP3#each_mail and/or POP3#mails.;Fo;;0;[o;;[I"NClose POP session by calling POP3#finish or use the block form of #start.;Fo; S;	;
i;I"Shortened Code;Fo; o;;[I"IThe example above is very verbose. You can shorten the code by using;FI"Gsome utility methods. First, the block form of Net::POP3.start can;FI"=be used instead of POP3.new, POP3#start and POP3#finish.;Fo; o;;[9I"	    ;FI"require 'net/pop';FI"
;FI"
;FI"	    ;FI",Net::POP3.start('pop.example.com', 110,;FI"
;FI"                    ;FI",'YourAccount', 'YourPassword') do |pop|;FI"
;FI"      ;FI"if pop.mails.empty?;FI"
;FI"        ;FI"puts 'No mail.';FI"
;FI"      ;FI"	else;FI"
;FI"        ;FI"
i = 0;FI"
;FI"        ;FI"5pop.each_mail do |m|   # or "pop.mails.each ...";FI"
;FI"          ;FI"(File.open("inbox/#{i}", 'w') do |f|;FI"
;FI"            ;FI"f.write m.pop;FI"
;FI"          ;FI"end;FI"
;FI"          ;FI"m.delete;FI"
;FI"          ;FI"i += 1;FI"
;FI"        ;FI"end;FI"
;FI"        ;FI"+puts "#{pop.mails.size} mails popped.";FI"
;FI"      ;FI"end;FI"
;FI"	    ;FI"end;FI"
;Fo;;[I"BPOP3#delete_all is an alternative for #each_mail and #delete.;Fo; o;;[3I"	    ;FI"require 'net/pop';FI"
;FI"
;FI"	    ;FI",Net::POP3.start('pop.example.com', 110,;FI"
;FI"                    ;FI",'YourAccount', 'YourPassword') do |pop|;FI"
;FI"      ;FI"if pop.mails.empty?;FI"
;FI"        ;FI"puts 'No mail.';FI"
;FI"      ;FI"	else;FI"
;FI"        ;FI"
i = 1;FI"
;FI"        ;FI"pop.delete_all do |m|;FI"
;FI"          ;FI"(File.open("inbox/#{i}", 'w') do |f|;FI"
;FI"            ;FI"f.write m.pop;FI"
;FI"          ;FI"end;FI"
;FI"          ;FI"i += 1;FI"
;FI"        ;FI"end;FI"
;FI"      ;FI"end;FI"
;FI"	    ;FI"end;FI"
;Fo;;[I")And here is an even shorter example.;Fo; o;;[!I"	    ;FI"require 'net/pop';FI"
;FI"
;FI"	    ;FI"
i = 0;FI"
;FI"	    ;FI"1Net::POP3.delete_all('pop.example.com', 110,;FI"
;FI"                         ;FI"*'YourAccount', 'YourPassword') do |m|;FI"
;FI"      ;FI"(File.open("inbox/#{i}", 'w') do |f|;FI"
;FI"        ;FI"f.write m.pop;FI"
;FI"      ;FI"end;FI"
;FI"      ;FI"i += 1;FI"
;FI"	    ;FI"end;FI"
;FS;	;
i;I"Memory Space Issues;Fo; o;;[I"?All the examples above get each message as one big string.;FI"This example avoids this.;Fo; o;;['I"	    ;FI"require 'net/pop';FI"
;FI"
;FI"	    ;FI"
i = 1;FI"
;FI"	    ;FI"1Net::POP3.delete_all('pop.example.com', 110,;FI"
;FI"                         ;FI"*'YourAccount', 'YourPassword') do |m|;FI"
;FI"      ;FI"(File.open("inbox/#{i}", 'w') do |f|;FI"
;FI"        ;FI":m.pop do |chunk|    # get a message little by little.;FI"
;FI"          ;FI"f.write chunk;FI"
;FI"        ;FI"end;FI"
;FI"        ;FI"i += 1;FI"
;FI"      ;FI"end;FI"
;FI"	    ;FI"end;FI"
;FS;	;
i;I"Using APOP;Fo; o;;[I"6The net/pop library supports APOP authentication.;FI"ITo use APOP, use the Net::APOP class instead of the Net::POP3 class.;FI"CYou can use the utility method, Net::POP3.APOP(). For example:;Fo; o;;[I"	    ;FI"require 'net/pop';FI"
;FI"
;FI"	    ;FI"1# Use APOP authentication if $isapop == true;FI"
;FI"	    ;FI"@pop = Net::POP3.APOP($is_apop).new('apop.example.com', 110);FI"
;FI"	    ;FI"5pop.start(YourAccount', 'YourPassword') do |pop|;FI"
;FI"      ;FI"$# Rest of the code is the same.;FI"
;FI"	    ;FI"end;FI"
;FS;	;
i;I"6Fetch Only Selected Mail Using 'UIDL' POP Command;Fo; o;;[I"4If your POP server provides UIDL functionality,;FI":you can grab only selected mails from the POP server.;FI"	e.g.;Fo; o;;[!I"	    ;FI"def need_pop?( id );FI"
;FI"      ;FI",# determine if we need pop this mail...;FI"
;FI"	    ;FI"end;FI"
;FI"
;FI"	    ;FI",Net::POP3.start('pop.example.com', 110,;FI"
;FI"                    ;FI".'Your account', 'Your password') do |pop|;FI"
;FI"      ;FI"@pop.mails.select { |m| need_pop?(m.unique_id) }.each do |m|;FI"
;FI"        ;FI"do_something(m.pop);FI"
;FI"      ;FI"end;FI"
;FI"	    ;FI"end;FI"
;Fo;;[I"MThe POPMail#unique_id() method returns the unique-id of the message as a;FI"=String. Normally the unique-id is a hash of the message.;FS;	;
i;I"Net::POP3;Fo; S;	;
i;I"What is This Library?;Fo; o;;[I"7This library provides functionality for retrieving;FI"Demail via POP3, the Post Office Protocol version 3. For details;FI"Bof POP3, see [RFC1939] (http://www.ietf.org/rfc/rfc1939.txt).;Fo; S;	;
i;I"Examples;Fo; S;	;
i;I"Retrieving Messages;Fo; o;;[I"EThis example retrieves messages from the server and deletes them;FI"on the server.;Fo; o;;[	I"CMessages are written to files named 'inbox/1', 'inbox/2', ....;FI"AReplace 'pop.example.com' with your POP3 server address, and;FI"B'YourAccount' and 'YourPassword' with the appropriate account;FI"details.;Fo; o;;[9I"	    ;FI"require 'net/pop';FI"
;FI"
;FI"	    ;FI"+pop = Net::POP3.new('pop.example.com');FI"
;FI"	    ;FI"?pop.start('YourAccount', 'YourPassword')             # (1);FI"
;FI"	    ;FI"if pop.mails.empty?;FI"
;FI"      ;FI"puts 'No mail.';FI"
;FI"	    ;FI"	else;FI"
;FI"      ;FI"
i = 0;FI"
;FI"      ;FI"=pop.each_mail do |m|   # or "pop.mails.each ..."   # (2);FI"
;FI"        ;FI"(File.open("inbox/#{i}", 'w') do |f|;FI"
;FI"          ;FI"f.write m.pop;FI"
;FI"        ;FI"end;FI"
;FI"        ;FI"m.delete;FI"
;FI"        ;FI"i += 1;FI"
;FI"      ;FI"end;FI"
;FI"      ;FI"+puts "#{pop.mails.size} mails popped.";FI"
;FI"	    ;FI"end;FI"
;FI"	    ;FI"?pop.finish                                           # (3);FI"
;Fo;;;;[o;;0;[o;;[I"0Call Net::POP3#start and start POP session.;Fo;;0;[o;;[I"?Access messages by using POP3#each_mail and/or POP3#mails.;Fo;;0;[o;;[I"NClose POP session by calling POP3#finish or use the block form of #start.;Fo; S;	;
i;I"Shortened Code;Fo; o;;[I"IThe example above is very verbose. You can shorten the code by using;FI"Gsome utility methods. First, the block form of Net::POP3.start can;FI"=be used instead of POP3.new, POP3#start and POP3#finish.;Fo; o;;[9I"	    ;FI"require 'net/pop';FI"
;FI"
;FI"	    ;FI",Net::POP3.start('pop.example.com', 110,;FI"
;FI"                    ;FI",'YourAccount', 'YourPassword') do |pop|;FI"
;FI"      ;FI"if pop.mails.empty?;FI"
;FI"        ;FI"puts 'No mail.';FI"
;FI"      ;FI"	else;FI"
;FI"        ;FI"
i = 0;FI"
;FI"        ;FI"5pop.each_mail do |m|   # or "pop.mails.each ...";FI"
;FI"          ;FI"(File.open("inbox/#{i}", 'w') do |f|;FI"
;FI"            ;FI"f.write m.pop;FI"
;FI"          ;FI"end;FI"
;FI"          ;FI"m.delete;FI"
;FI"          ;FI"i += 1;FI"
;FI"        ;FI"end;FI"
;FI"        ;FI"+puts "#{pop.mails.size} mails popped.";FI"
;FI"      ;FI"end;FI"
;FI"	    ;FI"end;FI"
;Fo;;[I"BPOP3#delete_all is an alternative for #each_mail and #delete.;Fo; o;;[3I"	    ;FI"require 'net/pop';FI"
;FI"
;FI"	    ;FI",Net::POP3.start('pop.example.com', 110,;FI"
;FI"                    ;FI",'YourAccount', 'YourPassword') do |pop|;FI"
;FI"      ;FI"if pop.mails.empty?;FI"
;FI"        ;FI"puts 'No mail.';FI"
;FI"      ;FI"	else;FI"
;FI"        ;FI"
i = 1;FI"
;FI"        ;FI"pop.delete_all do |m|;FI"
;FI"          ;FI"(File.open("inbox/#{i}", 'w') do |f|;FI"
;FI"            ;FI"f.write m.pop;FI"
;FI"          ;FI"end;FI"
;FI"          ;FI"i += 1;FI"
;FI"        ;FI"end;FI"
;FI"      ;FI"end;FI"
;FI"	    ;FI"end;FI"
;Fo;;[I")And here is an even shorter example.;Fo; o;;[!I"	    ;FI"require 'net/pop';FI"
;FI"
;FI"	    ;FI"
i = 0;FI"
;FI"	    ;FI"1Net::POP3.delete_all('pop.example.com', 110,;FI"
;FI"                         ;FI"*'YourAccount', 'YourPassword') do |m|;FI"
;FI"      ;FI"(File.open("inbox/#{i}", 'w') do |f|;FI"
;FI"        ;FI"f.write m.pop;FI"
;FI"      ;FI"end;FI"
;FI"      ;FI"i += 1;FI"
;FI"	    ;FI"end;FI"
;FS;	;
i;I"Memory Space Issues;Fo; o;;[I"?All the examples above get each message as one big string.;FI"This example avoids this.;Fo; o;;['I"	    ;FI"require 'net/pop';FI"
;FI"
;FI"	    ;FI"
i = 1;FI"
;FI"	    ;FI"1Net::POP3.delete_all('pop.example.com', 110,;FI"
;FI"                         ;FI"*'YourAccount', 'YourPassword') do |m|;FI"
;FI"      ;FI"(File.open("inbox/#{i}", 'w') do |f|;FI"
;FI"        ;FI":m.pop do |chunk|    # get a message little by little.;FI"
;FI"          ;FI"f.write chunk;FI"
;FI"        ;FI"end;FI"
;FI"        ;FI"i += 1;FI"
;FI"      ;FI"end;FI"
;FI"	    ;FI"end;FI"
;FS;	;
i;I"Using APOP;Fo; o;;[I"6The net/pop library supports APOP authentication.;FI"ITo use APOP, use the Net::APOP class instead of the Net::POP3 class.;FI"CYou can use the utility method, Net::POP3.APOP(). For example:;Fo; o;;[I"	    ;FI"require 'net/pop';FI"
;FI"
;FI"	    ;FI"1# Use APOP authentication if $isapop == true;FI"
;FI"	    ;FI"@pop = Net::POP3.APOP($is_apop).new('apop.example.com', 110);FI"
;FI"	    ;FI"5pop.start(YourAccount', 'YourPassword') do |pop|;FI"
;FI"      ;FI"$# Rest of the code is the same.;FI"
;FI"	    ;FI"end;FI"
;FS;	;
i;I"6Fetch Only Selected Mail Using 'UIDL' POP Command;Fo; o;;[I"4If your POP server provides UIDL functionality,;FI":you can grab only selected mails from the POP server.;FI"	e.g.;Fo; o;;[!I"	    ;FI"def need_pop?( id );FI"
;FI"      ;FI",# determine if we need pop this mail...;FI"
;FI"	    ;FI"end;FI"
;FI"
;FI"	    ;FI",Net::POP3.start('pop.example.com', 110,;FI"
;FI"                    ;FI".'Your account', 'Your password') do |pop|;FI"
;FI"      ;FI"@pop.mails.select { |m| need_pop?(m.unique_id) }.each do |m|;FI"
;FI"        ;FI"do_something(m.pop);FI"
;FI"      ;FI"end;FI"
;FI"	    ;FI"end;FI"
;Fo;;[I"MThe POPMail#unique_id() method returns the unique-id of the message as a;FI"=String. Normally the unique-id is a hash of the message.;F[[I"address;FI"RRRRRRRR;F[I"open_timeout;FI"RWRWRWRWRWRWRWRW;F[I"read_timeout;FI"RRRRRRRR;F[[I"Revision;Fo;;[ [I"Revision;Fo;;[ [I"Revision;Fo;;[ [I"Revision;Fo;;[ [I"Revision;Fo;;[ [I"Revision;Fo;;[ [I"Revision;Fo;;[ [I"Revision;Fo;;[ [ [[I"
class;F[[:public[I"	APOP;FI"auth_only;FI"
certs;FI"create_ssl_params;FI"default_pop3_port;FI"default_pop3s_port;FI"default_port;FI"delete_all;FI"disable_ssl;FI"enable_ssl;FI"foreach;FI"new;FI"ssl_params;FI"
start;FI"use_ssl?;FI"verify;F[:protected[ [:private[ [I"instance;F[[;[I"active?;FI"
apop?;FI"auth_only;FI"command;FI"delete_all;FI"disable_ssl;FI"do_finish;FI"do_start;FI"	each;FI"each_mail;FI"enable_ssl;FI"finish;FI"inspect;FI"logging;FI"
mails;FI"n_bytes;FI"n_mails;FI"on_connect;FI"	port;FI"read_timeout=;FI"
reset;FI"set_debug_output;FI"
start;FI"started?;FI"use_ssl?;F[;[ [;[	I"command;FI"do_finish;FI"do_start;FI"on_connect;F