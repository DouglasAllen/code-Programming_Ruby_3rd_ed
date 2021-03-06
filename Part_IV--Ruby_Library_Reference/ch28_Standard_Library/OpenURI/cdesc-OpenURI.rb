U:RDoc::NormalModule[i I"OpenURI:EF@0o:RDoc::Markup::Document:@parts[	o:RDoc::Markup::Verbatim;[I" ;FI"KOpenURI is an easy-to-use wrapper for net/http, net/https and net/ftp.;FI"
;FS:RDoc::Markup::Heading:
leveli:	textI"Example;Fo:RDoc::Markup::BlankLine o;	;[~I" ;FI"LIt is possible to open http/https/ftp URL as usual like opening a file:;FI"
;FI"
;FI"   ;FI"+open("http://www.ruby-lang.org/") {|f|;FI"
;FI"
     ;FI" f.each_line {|line| p line};FI"
;FI"   ;FI"};FI"
;FI"
;FI" ;FI"NThe opened file has several methods for meta information as follows since;FI"
;FI" ;FI"%it is extended by OpenURI::Meta.;FI"
;FI"
;FI"   ;FI"-open("http://www.ruby-lang.org/en") {|f|;FI"
;FI"
     ;FI" f.each_line {|line| p line};FI"
;FI"
     ;FI"Rp f.base_uri         # <URI::HTTP:0x40e6ef2 URL:http://www.ruby-lang.org/en/>;FI"
;FI"
     ;FI"'p f.content_type     # "text/html";FI"
;FI"
     ;FI"(p f.charset          # "iso-8859-1";FI"
;FI"
     ;FI"p f.content_encoding # [];FI"
;FI"
     ;FI"8p f.last_modified    # Thu Dec 05 02:45:02 UTC 2002;FI"
;FI"   ;FI"};FI"
;FI"
;FI" ;FI"LAdditional header fields can be specified by an optional hash argument.;FI"
;FI"
;FI"   ;FI")open("http://www.ruby-lang.org/en/",;FI"
;FI"
     ;FI","User-Agent" => "Ruby/#{RUBY_VERSION}",;FI"
;FI"
     ;FI"!"From" => "foo@bar.invalid",;FI"
;FI"
     ;FI"3"Referer" => "http://www.ruby-lang.org/") {|f|;FI"
;FI"
     ;FI"
# ...;FI"
;FI"   ;FI"};FI"
;FI"
;FI" ;FI"LThe environment variables such as http_proxy, https_proxy and ftp_proxy;FI"
;FI" ;FI"=are in effect by default.  :proxy => nil disables proxy.;FI"
;FI"
;FI"   ;FI"Eopen("http://www.ruby-lang.org/en/raa.html", :proxy => nil) {|f|;FI"
;FI"
     ;FI"
# ...;FI"
;FI"   ;FI"};FI"
;FI"
;FI" ;FI"0URI objects can be opened in a similar way.;FI"
;FI"
;FI"   ;FI"4uri = URI.parse("http://www.ruby-lang.org/en/");FI"
;FI"   ;FI"uri.open {|f|;FI"
;FI"
     ;FI"
# ...;FI"
;FI"   ;FI"};FI"
;FI"
;FI" ;FI"NURI objects can be read directly. The returned string is also extended by;FI"
;FI" ;FI"OpenURI::Meta.;FI"
;FI"
;FI"   ;FI"str = uri.read;FI"
;FI"   ;FI"p str.base_uri;FI"
;FI"
;FI" ;FI"Author::;FI" ;FI" Tanaka Akira <akr@m17n.org>;F[ [[I"Options;Fo;;[ [ [[I"
class;F[[:public[ [:protected[ [:private[ [I"instance;F[[;[ [;[ [;[ 