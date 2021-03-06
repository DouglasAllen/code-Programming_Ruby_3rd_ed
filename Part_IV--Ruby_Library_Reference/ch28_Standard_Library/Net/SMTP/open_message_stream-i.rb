U:RDoc::AnyMethod[iI"open_message_stream:EFI""Net::SMTP#open_message_stream;FF:publico:RDoc::Markup::Document:@parts[o:RDoc::Markup::Paragraph;	[I"=Opens a message writer stream and gives it to the block.;FI"BThe stream is valid only in the block, and has these methods:;Fo:RDoc::Markup::BlankLine o:RDoc::Markup::List:
@type:	NOTE:@items[
o:RDoc::Markup::ListItem:@labelI"puts(str = '');F;	[o;
;	[I"outputs STR and CR LF.;Fo;;I"print(str);F;	[o;
;	[I"outputs STR.;Fo;;I"printf(fmt, *args);F;	[o;
;	[I" outputs sprintf(fmt,*args).;Fo;;I"write(str);F;	[o;
;	[I"9outputs STR and returns the length of written bytes.;Fo;;I"<<(str);F;	[o;
;	[I""outputs STR and returns self.;Fo; o;
;	[I"@If a single CR ("\r") or LF ("\n") is found in the message,;FI"Ait is converted to the CR LF pair.  You cannot send a binary;FI"message with this method.;Fo; S:RDoc::Markup::Heading:
leveli:	textI"Parameters;Fo; o;
;	[I"B+from_addr+ is a String representing the source mail address.;Fo; o;
;	[I"G+to_addr+ is a String or Strings or Array of Strings, representing;FI"/the destination mail address or addresses.;Fo; S;;i;I"Example;Fo; o:RDoc::Markup::Verbatim;	[ I"	    ;FI"6Net::SMTP.start('smtp.example.com', 25) do |smtp|;FI"
;FI"      ;FI"Nsmtp.open_message_stream('from@example.com', ['dest@example.com']) do |f|;FI"
;FI"        ;FI"$f.puts 'From: from@example.com';FI"
;FI"        ;FI""f.puts 'To: dest@example.com';FI"
;FI"        ;FI"#f.puts 'Subject: test message';FI"
;FI"        ;FI"f.puts;FI"
;FI"        ;FI"%f.puts 'This is a test message.';FI"
;FI"      ;FI"end;FI"
;FI"	    ;FI"end;FI"
;FS;;i;I"Errors;Fo; o;
;	[I"This method may raise:;Fo; o;;:BULLET;[o;;0;	[o;
;	[I"Net::SMTPServerBusy;Fo;;0;	[o;
;	[I"Net::SMTPSyntaxError;Fo;;0;	[o;
;	[I"Net::SMTPFatalError;Fo;;0;	[o;
;	[I"Net::SMTPUnknownError;Fo;;0;	[o;
;	[I"IOError;Fo;;0;	[o;
;	[I"TimeoutError;F0I"stream;F[[I"Net::SMTP#ready;Fo;;	[ I"(from_addr, *to_addrs);F