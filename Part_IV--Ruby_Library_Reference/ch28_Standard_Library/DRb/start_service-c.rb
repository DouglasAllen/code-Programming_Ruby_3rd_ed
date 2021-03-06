U:RDoc::AnyMethod[iI"start_service:EFI"DRb::start_service;FT:publico:RDoc::Markup::Document:@parts[o:RDoc::Markup::Paragraph;	[I""Start a dRuby server locally.;Fo:RDoc::Markup::BlankLine o;
;	[I">The new dRuby server will become the primary server, even;FI"7if another server is currently the primary server.;Fo; o;
;	[I"9+uri+ is the URI for the server to bind to.  If nil,;FI"Bthe server will bind to random port on the default local host;FI"-name and use the default dRuby protocol.;Fo; o;
;	[I"<+front+ is the server's front object.  This may be nil.;Fo; o;
;	[I"@+config+ is the configuration for the new server.  This may;FI"be nil.;Fo; o;
;	[I"See DRbServer::new.;F00[ I"%(uri=nil, front=nil, config=nil);F