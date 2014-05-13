U:RDoc::AnyMethod[iI"	sort:EFI"Net::IMAP#sort;FF:publico:RDoc::Markup::Document:@parts[	o:RDoc::Markup::Paragraph;	[I":Sends a SORT command to sort messages in the mailbox.;FI"?Returns an array of message sequence numbers. For example:;Fo:RDoc::Markup::BlankLine o:RDoc::Markup::Verbatim;	[I"  ;FI"/p imap.sort(["FROM"], ["ALL"], "US-ASCII");FI"
;FI"  ;FI"$#=> [1, 2, 3, 5, 6, 7, 8, 4, 9];FI"
;FI"  ;FI"<p imap.sort(["DATE"], ["SUBJECT", "hello"], "US-ASCII");FI"
;FI"  ;FI"#=> [6, 7, 8, 1];FI"
;Fo;
;	[I",See [SORT-THREAD-EXT] for more details.;F00[ I"&(sort_keys, search_keys, charset);F