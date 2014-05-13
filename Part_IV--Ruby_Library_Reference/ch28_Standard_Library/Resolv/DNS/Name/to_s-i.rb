U:RDoc::AnyMethod[iI"	to_s:EFI"Resolv::DNS::Name#to_s;FF:publico:RDoc::Markup::Document:@parts[o:RDoc::Markup::Paragraph;	[I")returns the domain name as a string.;Fo:RDoc::Markup::BlankLine o;
;	[I"KThe domain name doesn't have a trailing dot even if the name object is;FI"absolute.;Fo; o;
;	[I"Example:;Fo; o:RDoc::Markup::Verbatim;	[
I"  ;FI":p Resolv::DNS::Name.create("x.y.z.").to_s #=> "x.y.z";FI"
;FI"  ;FI"9p Resolv::DNS::Name.create("x.y.z").to_s #=> "x.y.z";F00[ I"();F