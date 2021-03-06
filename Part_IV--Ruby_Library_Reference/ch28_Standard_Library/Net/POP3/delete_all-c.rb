U:RDoc::AnyMethod[iI"delete_all:EFI"Net::POP3::delete_all;FT:publico:RDoc::Markup::Document:@parts[o:RDoc::Markup::Paragraph;	[I"BStarts a POP3 session and deletes all messages on the server.;FI"EIf a block is given, each POPMail object is yielded to it before;FI"being deleted.;Fo:RDoc::Markup::BlankLine o;
;	[I"IThis method raises a POPAuthenticationError if authentication fails.;Fo; S:RDoc::Markup::Heading:
leveli:	textI"Example;Fo; o:RDoc::Markup::Verbatim;	[I"	    ;FI"1Net::POP3.delete_all('pop.example.com', 110,;FI"
;FI"                         ;FI"*'YourAccount', 'YourPassword') do |m|;FI"
;FI"      ;FI"file.write m.pop;FI"
;FI"	    ;FI"end;F00[ I"Q(address, port = nil, account = nil, password = nil, isapop = false, &block);F