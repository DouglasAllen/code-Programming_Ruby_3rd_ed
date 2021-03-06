U:RDoc::AnyMethod[iI"getresource:EFI"Resolv::DNS#getresource;FF:publico:RDoc::Markup::Document:@parts[o:RDoc::Markup::Paragraph;	[I"4Look up the +typeclass+ DNS resource of +name+.;Fo:RDoc::Markup::BlankLine o;
;	[I"4+name+ must be a Resolv::DNS::Name or a String.;Fo; o;
;	[I"0+typeclass+ should be one of the following:;Fo; o:RDoc::Markup::List:
@type:BULLET:@items[o:RDoc::Markup::ListItem:@label0;	[o;
;	[I"!Resolv::DNS::Resource::IN::A;Fo;;0;	[o;
;	[I"$Resolv::DNS::Resource::IN::AAAA;Fo;;0;	[o;
;	[I"#Resolv::DNS::Resource::IN::ANY;Fo;;0;	[o;
;	[I"%Resolv::DNS::Resource::IN::CNAME;Fo;;0;	[o;
;	[I"%Resolv::DNS::Resource::IN::HINFO;Fo;;0;	[o;
;	[I"%Resolv::DNS::Resource::IN::MINFO;Fo;;0;	[o;
;	[I""Resolv::DNS::Resource::IN::MX;Fo;;0;	[o;
;	[I""Resolv::DNS::Resource::IN::NS;Fo;;0;	[o;
;	[I"#Resolv::DNS::Resource::IN::PTR;Fo;;0;	[o;
;	[I"#Resolv::DNS::Resource::IN::SOA;Fo;;0;	[o;
;	[I"#Resolv::DNS::Resource::IN::TXT;Fo;;0;	[o;
;	[I"#Resolv::DNS::Resource::IN::WKS;Fo; o;
;	[I"JReturned resource is represented as a Resolv::DNS::Resource instance,;FI"'i.e. Resolv::DNS::Resource::IN::A.;F00[ I"(name, typeclass);F