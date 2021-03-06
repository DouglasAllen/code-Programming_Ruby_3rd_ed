U:RDoc::AnyMethod[iI"	open:EFI"OpenURI::OpenRead#open;FF:publico:RDoc::Markup::Document:@parts[o:RDoc::Markup::Paragraph;	[I"GOpenURI::OpenRead#open provides `open' for URI::HTTP and URI::FTP.;Fo:RDoc::Markup::BlankLine o;
;	[I":OpenURI::OpenRead#open takes optional 3 arguments as:;FI"FOpenURI::OpenRead#open([mode [, perm]] [, options]) [{|io| ... }];Fo; o;
;	[I"+`mode', `perm' is same as Kernel#open.;Fo; o;
;	[	I"MHowever, `mode' must be read mode because OpenURI::OpenRead#open doesn't;FI"support write mode (yet).;FI"GAlso `perm' is just ignored because it is meaningful only for file;FI"creation.;Fo; o;
;	[I"`options' must be a hash.;Fo; o;
;	[I"HEach pairs which key is a string in the hash specify a extra header;FI"field for HTTP.;FI"3I.e. it is ignored for FTP without HTTP proxy.;Fo; o;
;	[I">The hash may include other options which key is a symbol:;Fo; o:RDoc::Markup::List:
@type:
LABEL:@items[o:RDoc::Markup::ListItem:@labelI":proxy;F;	[	o;
;	[I"Synopsis:;Fo:RDoc::Markup::Verbatim;	[I"  ;FI"+:proxy => "http://proxy.foo.com:8000/";FI"
;FI"  ;FI"6:proxy => URI.parse("http://proxy.foo.com:8000/");FI"
;FI"  ;FI":proxy => true;FI"
;FI"  ;FI":proxy => false;FI"
;FI"  ;FI":proxy => nil;FI"
;Fo;
;	[I"DIf :proxy option is specified, the value should be String, URI,;FI"boolean or nil.;FI"=When String or URI is given, it is treated as proxy URI.;FI">When true is given or the option itself is not specified,;FI"5environment variable `scheme_proxy' is examined.;FI"6`scheme' is replaced by `http', `https' or `ftp'.;FI"JWhen false or nil is given, the environment variables are ignored and;FI"2connection will be made to a server directly.;Fo; o;;I"%:proxy_http_basic_authentication;F;	[o;
;	[I"Synopsis:;Fo;;	[I"  ;FI"g:proxy_http_basic_authentication => ["http://proxy.foo.com:8000/", "proxy-user", "proxy-password"];FI"
;FI"  ;FI"r:proxy_http_basic_authentication => [URI.parse("http://proxy.foo.com:8000/"), "proxy-user", "proxy-password"];FI"
;Fo;
;	[	I"QIf :proxy option is specified, the value should be an Array with 3 elements.;FI"KIt should contain a proxy URI, a proxy user name and a proxy password.;FI"5The proxy URI should be a String, an URI or nil.;FI"9The proxy user name and password should be a String.;Fo; o;
;	[I"DIf nil is given for the proxy URI, this option is just ignored.;Fo; o;
;	[I"AIf :proxy and :proxy_http_basic_authentication is specified,;FI"ArgumentError is raised.;Fo; o;;I":http_basic_authentication;F;	[	o;
;	[I"Synopsis:;Fo;;	[I"  ;FI"1:http_basic_authentication=>[user, password];FI"
;Fo;
;	[	I"0If :http_basic_authentication is specified,;FI";the value should be an array which contains 2 strings:;FI"username and password.;FI"BIt is used for HTTP Basic authentication defined by RFC 2617.;Fo; o;;I":content_length_proc;F;	[o;
;	[I"Synopsis:;Fo;;	[I"  ;FI";:content_length_proc => lambda {|content_length| ... };FI"
;Fo;
;	[I"LIf :content_length_proc option is specified, the option value procedure;FI"1is called before actual transfer is started.;FI"EIt takes one argument which is expected content length in bytes.;Fo; o;
;	[I"GIf two or more transfer is done by HTTP redirection, the procedure;FI",is called only one for a last transfer.;Fo; o;
;	[I"JWhen expected content length is unknown, the procedure is called with;FI"	nil.;FI"BIt is happen when HTTP response has no Content-Length header.;Fo; o;;I":progress_proc;F;	[o;
;	[I"Synopsis:;Fo;;	[I"  ;FI"*:progress_proc => lambda {|size| ...};FI"
;Fo;
;	[I"GIf :progress_proc option is specified, the proc is called with one;FI"Gargument each time when `open' gets content fragment from network.;FI"KThe argument `size' `size' is a accumulated transferred size in bytes.;Fo; o;
;	[I"GIf two or more transfer is done by HTTP redirection, the procedure;FI",is called only one for a last transfer.;Fo; o;
;	[I"H:progress_proc and :content_length_proc are intended to be used for;FI"progress bar.;FI"JFor example, it can be implemented as follows using Ruby/ProgressBar.;Fo; o;;	[&I"  ;FI"pbar = nil;FI"
;FI"  ;FI"open("http://...",;FI"
;FI"	    ;FI"(:content_length_proc => lambda {|t|;FI"
;FI"      ;FI"if t && 0 < t;FI"
;FI"        ;FI"%pbar = ProgressBar.new("...", t);FI"
;FI"        ;FI"pbar.file_transfer_mode;FI"
;FI"      ;FI"end;FI"
;FI"	    ;FI"},;FI"
;FI"	    ;FI"":progress_proc => lambda {|s|;FI"
;FI"      ;FI"pbar.set s if pbar;FI"
;FI"	    ;FI"}) {|f| ... };FI"
;Fo;;I":read_timeout;F;	[	o;
;	[I"Synopsis:;Fo;;	[I"  ;FI"(:read_timeout=>nil     (no timeout);FI"
;FI"  ;FI"':read_timeout=>10      (10 second);FI"
;Fo;
;	[I"K:read_timeout option specifies a timeout of read for http connections.;Fo; o;;I":ssl_ca_cert;F;	[	o;
;	[I"Synopsis:;Fo;;	[I"  ;FI":ssl_ca_cert=>filename;FI"
;Fo;
;	[I"<:ssl_ca_cert is used to specify CA certificate for SSL.;FI"7If it is given, default certificates are not used.;Fo; o;;I":ssl_verify_mode;F;	[	o;
;	[I"Synopsis:;Fo;;	[I"  ;FI":ssl_verify_mode=>mode;FI"
;Fo;
;	[I"=:ssl_verify_mode is used to specify openssl verify mode.;Fo; o;
;	[I"LOpenURI::OpenRead#open returns an IO like object if block is not given.;FI"IOtherwise it yields the IO object and return the value of the block.;FI"2The IO object is extended with OpenURI::Meta.;Fo; o;;;;[o;;I":ftp_active_mode;F;	[o;
;	[I"Synopsis:;Fo;;	[I"  ;FI":ftp_active_mode=>bool;FI"
;Fo;
;	[I"<:ftp_active_mode=>true is used to make ftp active mode.;FI"?Note that the active mode is default in Ruby 1.8 or prior.;FI"+Ruby 1.9 uses passive mode by default.;Fo; o;;;;[o;;I":redirect;F;	[o;
;	[I"Synopsis:;Fo;;	[I"  ;FI":redirect=>bool;FI"
;Fo;
;	[	I"?:redirect=>false is used to disable HTTP redirects at all.;FI";OpenURI::HTTPRedirect exception raised on redirection.;FI"It is true by default.;FI"CThe true means redirections between http and ftp is permitted.;F00[ I"(*rest, &block);F