U:RDoc::AnyMethod[iI"new:EFI"!CGI::Session::FileStore::new;FT:publico:RDoc::Markup::Document:@parts[o:RDoc::Markup::Paragraph;	[I"%Create a new FileStore instance.;Fo:RDoc::Markup::BlankLine o;
;	[I">This constructor is used internally by CGI::Session.  The;FI"6user does not generally need to call it directly.;Fo; o;
;	[	I">+session+ is the session for which this instance is being;FI"<created.  The session id must only contain alphanumeric;FI"<characters; automatically generated session ids observe;FI"this requirement.;Fo; o;
;	[I"<+option+ is a hash of options for the initializer.  The;FI"&following options are recognised:;Fo; o:RDoc::Markup::List:
@type:	NOTE:@items[o:RDoc::Markup::ListItem:@labelI"tmpdir;F;	[o;
;	[I"3the directory to use for storing the FileStore;FI"5file.  Defaults to Dir::tmpdir (generally "/tmp";FI"on Unix systems).;Fo;;I"prefix;F;	[o;
;	[I"8the prefix to add to the session id when generating;FI"4the filename for this session's FileStore file.;FI"Defaults to "cgi_sid_".;Fo;;I"suffix;F;	[o;
;	[I"8the prefix to add to the session id when generating;FI"4the filename for this session's FileStore file.;FI""Defaults to the empty string.;Fo; o;
;	[I"=This session's FileStore file will be created if it does;FI"%not exist, or opened if it does.;F00[ I"(session, option={});F