U:RDoc::AnyMethod[iI"descend:EFI"Pathname#descend;FF:publico:RDoc::Markup::Document:@parts[o:RDoc::Markup::Paragraph;	[I"3Iterates over and yields a new Pathname object;FI"<for each element in the given path in descending order.;Fo:RDoc::Markup::BlankLine o:RDoc::Markup::Verbatim;	['I" ;FI"<Pathname.new('/path/to/some/file.rb').descend {|v| p v};FI"
;FI"	    ;FI"#<Pathname:/>;FI"
;FI"	    ;FI"#<Pathname:/path>;FI"
;FI"	    ;FI"#<Pathname:/path/to>;FI"
;FI"	    ;FI"#<Pathname:/path/to/some>;FI"
;FI"	    ;FI"&#<Pathname:/path/to/some/file.rb>;FI"
;FI"
;FI" ;FI";Pathname.new('path/to/some/file.rb').descend {|v| p v};FI"
;FI"	    ;FI"#<Pathname:path>;FI"
;FI"	    ;FI"#<Pathname:path/to>;FI"
;FI"	    ;FI"#<Pathname:path/to/some>;FI"
;FI"	    ;FI"%#<Pathname:path/to/some/file.rb>;FI"
;Fo;
;	[I")It doesn't access actual filesystem.;Fo; o;
;	[I"*This method is available since 1.8.5.;F0I"v;F[ I"();F