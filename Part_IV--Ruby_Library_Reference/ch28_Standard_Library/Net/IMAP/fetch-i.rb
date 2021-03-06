U:RDoc::AnyMethod[iI"
fetch:EFI"Net::IMAP#fetch;FF:publico:RDoc::Markup::Document:@parts[o:RDoc::Markup::Paragraph;	[I"ESends a FETCH command to retrieve data associated with a message;FI"Cin the mailbox. The +set+ parameter is a number or an array of;FI"@numbers or a Range object. The number is a message sequence;FI">number.  +attr+ is a list of attributes to fetch; see the;FI"?documentation for Net::IMAP::FetchData for a list of valid;FI"attributes.;FI"GThe return value is an array of Net::IMAP::FetchData. For example:;Fo:RDoc::Markup::BlankLine o:RDoc::Markup::Verbatim;	[1I"  ;FI"p imap.fetch(6..8, "UID");FI"
;FI"  ;FI"?#=> [#<Net::IMAP::FetchData seqno=6, attr={"UID"=>98}>, \\;FI"
;FI"       ;FI":#<Net::IMAP::FetchData seqno=7, attr={"UID"=>99}>, \\;FI"
;FI"       ;FI"8#<Net::IMAP::FetchData seqno=8, attr={"UID"=>100}>];FI"
;FI"  ;FI"5p imap.fetch(6, "BODY[HEADER.FIELDS (SUBJECT)]");FI"
;FI"  ;FI"k#=> [#<Net::IMAP::FetchData seqno=6, attr={"BODY[HEADER.FIELDS (SUBJECT)]"=>"Subject: test\r\n\r\n"}>];FI"
;FI"  ;FI"Bdata = imap.uid_fetch(98, ["RFC822.SIZE", "INTERNALDATE"])[0];FI"
;FI"  ;FI"p data.seqno;FI"
;FI"  ;FI"
#=> 6;FI"
;FI"  ;FI"p data.attr["RFC822.SIZE"];FI"
;FI"  ;FI"#=> 611;FI"
;FI"  ;FI" p data.attr["INTERNALDATE"];FI"
;FI"  ;FI"%#=> "12-Oct-2000 22:40:59 +0900";FI"
;FI"  ;FI"p data.attr["UID"];FI"
;FI"  ;FI"#=> 98;F00[ I"(set, attr);F