U:RDoc::AnyMethod[iI"get:EFI"Net::HTTP#get;FF:publico:RDoc::Markup::Document:@parts[o:RDoc::Markup::Paragraph;	[I"4Gets data from +path+ on the connected-to host.;FI"A+initheader+ must be a Hash like { 'Accept' => '*/*', ... },;FI"&and it defaults to an empty hash.;FI"AIf +initheader+ doesn't have the key 'accept-encoding', then;FI"Ba value of "gzip;q=1.0,deflate;q=0.6,identity;q=0.3" is used,;FI">so that gzip compression is used in preference to deflate;FI"@compression, which is used in preference to no compression.;FI"ERuby doesn't have libraries to support the compress (Lempel-Ziv);FI"Bcompression, so that is not supported.  The intent of this is;FI">to reduce bandwidth by default.   If this routine sets up;FI"?compression, then it does the decompression also, removing;FI"8the header as well to prevent confusion.  Otherwise;FI"'it leaves the body as it found it.;Fo:RDoc::Markup::BlankLine o;
;	[	I"FIn version 1.1 (ruby 1.6), this method returns a pair of objects,;FI";a Net::HTTPResponse object and the entity body string.;FI"GIn version 1.2 (ruby 1.8), this method returns a Net::HTTPResponse;FI"object.;Fo; o;
;	[	I"8If called with a block, yields each fragment of the;FI"7entity body in turn as a string as it is read from;FI"?the socket.  Note that in this case, the returned response;FI"3object will *not* contain a (meaningful) body.;Fo; o;
;	[I"!+dest+ argument is obsolete.;FI",It still works but you must not use it.;Fo; o;
;	[I"=In version 1.1, this method might raise an exception for;FI"C3xx (redirect). In this case you can get a HTTPResponse object;FI"by "anException.response".;Fo; o;
;	[I"8In version 1.2, this method never raises exception.;Fo; o:RDoc::Markup::Verbatim;	[$I"	    ;FI"*# version 1.1 (bundled with Ruby 1.6);FI"
;FI"	    ;FI"-response, body = http.get('/index.html');FI"
;FI"
;FI"	    ;FI"3# version 1.2 (bundled with Ruby 1.8 or later);FI"
;FI"	    ;FI"'response = http.get('/index.html');FI"
;FI"
;FI"	    ;FI"# using block;FI"
;FI"	    ;FI"&File.open('result.txt', 'w') {|f|;FI"
;FI"      ;FI" http.get('/~foo/') do |str|;FI"
;FI"        ;FI"f.write str;FI"
;FI"      ;FI"end;FI"
;FI"	    ;FI"};F0I"+body_segment+;F[ I"((path, initheader = {}, dest = nil);F