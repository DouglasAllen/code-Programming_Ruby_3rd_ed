U:RDoc::Attr[i I"responses:EFI"Net::IMAP#responses;FI"R;F:publico:RDoc::Markup::Document:@parts[o:RDoc::Markup::Paragraph;	[I"7Returns recorded untagged responses.  For example:;Fo:RDoc::Markup::BlankLine o:RDoc::Markup::Verbatim;	[I"  ;FI"imap.select("inbox");FI"
;FI"  ;FI"#p imap.responses["EXISTS"][-1];FI"
;FI"  ;FI"
#=> 2;FI"
;FI"  ;FI"(p imap.responses["UIDVALIDITY"][-1];FI"
;FI"  ;FI"#=> 968263756;F