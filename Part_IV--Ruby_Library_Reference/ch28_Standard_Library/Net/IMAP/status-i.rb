U:RDoc::AnyMethod[iI"status:EFI"Net::IMAP#status;FF:publico:RDoc::Markup::Document:@parts[o:RDoc::Markup::Paragraph;	[I"DSends a STATUS command, and returns the status of the indicated;FI"?+mailbox+. +attr+ is a list of one or more attributes that;FI"Awe are request the status of.  Supported attributes include:;Fo:RDoc::Markup::BlankLine o:RDoc::Markup::Verbatim;	[I"  ;FI"MESSAGES::;FI" ;FI"+the number of messages in the mailbox.;FI"
;FI"  ;FI"RECENT::;FI" ;FI"2the number of recent messages in the mailbox.;FI"
;FI"  ;FI"UNSEEN::;FI" ;FI"2the number of unseen messages in the mailbox.;FI"
;Fo;
;	[I";The return value is a hash of attributes. For example:;Fo; o;;	[I"  ;FI"3p imap.status("inbox", ["MESSAGES", "RECENT"]);FI"
;FI"  ;FI"&#=> {"RECENT"=>0, "MESSAGES"=>44};FI"
;Fo;
;	[I"<A Net::IMAP::NoResponseError is raised if status values;FI">for +mailbox+ cannot be returned, for instance because it;FI"does not exist.;F00[ I"(mailbox, attr);F