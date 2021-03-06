U:RDoc::AnyMethod[iI"append:EFI"Net::IMAP#append;FF:publico:RDoc::Markup::Document:@parts[	o:RDoc::Markup::Paragraph;	[I"ASends a APPEND command to append the +message+ to the end of;FI"@the +mailbox+. The optional +flags+ argument is an array of;FI"Aflags to initially passing to the new message.  The optional;FI"F+date_time+ argument specifies the creation time to assign to the;FI"2new message; it defaults to the current time.;FI"For example:;Fo:RDoc::Markup::BlankLine o:RDoc::Markup::Verbatim;	[I"  ;FI"Fimap.append("inbox", <<EOF.gsub(/\n/, "\r\n"), [:Seen], Time.now);FI"
;FI"  ;FI"Subject: hello;FI"
;FI"  ;FI"From: shugo@ruby-lang.org;FI"
;FI"  ;FI"To: shugo@ruby-lang.org;FI"
;FI"
;FI"  ;FI"hello world;FI"
;FI"  ;FI"EOF;FI"
;Fo;
;	[I"?A Net::IMAP::NoResponseError is raised if the mailbox does;FI"Bnot exist (it is not created automatically), or if the flags,;FI"4date_time, or message arguments contain errors.;F00[ I"5(mailbox, message, flags = nil, date_time = nil);F