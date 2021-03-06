U:RDoc::AnyMethod[iI"new:EFI"CGI::Session::new;FT:publico:RDoc::Markup::Document:@parts[o:RDoc::Markup::Paragraph;	[I"4Create a new CGI::Session object for +request+.;Fo:RDoc::Markup::BlankLine o;
;	[	I">+request+ is an instance of the +CGI+ class (see cgi.rb).;FI"8+option+ is a hash of options for initialising this;FI"6CGI::Session instance.  The following options are;FI"recognised:;Fo; o:RDoc::Markup::List:
@type:	NOTE:@items[	o:RDoc::Markup::ListItem:@labelI"session_key;F;	[o;
;	[I"0the parameter name used for the session id.;FI"Defaults to '_session_id'.;Fo;;I"session_id;F;	[o;
;	[	I"2the session id to use.  If not provided, then;FI"5it is retrieved from the +session_key+ parameter;FI"3of the request, or automatically generated for;FI"a new session.;Fo;;I"new_session;F;	[o;
;	[
I";if true, force creation of a new session.  If not set,;FI"4a new session is only created if none currently;FI"7exists.  If false, a new session is never created,;FI"6and if none currently exists and the +session_id+;FI"3option is not set, an ArgumentError is raised.;Fo;;I"database_manager;F;	[o;
;	[I"7the name of the class providing storage facilities;FI"5for session state persistence.  Built-in support;FI"/is provided for +FileStore+ (the default),;FI"&+MemoryStore+, and +PStore+ (from;FI"7cgi/session/pstore.rb).  See the documentation for;FI"$these classes for more details.;Fo; o;
;	[I"EThe following options are also recognised, but only apply if the;FI"&session id is stored in a cookie.;Fo; o;;;;[	o;;I"session_expires;F;	[o;
;	[I"/the time the current session expires, as a;FI";+Time+ object.  If not set, the session will terminate;FI"'when the user's browser is closed.;Fo;;I"session_domain;F;	[o;
;	[I"9the hostname domain for which this session is valid.;FI"8If not set, defaults to the hostname of the server.;Fo;;I"session_secure;F;	[o;
;	[I"7if +true+, this session will only work over HTTPS.;Fo;;I"session_path;F;	[o;
;	[I"7the path for which this session applies.  Defaults;FI"(to the directory of the CGI script.;Fo; o;
;	[I"M+option+ is also passed on to the session storage class initializer; see;FI"Ethe documentation for each session storage class for the options;FI"they support.;Fo; o;
;	[I"IThe retrieved or created session is automatically added to +request+;FI"Fas a cookie, and also to its +output_hidden+ table, which is used;FI"+to add hidden input elements to forms.;Fo; o;
;	[
I""*WARNING* the +output_hidden+;FI"Jfields are surrounded by a <fieldset> tag in HTML 4 generation, which;FI"Eis _not_ invisible on many browsers; you may wish to disable the;FI"8use of fieldsets with code similar to the following;FI"L(see http://blade.nagaokaut.ac.jp/cgi-bin/scat.rb/ruby/ruby-list/37805);Fo; o:RDoc::Markup::Verbatim;	[I"  ;FI"cgi = CGI.new("html4");FI"
;FI"  ;FI"class << cgi;FI"
;FI"      ;FI"undef_method :fieldset;FI"
;FI"  ;FI"end;F00[ I"(request, option={});F