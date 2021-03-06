U:RDoc::AnyMethod[iI"decode_utf7:EFI"Net::IMAP::decode_utf7;FT:publico:RDoc::Markup::Document:@parts[
o:RDoc::Markup::Paragraph;	[I"9Decode a string from modified UTF-7 format to UTF-8.;Fo:RDoc::Markup::BlankLine o;
;	[I">UTF-7 is a 7-bit encoding of Unicode [UTF7].  IMAP uses a;FI">slightly modified version of this to encode mailbox names;FI"?containing non-ASCII characters; see [IMAP] section 5.1.3.;Fo; o;
;	[I"9Net::IMAP does _not_ automatically encode and decode;FI"$mailbox names to and from utf7.;F00[ I"(s);F