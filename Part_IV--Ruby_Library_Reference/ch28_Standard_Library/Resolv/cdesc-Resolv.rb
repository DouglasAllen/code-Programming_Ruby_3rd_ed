U:RDoc::NormalClass[i I"Resolv:EF@I"Object;Fo:RDoc::Markup::Document:@parts[o:RDoc::Markup::Paragraph;[I"OResolv is a thread-aware DNS resolver library written in Ruby.  Resolv can;FI"Ohandle multiple DNS requests concurrently without blocking the entire ruby;FI"interpreter.;Fo:RDoc::Markup::BlankLine o;	;[I"ISee also resolv-replace.rb to replace the libc resolver with Resolv.;Fo;
 o;	;[I"LResolv can look up various DNS resources using the DNS module directly.;Fo;
 o;	;[I"Examples:;Fo;
 o:RDoc::Markup::Verbatim;[I"  ;FI",p Resolv.getaddress "www.ruby-lang.org";FI"
;FI"  ;FI"'p Resolv.getname "210.251.121.214";FI"
;FI"
;FI"  ;FI"Resolv::DNS.open do |dns|;FI"
;FI"	    ;FI"Nress = dns.getresources "www.ruby-lang.org", Resolv::DNS::Resource::IN::A;FI"
;FI"	    ;FI"!p ress.map { |r| r.address };FI"
;FI"	    ;FI"Kress = dns.getresources "ruby-lang.org", Resolv::DNS::Resource::IN::MX;FI"
;FI"	    ;FI"7p ress.map { |r| [r.exchange.to_s, r.preference] };FI"
;FI"  ;FI"end;FI"
;FS:RDoc::Markup::Heading:
leveli:	textI"	Bugs;Fo;
 o:RDoc::Markup::List:
@type:BULLET:@items[o:RDoc::Markup::ListItem:@label0;[o;	;[I"NIS is not supported.;Fo;;0;[o;	;[I")/etc/nsswitch.conf is not supported.;F[ [[I"DefaultResolver;Fo;;[o;	;[I"6Default resolver to use for Resolv class methods.;F[I"AddressRegex;Fo;;[o;	;[I"5Address Regexp to use for matching IP addresses.;F[ [[I"
class;F[[:public[I"each_address;FI"each_name;FI"getaddress;FI"getaddresses;FI"getname;FI"getnames;FI"new;F[:protected[ [:private[ [I"instance;F[[;[I"each_address;FI"each_name;FI"getaddress;FI"getaddresses;FI"getname;FI"getnames;F[;[ [;[ 