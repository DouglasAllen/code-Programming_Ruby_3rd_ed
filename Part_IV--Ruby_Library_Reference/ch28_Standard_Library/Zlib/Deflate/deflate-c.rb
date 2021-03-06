U:RDoc::AnyMethod[iI"deflate:EFI"Zlib::Deflate::deflate;FT:publico:RDoc::Markup::Document:@parts[o:RDoc::Markup::Paragraph;	[	I"=Compresses the given +string+. Valid values of level are;FI"><tt>Zlib::NO_COMPRESSION</tt>, <tt>Zlib::BEST_SPEED</tt>,;FI"P<tt>Zlib::BEST_COMPRESSION</tt>, <tt>Zlib::DEFAULT_COMPRESSION</tt>, and an;FI"integer from 0 to 9.;Fo:RDoc::Markup::BlankLine o;
;	[I"<This method is almost equivalent to the following code:;Fo; o:RDoc::Markup::Verbatim;	[I"  ;FI"def deflate(string, level);FI"
;FI"	    ;FI"!z = Zlib::Deflate.new(level);FI"
;FI"	    ;FI"*dst = z.deflate(string, Zlib::FINISH);FI"
;FI"	    ;FI"z.close;FI"
;FI"	    ;FI"dst;FI"
;FI"  ;FI"end;FI"
;Fo;
;	[I"+TODO: what's default value of +level+?;FI"- Zlib::Deflate.deflate(string[, level])
;F0[ I"
(...);F