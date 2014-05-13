U:RDoc::AnyMethod[iI"
Proxy:EFI"Net::HTTP::Proxy;FT:publico:RDoc::Markup::Document:@parts[
o:RDoc::Markup::Paragraph;	[	I"!Creates an HTTP proxy class.;FI"CArguments are address/port of proxy host and username/password;FI"2if authorization on proxy server is required.;FI"=You can replace the HTTP class with created proxy class.;Fo:RDoc::Markup::BlankLine o;
;	[I"=If ADDRESS is nil, this method returns self (Net::HTTP).;Fo; o:RDoc::Markup::Verbatim;	[I"	    ;FI"# Example;FI"
;FI"	    ;FI">proxy_class = Net::HTTP::Proxy('proxy.example.com', 8080);FI"
;FI"                    ;FI":;FI"
;FI"	    ;FI"3proxy_class.start('www.ruby-lang.org') {|http|;FI"
;FI"      ;FI"$# connecting proxy.foo.org:8080;FI"
;FI"                    ;FI":;FI"
;FI"	    ;FI"};F00[ I"7(p_addr, p_port = nil, p_user = nil, p_pass = nil);F