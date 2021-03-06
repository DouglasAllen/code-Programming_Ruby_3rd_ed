U:RDoc::AnyMethod[iI"	post:EFI"Net::HTTP#post;FF:publico:RDoc::Markup::Document:@parts[o:RDoc::Markup::Paragraph;	[I"GPosts +data+ (must be a String) to +path+. +header+ must be a Hash;FI"%like { 'Accept' => '*/*', ... }.;Fo:RDoc::Markup::BlankLine o;
;	[I"HIn version 1.1 (ruby 1.6), this method returns a pair of objects, a;FI"8Net::HTTPResponse object and an entity body string.;FI"OIn version 1.2 (ruby 1.8), this method returns a Net::HTTPResponse object.;Fo; o;
;	[	I"8If called with a block, yields each fragment of the;FI"8entity body in turn as a string as it are read from;FI"?the socket.  Note that in this case, the returned response;FI"3object will *not* contain a (meaningful) body.;Fo; o;
;	[I"!+dest+ argument is obsolete.;FI",It still works but you must not use it.;Fo; o;
;	[	I"=In version 1.1, this method might raise an exception for;FI"D3xx (redirect). In this case you can get an HTTPResponse object;FI"by "anException.response".;FI"8In version 1.2, this method never raises exception.;Fo; o:RDoc::Markup::Verbatim;	[%I"	    ;FI"# version 1.1;FI"
;FI"	    ;FI"Bresponse, body = http.post('/cgi-bin/search.rb', 'query=foo');FI"
;FI"
;FI"	    ;FI"# version 1.2;FI"
;FI"	    ;FI"<response = http.post('/cgi-bin/search.rb', 'query=foo');FI"
;FI"
;FI"	    ;FI"# using block;FI"
;FI"	    ;FI"&File.open('result.txt', 'w') {|f|;FI"
;FI"      ;FI":http.post('/cgi-bin/search.rb', 'query=foo') do |str|;FI"
;FI"        ;FI"f.write str;FI"
;FI"      ;FI"end;FI"
;FI"	    ;FI"};FI"
;Fo;
;	[I"8You should set Content-Type: header field for POST.;FI"6If no Content-Type: field given, this method uses;FI"4"application/x-www-form-urlencoded" by default.;F0I"+body_segment+;F[ I"/(path, data, initheader = nil, dest = nil);F