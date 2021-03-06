U:RDoc::AnyMethod[iI"
build:EFI"URI::MailTo::build;FT:publico:RDoc::Markup::Document:@parts[S:RDoc::Markup::Heading:
leveli:	textI"Description;Fo:RDoc::Markup::BlankLine o:RDoc::Markup::Paragraph;	[I"LCreates a new URI::MailTo object from components, with syntax checking.;Fo; o;;	[I"IComponents can be provided as an Array or Hash. If an Array is used,;FI"6the components must be supplied as [to, headers].;Fo; o;;	[I"LIf a Hash is used, the keys are the component names preceded by colons.;Fo; o;;	[I"AThe headers can be supplied as a pre-encoded string, such as;FI"B"subject=subscribe&cc=address", or as an Array of Arrays like;Fo:RDoc::Markup::List:
@type:
LABEL:@items[o:RDoc::Markup::ListItem:@labelI"0['subject', 'subscribe'], ['cc', 'address'];F;	[o; o;;	[I"Examples:;Fo; o:RDoc::Markup::Verbatim;	[I"   ;FI"require 'uri';FI"
;FI"
;FI"   ;FI"@m1 = URI::MailTo.build(['joe@example.com', 'subject=Ruby']);FI"
;FI"   ;FI":puts m1.to_s  ->  mailto:joe@example.com?subject=Ruby;FI"
;FI"
;FI"   ;FI"dm2 = URI::MailTo.build(['john@example.com', [['Subject', 'Ruby'], ['Cc', 'jack@example.com']]]);FI"
;FI"   ;FI"Oputs m2.to_s  ->  mailto:john@example.com?Subject=Ruby&Cc=jack@example.com;FI"
;FI"
;FI"   ;FI"cm3 = URI::MailTo.build({:to => 'listman@example.com', :headers => [['subject', 'subscribe']]});FI"
;FI"   ;FI"Cputs m3.to_s  ->  mailto:listman@example.com?subject=subscribe;F00[ I"(args);F