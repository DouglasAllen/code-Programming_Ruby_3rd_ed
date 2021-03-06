U:RDoc::AnyMethod[iI"
build:EFI"URI::FTP::build;FT:publico:RDoc::Markup::Document:@parts[S:RDoc::Markup::Heading:
leveli:	textI"Description;Fo:RDoc::Markup::BlankLine o:RDoc::Markup::Paragraph;	[I"ICreates a new URI::FTP object from components, with syntax checking.;Fo; o;;	[I"GThe components accepted are +userinfo+, +host+, +port+, +path+ and;FI"+typecode+.;Fo; o;;	[I"GThe components should be provided either as an Array, or as a Hash;FI"Dwith keys formed by preceding the component names with a colon.;Fo; o;;	[I"DIf an Array is used, the components must be passed in the order;Fo:RDoc::Markup::List:
@type:
LABEL:@items[o:RDoc::Markup::ListItem:@labelI")userinfo, host, port, path, typecode;F;	[o; o;;	[I"EIf the path supplied is absolute, it will be escaped in order to;FI"+make it absolute in the URI. Examples:;Fo; o:RDoc::Markup::Verbatim;	[I"	    ;FI"require 'uri';FI"
;FI"
;FI"	    ;FI"Curi = URI::FTP.build(['user:password', 'ftp.example.com', nil,;FI"
;FI"      ;FI"'/path/file.> zip', 'i']);FI"
;FI"	    ;FI"Sputs uri.to_s  ->  ftp://user:password@ftp.example.com/%2Fpath/file.zip;type=a;FI"
;FI"
;FI"	    ;FI"7uri2 = URI::FTP.build({:host => 'ftp.example.com',;FI"
;FI"      ;FI":path => 'ruby/src'});FI"
;FI"	    ;FI"7puts uri2.to_s  ->  ftp://ftp.example.com/ruby/src;F00[ I"(args);F