U:RDoc::AnyMethod[iI"send_request:EFI"Net::HTTP#send_request;FF:publico:RDoc::Markup::Document:@parts[o:RDoc::Markup::Paragraph;	[I".Sends an HTTP request to the HTTP server.;FI"9This method also sends DATA string if DATA is given.;Fo:RDoc::Markup::BlankLine o;
;	[I"#Returns a HTTPResponse object.;Fo; o;
;	[I"0This method never raises Net::* exceptions.;Fo; o:RDoc::Markup::Verbatim;	[
I"   ;FI"7response = http.send_request('GET', '/index.html');FI"
;FI"   ;FI"puts response.body;F00[ I"+(name, path, data = nil, header = nil);F