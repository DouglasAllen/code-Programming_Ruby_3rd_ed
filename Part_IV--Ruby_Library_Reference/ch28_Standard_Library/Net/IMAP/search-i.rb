U:RDoc::AnyMethod[iI"search:EFI"Net::IMAP#search;FF:publico:RDoc::Markup::Document:@parts[o:RDoc::Markup::Paragraph;	[I"CSends a SEARCH command to search the mailbox for messages that;FI"Ematch the given searching criteria, and returns message sequence;FI"?numbers.  +keys+ can either be a string holding the entire;FI"Fsearch string, or a single-dimension array of search keywords and;FI"?arguments.  The following are some common search criteria;;FI".see [IMAP] section 6.4.4 for a full list.;Fo:RDoc::Markup::BlankLine o:RDoc::Markup::List:
@type:	NOTE:@items[o:RDoc::Markup::ListItem:@labelI"<message set>;F;	[o;
;	[I"6a set of message sequence numbers.  ',' indicates;FI"7an interval, ':' indicates a range.  For instance,;FI"('2,10:12,15' means "2,10,11,12,15".;Fo; o;;I"BEFORE <date>;F;	[o;
;	[I"3messages with an internal date strictly before;FI"4<date>.  The date argument has a format similar;FI"to 8-Aug-2002.;Fo; o;;I"BODY <string>;F;	[o;
;	[I"6messages that contain <string> within their body.;Fo; o;;I"CC <string>;F;	[o;
;	[I"4messages containing <string> in their CC field.;Fo; o;;I"FROM <string>;F;	[o;
;	[I"8messages that contain <string> in their FROM field.;Fo; o;;I"NEW;F;	[o;
;	[I"<messages with the \Recent, but not the \Seen, flag set.;Fo; o;;I"NOT <search-key>;F;	[o;
;	[I"%negate the following search key.;Fo; o;;I"!OR <search-key> <search-key>;F;	[o;
;	[I"#"or" two search keys together.;Fo; o;;I"ON <date>;F;	[o;
;	[I"<messages with an internal date exactly equal to <date>,;FI".which has a format similar to 8-Aug-2002.;Fo; o;;I"SINCE <date>;F;	[o;
;	[I"7messages with an internal date on or after <date>.;Fo; o;;I"SUBJECT <string>;F;	[o;
;	[I"-messages with <string> in their subject.;Fo; o;;I"TO <string>;F;	[o;
;	[I".messages with <string> in their TO field.;Fo; o;
;	[I"For example:;Fo; o:RDoc::Markup::Verbatim;	[
I"  ;FI"6p imap.search(["SUBJECT", "hello", "NOT", "NEW"]);FI"
;FI"  ;FI"#=> [1, 6, 7, 8];F00[ I"(keys, charset = nil);F