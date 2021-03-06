U:RDoc::AnyMethod[iI"get_response:EFI"Net::HTTP::get_response;FT:publico:RDoc::Markup::Document:@parts[o:RDoc::Markup::Paragraph;	[I"=Send a GET request to the target and return the response;FI"Jas a Net::HTTPResponse object.  The target can either be specified as;FI"6(+uri+), or as (+host+, +path+, +port+ = 80); so:;Fo:RDoc::Markup::BlankLine o:RDoc::Markup::Verbatim;	[I"   ;FI"Qres = Net::HTTP.get_response(URI.parse('http://www.example.com/index.html'));FI"
;FI"   ;FI"print res.body;FI"
;Fo;
;	[I"or:;Fo; o;;	[
I"   ;FI"Cres = Net::HTTP.get_response('www.example.com', '/index.html');FI"
;FI"   ;FI"print res.body;F00[ I"2(uri_or_host, path = nil, port = nil, &block);F