U:RDoc::NormalClass[i I"	HTTP:EFI"Net::HTTP;FI"Protocol;Fo:RDoc::Markup::Document:@parts[|S:RDoc::Markup::Heading:
leveli:	textI"What Is This Library?;Fo:RDoc::Markup::BlankLine o:RDoc::Markup::Paragraph;[	I"?This library provides your program functions to access WWW;FI"Bdocuments via HTTP, Hyper Text Transfer Protocol version 1.1.;FI",For details of HTTP, refer to [RFC2616];FI"+(http://www.ietf.org/rfc/rfc2616.txt).;Fo; S;	;
i;I"Examples;Fo; S;	;
i;I"%Getting Document From WWW Server;Fo; o;;[I"!Example #1: Simple GET+print;Fo; o:RDoc::Markup::Verbatim;[I"	    ;FI"require 'net/http';FI"
;FI"	    ;FI"9Net::HTTP.get_print 'www.example.com', '/index.html';FI"
;Fo;;[I"(Example #2: Simple GET+print by URL;Fo; o;;[I"	    ;FI"require 'net/http';FI"
;FI"	    ;FI"require 'uri';FI"
;FI"	    ;FI"GNet::HTTP.get_print URI.parse('http://www.example.com/index.html');FI"
;Fo;;[I"'Example #3: More generic GET+print;Fo; o;;[I"	    ;FI"require 'net/http';FI"
;FI"	    ;FI"require 'uri';FI"
;FI"
;FI"	    ;FI"9url = URI.parse('http://www.example.com/index.html');FI"
;FI"	    ;FI"6res = Net::HTTP.start(url.host, url.port) {|http|;FI"
;FI"      ;FI"http.get('/index.html');FI"
;FI"	    ;FI"};FI"
;FI"	    ;FI"puts res.body;FI"
;Fo;;[I"'Example #4: More generic GET+print;Fo; o;;[I"	    ;FI"require 'net/http';FI"
;FI"
;FI"	    ;FI"9url = URI.parse('http://www.example.com/index.html');FI"
;FI"	    ;FI"'req = Net::HTTP::Get.new(url.path);FI"
;FI"	    ;FI"6res = Net::HTTP.start(url.host, url.port) {|http|;FI"
;FI"      ;FI"http.request(req);FI"
;FI"	    ;FI"};FI"
;FI"	    ;FI"puts res.body;FI"
;FS;	;
i;I"Posting Form Data;Fo; o;;[ZI"	    ;FI"require 'net/http';FI"
;FI"	    ;FI"require 'uri';FI"
;FI"
;FI"	    ;FI"#1: Simple POST;FI"
;FI"	    ;FI"Nres = Net::HTTP.post_form(URI.parse('http://www.example.com/search.cgi'),;FI"
;FI"#                              ;FI"${'q' => 'ruby', 'max' => '50'});FI"
;FI"	    ;FI"puts res.body;FI"
;FI"
;FI"	    ;FI"'#2: POST with basic authentication;FI"
;FI"	    ;FI"Vres = Net::HTTP.post_form(URI.parse('http://jack:pass@www.example.com/todo.cgi'),;FI"
;FI"-                                        ;FI"{'from' => '2005-01-01',;FI"
;FI".                                         ;FI"'to' => '2005-03-31'});FI"
;FI"	    ;FI"puts res.body;FI"
;FI"
;FI"	    ;FI"#3: Detailed control;FI"
;FI"	    ;FI"7url = URI.parse('http://www.example.com/todo.cgi');FI"
;FI"	    ;FI"(req = Net::HTTP::Post.new(url.path);FI"
;FI"	    ;FI""req.basic_auth 'jack', 'pass';FI"
;FI"	    ;FI"Kreq.set_form_data({'from' => '2005-01-01', 'to' => '2005-03-31'}, ';');FI"
;FI"	    ;FI"Nres = Net::HTTP.new(url.host, url.port).start {|http| http.request(req) };FI"
;FI"	    ;FI"case res;FI"
;FI"	    ;FI"0when Net::HTTPSuccess, Net::HTTPRedirection;FI"
;FI"      ;FI"	# OK;FI"
;FI"	    ;FI"	else;FI"
;FI"      ;FI"res.error!;FI"
;FI"	    ;FI"end;FI"
;FI"
;FI"	    ;FI"#4: Multiple values;FI"
;FI"	    ;FI"Nres = Net::HTTP.post_form(URI.parse('http://www.example.com/search.cgi'),;FI"
;FI"#                              ;FI".{'q' => ['ruby', 'perl'], 'max' => '50'});FI"
;FI"	    ;FI"puts res.body;FI"
;FS;	;
i;I"Accessing via Proxy;Fo; o;;[I":Net::HTTP.Proxy creates http proxy class. It has same;FI"=methods of Net::HTTP but its instances always connect to;FI""proxy, instead of given host.;Fo; o;;[I"	    ;FI"require 'net/http';FI"
;FI"
;FI"	    ;FI"#proxy_addr = 'your.proxy.host';FI"
;FI"	    ;FI"proxy_port = 8080;FI"
;FI"            ;FI":;FI"
;FI"	    ;FI"NNet::HTTP::Proxy(proxy_addr, proxy_port).start('www.example.com') {|http|;FI"
;FI"      ;FI"-# always connect to your.proxy.addr:8080;FI"
;FI"            ;FI":;FI"
;FI"	    ;FI"};FI"
;Fo;;[I"KSince Net::HTTP.Proxy returns Net::HTTP itself when proxy_addr is nil,;FI"<there's no need to change code if there's proxy or not.;Fo; o;;[I"JThere are two additional parameters in Net::HTTP.Proxy which allow to;FI"*specify proxy user name and password:;Fo; o;;[I"	    ;FI"QNet::HTTP::Proxy(proxy_addr, proxy_port, proxy_user = nil, proxy_pass = nil);FI"
;Fo;;[I"AYou may use them to work with authorization-enabled proxies:;Fo; o;;['I"	    ;FI"require 'net/http';FI"
;FI"	    ;FI"require 'uri';FI"
;FI"
;FI"	    ;FI"#proxy_host = 'your.proxy.host';FI"
;FI"	    ;FI"proxy_port = 8080;FI"
;FI"	    ;FI"'uri = URI.parse(ENV['http_proxy']);FI"
;FI"	    ;FI"Eproxy_user, proxy_pass = uri.userinfo.split(/:/) if uri.userinfo;FI"
;FI"	    ;FI"-Net::HTTP::Proxy(proxy_host, proxy_port,;FI"
;FI"                     ;FI"=proxy_user, proxy_pass).start('www.example.com') {|http|;FI"
;FI"      ;FI"S# always connect to your.proxy.addr:8080 using specified username and password;FI"
;FI"            ;FI":;FI"
;FI"	    ;FI"};FI"
;Fo;;[I"FNote that net/http never rely on HTTP_PROXY environment variable.;FI"1If you want to use proxy, set it explicitly.;Fo; S;	;
i;I"Following Redirection;Fo; o;;[2I"	    ;FI"require 'net/http';FI"
;FI"	    ;FI"require 'uri';FI"
;FI"
;FI"	    ;FI"#def fetch(uri_str, limit = 10);FI"
;FI"      ;FI"*# You should choose better exception.;FI"
;FI"      ;FI"@raise ArgumentError, 'HTTP redirect too deep' if limit == 0;FI"
;FI"
;FI"      ;FI":response = Net::HTTP.get_response(URI.parse(uri_str));FI"
;FI"      ;FI"case response;FI"
;FI"      ;FI",when Net::HTTPSuccess     then response;FI"
;FI"      ;FI"Jwhen Net::HTTPRedirection then fetch(response['location'], limit - 1);FI"
;FI"      ;FI"	else;FI"
;FI"        ;FI"response.error!;FI"
;FI"      ;FI"end;FI"
;FI"	    ;FI"end;FI"
;FI"
;FI"	    ;FI",print fetch('http://www.ruby-lang.org');FI"
;Fo;;[	I"GNet::HTTPSuccess and Net::HTTPRedirection is a HTTPResponse class.;FI"DAll HTTPResponse objects belong to its own response class which;FI"Bindicate HTTP result status. For details of response classes,;FI")see section "HTTP Response Classes".;Fo; S;	;
i;I"Basic Authentication;Fo; o;;[I"	    ;FI"require 'net/http';FI"
;FI"
;FI"	    ;FI"/Net::HTTP.start('www.example.com') {|http|;FI"
;FI"      ;FI"2req = Net::HTTP::Get.new('/secret-page.html');FI"
;FI"      ;FI")req.basic_auth 'account', 'password';FI"
;FI"      ;FI"!response = http.request(req);FI"
;FI"      ;FI"print response.body;FI"
;FI"	    ;FI"};FI"
;FS;	;
i;I"HTTP Request Classes;Fo; o;;[I"*Here is HTTP request class hierarchy.;Fo; o;;[2I"  ;FI"Net::HTTPRequest;FI"
;FI"      ;FI"Net::HTTP::Get;FI"
;FI"      ;FI"Net::HTTP::Head;FI"
;FI"      ;FI"Net::HTTP::Post;FI"
;FI"      ;FI"Net::HTTP::Put;FI"
;FI"      ;FI"Net::HTTP::Proppatch;FI"
;FI"      ;FI"Net::HTTP::Lock;FI"
;FI"      ;FI"Net::HTTP::Unlock;FI"
;FI"      ;FI"Net::HTTP::Options;FI"
;FI"      ;FI"Net::HTTP::Propfind;FI"
;FI"      ;FI"Net::HTTP::Delete;FI"
;FI"      ;FI"Net::HTTP::Move;FI"
;FI"      ;FI"Net::HTTP::Copy;FI"
;FI"      ;FI"Net::HTTP::Mkcol;FI"
;FI"      ;FI"Net::HTTP::Trace;FI"
;FS;	;
i;I"HTTP Response Classes;Fo; o;;[I"+Here is HTTP response class hierarchy.;FI"+All classes are defined in Net module.;Fo; o;;[�I"  ;FI"HTTPResponse;FI"
;FI"      ;FI"HTTPUnknownResponse;FI"
;FI"      ;FI"-HTTPInformation                    # 1xx;FI"
;FI"          ;FI"-HTTPContinue                       # 100;FI"
;FI"          ;FI"-HTTPSwitchProtocol                 # 101;FI"
;FI"      ;FI"-HTTPSuccess                        # 2xx;FI"
;FI"          ;FI"-HTTPOK                             # 200;FI"
;FI"          ;FI"-HTTPCreated                        # 201;FI"
;FI"          ;FI"-HTTPAccepted                       # 202;FI"
;FI"          ;FI"-HTTPNonAuthoritativeInformation    # 203;FI"
;FI"          ;FI"-HTTPNoContent                      # 204;FI"
;FI"          ;FI"-HTTPResetContent                   # 205;FI"
;FI"          ;FI"-HTTPPartialContent                 # 206;FI"
;FI"      ;FI"-HTTPRedirection                    # 3xx;FI"
;FI"          ;FI"-HTTPMultipleChoice                 # 300;FI"
;FI"          ;FI"-HTTPMovedPermanently               # 301;FI"
;FI"          ;FI"-HTTPFound                          # 302;FI"
;FI"          ;FI"-HTTPSeeOther                       # 303;FI"
;FI"          ;FI"-HTTPNotModified                    # 304;FI"
;FI"          ;FI"-HTTPUseProxy                       # 305;FI"
;FI"          ;FI"-HTTPTemporaryRedirect              # 307;FI"
;FI"      ;FI"-HTTPClientError                    # 4xx;FI"
;FI"          ;FI"-HTTPBadRequest                     # 400;FI"
;FI"          ;FI"-HTTPUnauthorized                   # 401;FI"
;FI"          ;FI"-HTTPPaymentRequired                # 402;FI"
;FI"          ;FI"-HTTPForbidden                      # 403;FI"
;FI"          ;FI"-HTTPNotFound                       # 404;FI"
;FI"          ;FI"-HTTPMethodNotAllowed               # 405;FI"
;FI"          ;FI"-HTTPNotAcceptable                  # 406;FI"
;FI"          ;FI"-HTTPProxyAuthenticationRequired    # 407;FI"
;FI"          ;FI"-HTTPRequestTimeOut                 # 408;FI"
;FI"          ;FI"-HTTPConflict                       # 409;FI"
;FI"          ;FI"-HTTPGone                           # 410;FI"
;FI"          ;FI"-HTTPLengthRequired                 # 411;FI"
;FI"          ;FI"-HTTPPreconditionFailed             # 412;FI"
;FI"          ;FI"-HTTPRequestEntityTooLarge          # 413;FI"
;FI"          ;FI"-HTTPRequestURITooLong              # 414;FI"
;FI"          ;FI"-HTTPUnsupportedMediaType           # 415;FI"
;FI"          ;FI"-HTTPRequestedRangeNotSatisfiable   # 416;FI"
;FI"          ;FI"-HTTPExpectationFailed              # 417;FI"
;FI"      ;FI"-HTTPServerError                    # 5xx;FI"
;FI"          ;FI"-HTTPInternalServerError            # 500;FI"
;FI"          ;FI"-HTTPNotImplemented                 # 501;FI"
;FI"          ;FI"-HTTPBadGateway                     # 502;FI"
;FI"          ;FI"-HTTPServiceUnavailable             # 503;FI"
;FI"          ;FI"-HTTPGatewayTimeOut                 # 504;FI"
;FI"          ;FI"-HTTPVersionNotSupported            # 505;FI"
;FS;	;
i;I"!Switching Net::HTTP versions;Fo; o;;[I"AYou can use net/http.rb 1.1 features (bundled with Ruby 1.6);FI"?by calling HTTP.version_1_1. Calling Net::HTTP.version_1_2;FI"*allows you to use 1.2 features again.;Fo; o;;[I"	    ;FI"# example;FI"
;FI"	    ;FI">Net::HTTP.start {|http1| ...(http1 has 1.2 features)... };FI"
;FI"
;FI"	    ;FI"Net::HTTP.version_1_1;FI"
;FI"	    ;FI">Net::HTTP.start {|http2| ...(http2 has 1.1 features)... };FI"
;FI"
;FI"	    ;FI"Net::HTTP.version_1_2;FI"
;FI"	    ;FI">Net::HTTP.start {|http3| ...(http3 has 1.2 features)... };FI"
;Fo;;[I"&This function is NOT thread-safe.;FS;	;
i;I"What Is This Library?;Fo; o;;[	I"?This library provides your program functions to access WWW;FI"Bdocuments via HTTP, Hyper Text Transfer Protocol version 1.1.;FI",For details of HTTP, refer to [RFC2616];FI"+(http://www.ietf.org/rfc/rfc2616.txt).;Fo; S;	;
i;I"Examples;Fo; S;	;
i;I"%Getting Document From WWW Server;Fo; o;;[I"!Example #1: Simple GET+print;Fo; o;;[I"	    ;FI"require 'net/http';FI"
;FI"	    ;FI"9Net::HTTP.get_print 'www.example.com', '/index.html';FI"
;Fo;;[I"(Example #2: Simple GET+print by URL;Fo; o;;[I"	    ;FI"require 'net/http';FI"
;FI"	    ;FI"require 'uri';FI"
;FI"	    ;FI"GNet::HTTP.get_print URI.parse('http://www.example.com/index.html');FI"
;Fo;;[I"'Example #3: More generic GET+print;Fo; o;;[I"	    ;FI"require 'net/http';FI"
;FI"	    ;FI"require 'uri';FI"
;FI"
;FI"	    ;FI"9url = URI.parse('http://www.example.com/index.html');FI"
;FI"	    ;FI"6res = Net::HTTP.start(url.host, url.port) {|http|;FI"
;FI"      ;FI"http.get('/index.html');FI"
;FI"	    ;FI"};FI"
;FI"	    ;FI"puts res.body;FI"
;Fo;;[I"'Example #4: More generic GET+print;Fo; o;;[I"	    ;FI"require 'net/http';FI"
;FI"
;FI"	    ;FI"9url = URI.parse('http://www.example.com/index.html');FI"
;FI"	    ;FI"'req = Net::HTTP::Get.new(url.path);FI"
;FI"	    ;FI"6res = Net::HTTP.start(url.host, url.port) {|http|;FI"
;FI"      ;FI"http.request(req);FI"
;FI"	    ;FI"};FI"
;FI"	    ;FI"puts res.body;FI"
;FS;	;
i;I"Posting Form Data;Fo; o;;[ZI"	    ;FI"require 'net/http';FI"
;FI"	    ;FI"require 'uri';FI"
;FI"
;FI"	    ;FI"#1: Simple POST;FI"
;FI"	    ;FI"Nres = Net::HTTP.post_form(URI.parse('http://www.example.com/search.cgi'),;FI"
;FI"#                              ;FI"${'q' => 'ruby', 'max' => '50'});FI"
;FI"	    ;FI"puts res.body;FI"
;FI"
;FI"	    ;FI"'#2: POST with basic authentication;FI"
;FI"	    ;FI"Vres = Net::HTTP.post_form(URI.parse('http://jack:pass@www.example.com/todo.cgi'),;FI"
;FI"-                                        ;FI"{'from' => '2005-01-01',;FI"
;FI".                                         ;FI"'to' => '2005-03-31'});FI"
;FI"	    ;FI"puts res.body;FI"
;FI"
;FI"	    ;FI"#3: Detailed control;FI"
;FI"	    ;FI"7url = URI.parse('http://www.example.com/todo.cgi');FI"
;FI"	    ;FI"(req = Net::HTTP::Post.new(url.path);FI"
;FI"	    ;FI""req.basic_auth 'jack', 'pass';FI"
;FI"	    ;FI"Kreq.set_form_data({'from' => '2005-01-01', 'to' => '2005-03-31'}, ';');FI"
;FI"	    ;FI"Nres = Net::HTTP.new(url.host, url.port).start {|http| http.request(req) };FI"
;FI"	    ;FI"case res;FI"
;FI"	    ;FI"0when Net::HTTPSuccess, Net::HTTPRedirection;FI"
;FI"      ;FI"	# OK;FI"
;FI"	    ;FI"	else;FI"
;FI"      ;FI"res.error!;FI"
;FI"	    ;FI"end;FI"
;FI"
;FI"	    ;FI"#4: Multiple values;FI"
;FI"	    ;FI"Nres = Net::HTTP.post_form(URI.parse('http://www.example.com/search.cgi'),;FI"
;FI"#                              ;FI".{'q' => ['ruby', 'perl'], 'max' => '50'});FI"
;FI"	    ;FI"puts res.body;FI"
;FS;	;
i;I"Accessing via Proxy;Fo; o;;[I":Net::HTTP.Proxy creates http proxy class. It has same;FI"=methods of Net::HTTP but its instances always connect to;FI""proxy, instead of given host.;Fo; o;;[I"	    ;FI"require 'net/http';FI"
;FI"
;FI"	    ;FI"#proxy_addr = 'your.proxy.host';FI"
;FI"	    ;FI"proxy_port = 8080;FI"
;FI"            ;FI":;FI"
;FI"	    ;FI"NNet::HTTP::Proxy(proxy_addr, proxy_port).start('www.example.com') {|http|;FI"
;FI"      ;FI"-# always connect to your.proxy.addr:8080;FI"
;FI"            ;FI":;FI"
;FI"	    ;FI"};FI"
;Fo;;[I"KSince Net::HTTP.Proxy returns Net::HTTP itself when proxy_addr is nil,;FI"<there's no need to change code if there's proxy or not.;Fo; o;;[I"JThere are two additional parameters in Net::HTTP.Proxy which allow to;FI"*specify proxy user name and password:;Fo; o;;[I"	    ;FI"QNet::HTTP::Proxy(proxy_addr, proxy_port, proxy_user = nil, proxy_pass = nil);FI"
;Fo;;[I"AYou may use them to work with authorization-enabled proxies:;Fo; o;;['I"	    ;FI"require 'net/http';FI"
;FI"	    ;FI"require 'uri';FI"
;FI"
;FI"	    ;FI"#proxy_host = 'your.proxy.host';FI"
;FI"	    ;FI"proxy_port = 8080;FI"
;FI"	    ;FI"'uri = URI.parse(ENV['http_proxy']);FI"
;FI"	    ;FI"Eproxy_user, proxy_pass = uri.userinfo.split(/:/) if uri.userinfo;FI"
;FI"	    ;FI"-Net::HTTP::Proxy(proxy_host, proxy_port,;FI"
;FI"                     ;FI"=proxy_user, proxy_pass).start('www.example.com') {|http|;FI"
;FI"      ;FI"S# always connect to your.proxy.addr:8080 using specified username and password;FI"
;FI"            ;FI":;FI"
;FI"	    ;FI"};FI"
;Fo;;[I"FNote that net/http never rely on HTTP_PROXY environment variable.;FI"1If you want to use proxy, set it explicitly.;Fo; S;	;
i;I"Following Redirection;Fo; o;;[2I"	    ;FI"require 'net/http';FI"
;FI"	    ;FI"require 'uri';FI"
;FI"
;FI"	    ;FI"#def fetch(uri_str, limit = 10);FI"
;FI"      ;FI"*# You should choose better exception.;FI"
;FI"      ;FI"@raise ArgumentError, 'HTTP redirect too deep' if limit == 0;FI"
;FI"
;FI"      ;FI":response = Net::HTTP.get_response(URI.parse(uri_str));FI"
;FI"      ;FI"case response;FI"
;FI"      ;FI",when Net::HTTPSuccess     then response;FI"
;FI"      ;FI"Jwhen Net::HTTPRedirection then fetch(response['location'], limit - 1);FI"
;FI"      ;FI"	else;FI"
;FI"        ;FI"response.error!;FI"
;FI"      ;FI"end;FI"
;FI"	    ;FI"end;FI"
;FI"
;FI"	    ;FI",print fetch('http://www.ruby-lang.org');FI"
;Fo;;[	I"GNet::HTTPSuccess and Net::HTTPRedirection is a HTTPResponse class.;FI"DAll HTTPResponse objects belong to its own response class which;FI"Bindicate HTTP result status. For details of response classes,;FI")see section "HTTP Response Classes".;Fo; S;	;
i;I"Basic Authentication;Fo; o;;[I"	    ;FI"require 'net/http';FI"
;FI"
;FI"	    ;FI"/Net::HTTP.start('www.example.com') {|http|;FI"
;FI"      ;FI"2req = Net::HTTP::Get.new('/secret-page.html');FI"
;FI"      ;FI")req.basic_auth 'account', 'password';FI"
;FI"      ;FI"!response = http.request(req);FI"
;FI"      ;FI"print response.body;FI"
;FI"	    ;FI"};FI"
;FS;	;
i;I"HTTP Request Classes;Fo; o;;[I"*Here is HTTP request class hierarchy.;Fo; o;;[2I"  ;FI"Net::HTTPRequest;FI"
;FI"      ;FI"Net::HTTP::Get;FI"
;FI"      ;FI"Net::HTTP::Head;FI"
;FI"      ;FI"Net::HTTP::Post;FI"
;FI"      ;FI"Net::HTTP::Put;FI"
;FI"      ;FI"Net::HTTP::Proppatch;FI"
;FI"      ;FI"Net::HTTP::Lock;FI"
;FI"      ;FI"Net::HTTP::Unlock;FI"
;FI"      ;FI"Net::HTTP::Options;FI"
;FI"      ;FI"Net::HTTP::Propfind;FI"
;FI"      ;FI"Net::HTTP::Delete;FI"
;FI"      ;FI"Net::HTTP::Move;FI"
;FI"      ;FI"Net::HTTP::Copy;FI"
;FI"      ;FI"Net::HTTP::Mkcol;FI"
;FI"      ;FI"Net::HTTP::Trace;FI"
;FS;	;
i;I"HTTP Response Classes;Fo; o;;[I"+Here is HTTP response class hierarchy.;FI"+All classes are defined in Net module.;Fo; o;;[�I"  ;FI"HTTPResponse;FI"
;FI"      ;FI"HTTPUnknownResponse;FI"
;FI"      ;FI"-HTTPInformation                    # 1xx;FI"
;FI"          ;FI"-HTTPContinue                       # 100;FI"
;FI"          ;FI"-HTTPSwitchProtocol                 # 101;FI"
;FI"      ;FI"-HTTPSuccess                        # 2xx;FI"
;FI"          ;FI"-HTTPOK                             # 200;FI"
;FI"          ;FI"-HTTPCreated                        # 201;FI"
;FI"          ;FI"-HTTPAccepted                       # 202;FI"
;FI"          ;FI"-HTTPNonAuthoritativeInformation    # 203;FI"
;FI"          ;FI"-HTTPNoContent                      # 204;FI"
;FI"          ;FI"-HTTPResetContent                   # 205;FI"
;FI"          ;FI"-HTTPPartialContent                 # 206;FI"
;FI"      ;FI"-HTTPRedirection                    # 3xx;FI"
;FI"          ;FI"-HTTPMultipleChoice                 # 300;FI"
;FI"          ;FI"-HTTPMovedPermanently               # 301;FI"
;FI"          ;FI"-HTTPFound                          # 302;FI"
;FI"          ;FI"-HTTPSeeOther                       # 303;FI"
;FI"          ;FI"-HTTPNotModified                    # 304;FI"
;FI"          ;FI"-HTTPUseProxy                       # 305;FI"
;FI"          ;FI"-HTTPTemporaryRedirect              # 307;FI"
;FI"      ;FI"-HTTPClientError                    # 4xx;FI"
;FI"          ;FI"-HTTPBadRequest                     # 400;FI"
;FI"          ;FI"-HTTPUnauthorized                   # 401;FI"
;FI"          ;FI"-HTTPPaymentRequired                # 402;FI"
;FI"          ;FI"-HTTPForbidden                      # 403;FI"
;FI"          ;FI"-HTTPNotFound                       # 404;FI"
;FI"          ;FI"-HTTPMethodNotAllowed               # 405;FI"
;FI"          ;FI"-HTTPNotAcceptable                  # 406;FI"
;FI"          ;FI"-HTTPProxyAuthenticationRequired    # 407;FI"
;FI"          ;FI"-HTTPRequestTimeOut                 # 408;FI"
;FI"          ;FI"-HTTPConflict                       # 409;FI"
;FI"          ;FI"-HTTPGone                           # 410;FI"
;FI"          ;FI"-HTTPLengthRequired                 # 411;FI"
;FI"          ;FI"-HTTPPreconditionFailed             # 412;FI"
;FI"          ;FI"-HTTPRequestEntityTooLarge          # 413;FI"
;FI"          ;FI"-HTTPRequestURITooLong              # 414;FI"
;FI"          ;FI"-HTTPUnsupportedMediaType           # 415;FI"
;FI"          ;FI"-HTTPRequestedRangeNotSatisfiable   # 416;FI"
;FI"          ;FI"-HTTPExpectationFailed              # 417;FI"
;FI"      ;FI"-HTTPServerError                    # 5xx;FI"
;FI"          ;FI"-HTTPInternalServerError            # 500;FI"
;FI"          ;FI"-HTTPNotImplemented                 # 501;FI"
;FI"          ;FI"-HTTPBadGateway                     # 502;FI"
;FI"          ;FI"-HTTPServiceUnavailable             # 503;FI"
;FI"          ;FI"-HTTPGatewayTimeOut                 # 504;FI"
;FI"          ;FI"-HTTPVersionNotSupported            # 505;FI"
;FS;	;
i;I"!Switching Net::HTTP versions;Fo; o;;[I"AYou can use net/http.rb 1.1 features (bundled with Ruby 1.6);FI"?by calling HTTP.version_1_1. Calling Net::HTTP.version_1_2;FI"*allows you to use 1.2 features again.;Fo; o;;[I"	    ;FI"# example;FI"
;FI"	    ;FI">Net::HTTP.start {|http1| ...(http1 has 1.2 features)... };FI"
;FI"
;FI"	    ;FI"Net::HTTP.version_1_1;FI"
;FI"	    ;FI">Net::HTTP.start {|http2| ...(http2 has 1.1 features)... };FI"
;FI"
;FI"	    ;FI"Net::HTTP.version_1_2;FI"
;FI"	    ;FI">Net::HTTP.start {|http3| ...(http3 has 1.2 features)... };FI"
;Fo;;[I"&This function is NOT thread-safe.;F[[I"address;FI"RR;F[I"close_on_empty_response;FI"	RWRW;F[I"open_timeout;FI"	RWRW;F[I"	port;FI"RR;F[I"proxy_address;FI"RR;F[I"proxy_pass;FI"RR;F[I"proxy_port;FI"RR;F[I"proxy_user;FI"RR;F[I"read_timeout;FI"RR;F[[I"SSL_ATTRIBUTES;Fo;;[ [I"SSL_ATTRIBUTES;Fo;;[ [ [[I"
class;F[[:public[I"
Proxy;FI"default_port;FI"get;FI"get_print;FI"get_response;FI"http_default_port;FI"https_default_port;FI"is_version_1_1?;FI"is_version_1_2?;FI"new;FI"newobj;FI"post_form;FI"proxy_class?;FI"
start;FI"version_1_1;FI"version_1_1?;FI"version_1_2;FI"version_1_2?;F[:protected[ [:private[ [I"instance;F[[;[:I"D;FI"active?;FI"addr_port;FI"begin_transport;FI"conn_address;FI"conn_port;FI"connect;FI"	copy;FI"delete;FI"do_finish;FI"do_start;FI"edit_path;FI"end_transport;FI"finish;FI"get;FI"	get2;FI"	head;FI"
head2;FI"inspect;FI"keep_alive?;FI"	lock;FI"
mkcol;FI"	move;FI"on_connect;FI"options;FI"peer_cert;FI"	post;FI"
post2;FI"propfind;FI"proppatch;FI"proxy?;FI"proxy_address;FI"proxy_pass;FI"proxy_port;FI"proxy_user;FI"proxyaddr;FI"proxyport;FI"read_timeout=;FI"request;FI"request_get;FI"request_head;FI"request_post;FI"send_request;FI"set_debug_output;FI"sspi_auth;FI"sspi_auth?;FI"
start;FI"started?;FI"
trace;FI"transport_request;FI"unlock;FI"use_ssl=;FI"use_ssl?;F[;[ [;[I"D;FI"addr_port;FI"begin_transport;FI"conn_address;FI"conn_port;FI"connect;FI"do_finish;FI"do_start;FI"edit_path;FI"end_transport;FI"keep_alive?;FI"on_connect;FI"sspi_auth;FI"sspi_auth?;FI"transport_request;F