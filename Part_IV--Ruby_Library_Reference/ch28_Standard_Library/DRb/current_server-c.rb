U:RDoc::AnyMethod[iI"current_server:EFI"DRb::current_server;FT:publico:RDoc::Markup::Document:@parts[
o:RDoc::Markup::Paragraph;	[I"Get the 'current' server.;Fo:RDoc::Markup::BlankLine o;
;	[
I"=In the context of execution taking place within the main;FI"Athread of a dRuby server (typically, as a result of a remote;FI";call on the server or one of its objects), the current;FI"=server is that server.  Otherwise, the current server is;FI"the primary server.;Fo; o;
;	[I"BIf the above rule fails to find a server, a DRbServerNotFound;FI"error is raised.;F00[ I"();F