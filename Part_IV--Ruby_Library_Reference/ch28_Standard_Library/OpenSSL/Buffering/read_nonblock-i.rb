U:RDoc::AnyMethod[iI"read_nonblock:EFI"%OpenSSL::Buffering#read_nonblock;FF:publico:RDoc::Markup::Document:@parts[o:RDoc::Markup::Paragraph;	[I"=Reads at most _maxlen_ bytes in the non-blocking manner.;Fo:RDoc::Markup::BlankLine o;
;	[I"/When no data can be read without blocking,;FI"1It raises OpenSSL::SSL::SSLError extended by;FI"*IO::WaitReadable or IO::WaitWritable.;Fo; o;
;	[I"9IO::WaitReadable means SSL needs to read internally.;FI"2So read_nonblock should be called again after;FI"underlying IO is readable.;Fo; o;
;	[I":IO::WaitWritable means SSL needs to write internally.;FI"2So read_nonblock should be called again after;FI"underlying IO is writable.;Fo; o;
;	[I"LSo OpenSSL::Buffering#read_nonblock needs two rescue clause as follows.;Fo; o:RDoc::Markup::Verbatim;	[#I" ;FI",# emulates blocking read (readpartial).;FI"
;FI" ;FI"
begin;FI"
;FI"   ;FI"'result = ssl.read_nonblock(maxlen);FI"
;FI" ;FI"rescue IO::WaitReadable;FI"
;FI"   ;FI"IO.select([io]);FI"
;FI"   ;FI"
retry;FI"
;FI" ;FI"rescue IO::WaitWritable;FI"
;FI"   ;FI"IO.select(nil, [io]);FI"
;FI"   ;FI"
retry;FI"
;FI" ;FI"end;FI"
;Fo;
;	[	I"ENote that one reason that read_nonblock write to a underlying IO;FI"2is the peer requests a new TLS/SSL handshake.;FI"&See openssl FAQ for more details.;FI",http://www.openssl.org/support/faq.html;F00[ I"(maxlen, buf=nil);F