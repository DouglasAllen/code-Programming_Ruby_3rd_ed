U:RDoc::AnyMethod[iI"to_mailtext:EFI"URI::MailTo#to_mailtext;FF:publico:RDoc::Markup::Document:@parts[
o:RDoc::Markup::Paragraph;	[I"GReturns the RFC822 e-mail text equivalent of the URL, as a String.;Fo:RDoc::Markup::BlankLine o;
;	[I"Example:;Fo; o:RDoc::Markup::Verbatim;	[I"  ;FI"require 'uri';FI"
;FI"
;FI"  ;FI"Ruri = URI.parse("mailto:ruby-list@ruby-lang.org?Subject=subscribe&cc=myaddr");FI"
;FI"  ;FI"uri.to_mailtext;FI"
;FI"  ;FI"M# => "To: ruby-list@ruby-lang.org\nSubject: subscribe\nCc: myaddr\n\n\n";F00[[I"URI::MailTo#to_rfc822text;Fo;;	[ I"();F