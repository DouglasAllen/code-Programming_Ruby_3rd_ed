U:RDoc::NormalClass[i I"Session:EFI"CGI::Session;FI"Object;Fo:RDoc::Markup::Document:@parts[-o:RDoc::Markup::Paragraph;[I"HClass representing an HTTP session.  See documentation for the file;FI"9cgi/session.rb for an introduction to HTTP sessions.;Fo:RDoc::Markup::BlankLine S:RDoc::Markup::Heading:
leveli:	textI"Lifecycle;Fo;
 o;	;[
I"GA CGI::Session instance is created from a CGI object.  By default,;FI"Jthis CGI::Session instance will start a new session if none currently;FI"Hexists, or continue the current session for this client if one does;FI"Eexist.  The +new_session+ option can be used to either always or;FI">never create a new session.  See #new() for more details.;Fo;
 o;	;[	I":#delete() deletes a session from session storage.  It;FI"Kdoes not however remove the session id from the client.  If the client;FI"Hmakes another request with the same id, the effect will be to start;FI"-a new session with the old session's id.;Fo;
 S;;i;I")Setting and retrieving session data.;Fo;
 o;	;[	I"IThe Session class associates data with a session as key-value pairs.;FI"HThis data can be set and retrieved by indexing the Session instance;FI"Eusing '[]', much the same as hashes (although other hash methods;FI"are not supported).;Fo;
 o;	;[I"BWhen session processing has been completed for a request, the;FI"Bsession should be closed using the close() method.  This will;FI"Bstore the session's state to persistent storage.  If you want;FI"?to store the session's state to persistent storage without;FI"Efinishing session processing for this request, call the update();FI"method.;Fo;
 S;;i;I"Storing session state;Fo;
 o;	;[I"IThe caller can specify what form of storage to use for the session's;FI"Gdata with the +database_manager+ option to CGI::Session::new.  The;FI"Lfollowing storage classes are provided as part of the standard library:;Fo;
 o:RDoc::Markup::List:
@type:	NOTE:@items[o:RDoc::Markup::ListItem:@labelI"CGI::Session::FileStore;F;[o;	;[I"4stores data as plain text in a flat file.  Only;FI"1works with String data.  This is the default;FI"storage type.;Fo;;I"CGI::Session::MemoryStore;F;[o;	;[I"0stores data in an in-memory hash.  The data;FI"2only persists for as long as the current ruby;FI"interpreter instance does.;Fo;;I"CGI::Session::PStore;F;[o;	;[I"3stores data in Marshalled format.  Provided by;FI"7cgi/session/pstore.rb.  Supports data of any type,;FI"7and provides file-locking and transaction support.;Fo;
 o;	;[I"FCustom storage types can also be created by defining a class with;FI"the following methods:;Fo;
 o:RDoc::Markup::Verbatim;[I"   ;FI"new(session, options);FI"
;FI"   ;FI"-restore  # returns hash of session data.;FI"
;FI"   ;FI"update;FI"
;FI"   ;FI"
close;FI"
;FI"   ;FI"delete;FI"
;Fo;	;[I"IChanging storage type mid-session does not work.  Note in particular;FI"Ithat by default the FileStore and PStore session data files have the;FI"Ksame name.  If your application switches from one to the other without;FI"1making sure that filenames will be different;FI"Fand clients still have old sessions lying around in cookies, then;FI"things will break nastily!;Fo;
 S;;i;I" Maintaining the session id.;Fo;
 o;	;[I"HMost session state is maintained on the server.  However, a session;FI"Gid must be passed backwards and forwards between client and server;FI"3to maintain a reference to this session state.;Fo;
 o;	;[I"HThe simplest way to do this is via cookies.  The CGI::Session class;FI"Jprovides transparent support for session id communication via cookies;FI"'if the client has cookies enabled.;Fo;
 o;	;[I"HIf the client has cookies disabled, the session id must be included;FI"Jas a parameter of all requests sent by the client to the server.  The;FI"LCGI::Session class in conjunction with the CGI class will transparently;FI"Fadd the session id as a hidden input field to all forms generated;FI"Iusing the CGI#form() HTML generation method.  No built-in support is;FI"Jprovided for other mechanisms, such as URL re-writing.  The caller is;FI"Bresponsible for extracting the session id from the session_id;FI"Iattribute and manually encoding it in URLs and adding it as a hidden;FI"Kinput to HTML forms created by other mechanisms.  Also, session expiry;FI""is not automatically handled.;Fo;
 S;;i;I"Examples of use;Fo;
 S;;i;I"Setting the user's name;Fo;
 o;;[:I"  ;FI"require 'cgi';FI"
;FI"  ;FI"require 'cgi/session';FI"
;FI"  ;FI"Erequire 'cgi/session/pstore'     # provides CGI::Session::PStore;FI"
;FI"
;FI"  ;FI"cgi = CGI.new("html4");FI"
;FI"
;FI"  ;FI"$session = CGI::Session.new(cgi,;FI"
;FI"      ;FI">'database_manager' => CGI::Session::PStore,  # use PStore;FI"
;FI"      ;FI"F'session_key' => '_rb_sess_id',              # custom session key;FI"
;FI"      ;FI"E'session_expires' => Time.now + 30 * 60,     # 30 minute timeout;FI"
;FI"      ;FI"A'prefix' => 'pstore_sid_')                   # PStore option;FI"
;FI"  ;FI"<if cgi.has_key?('user_name') and cgi['user_name'] != '';FI"
;FI"      ;FI"*# coerce to String: cgi[] returns the;FI"
;FI"      ;FI"-# string-like CGI::QueryExtension::Value;FI"
;FI"      ;FI"1session['user_name'] = cgi['user_name'].to_s;FI"
;FI"  ;FI" elsif !session['user_name'];FI"
;FI"      ;FI"#session['user_name'] = "guest";FI"
;FI"  ;FI"end;FI"
;FI"  ;FI"session.close;FI"
;FS;;i;I""Creating a new session safely;Fo;
 o;;[-I"  ;FI"require 'cgi';FI"
;FI"  ;FI"require 'cgi/session';FI"
;FI"
;FI"  ;FI"cgi = CGI.new("html4");FI"
;FI"
;FI"  ;FI";# We make sure to delete an old session if one exists,;FI"
;FI"  ;FI"=# not just to free resources, but to prevent the session;FI"
;FI"  ;FI"0# from being maliciously hijacked later on.;FI"
;FI"  ;FI"
begin;FI"
;FI"      ;FI"<session = CGI::Session.new(cgi, 'new_session' => false);FI"
;FI"      ;FI"session.delete;FI"
;FI"  ;FI".rescue ArgumentError  # if no old session;FI"
;FI"  ;FI"end;FI"
;FI"  ;FI";session = CGI::Session.new(cgi, 'new_session' => true);FI"
;FI"  ;FI"session.close;F[[I"new_session;FI"R;F[I"session_id;F@�[ [ [[I"
class;F[[:public[I"new;F[:protected[ [:private[ [I"instance;F[[;[
I"[];FI"[]=;FI"
close;FI"delete;FI"update;F[;[ [;[I"create_new_id;F