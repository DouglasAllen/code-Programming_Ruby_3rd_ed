U:RDoc::AnyMethod[iI"accept_nonblock:EFI",OpenSSL::SSL::SSLSocket#accept_nonblock;FF:publico:RDoc::Markup::Document:@parts[o:RDoc::Markup::Paragraph;	[I"Ginitiate the TLS/SSL handshake as a server in non-blocking manner.;Fo:RDoc::Markup::BlankLine o:RDoc::Markup::Verbatim;	["I"  ;FI"# emulates blocking accept;FI"
;FI"  ;FI"
begin;FI"
;FI"	    ;FI"ssl.accept_nonblock;FI"
;FI"  ;FI"rescue IO::WaitReadable;FI"
;FI"	    ;FI"IO.select([s2]);FI"
;FI"	    ;FI"
retry;FI"
;FI"  ;FI"rescue IO::WaitWritable;FI"
;FI"	    ;FI"IO.select(nil, [s2]);FI"
;FI"	    ;FI"
retry;FI"
;FI"  ;FI"end;FI"!ssl.accept_nonblock => self
;F0[ I"();F