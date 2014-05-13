U:RDoc::AnyMethod[iI"find_proxy:EFI"URI::Generic#find_proxy;FF:publico:RDoc::Markup::Document:@parts[
o:RDoc::Markup::Paragraph;	[	I"returns a proxy URI.;FI"MThe proxy URI is obtained from environment variables such as http_proxy,;FI"ftp_proxy, no_proxy, etc.;FI"2If there is no proper proxy, nil is returned.;Fo:RDoc::Markup::BlankLine o;
;	[I"LNote that capitalized variables (HTTP_PROXY, FTP_PROXY, NO_PROXY, etc.);FI"are examined too.;Fo; o;
;	[
I"NBut http_proxy and HTTP_PROXY is treated specially under CGI environment.;FI"9It's because HTTP_PROXY may be set by Proxy: header.;FI"So HTTP_PROXY is not used.;FI"Dhttp_proxy is not used too if the variable is case insensitive.;FI"(CGI_HTTP_PROXY can be used instead.;F00[ I"();F