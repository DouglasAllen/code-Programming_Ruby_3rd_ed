U:RDoc::NormalClass[i I"DRbServer:EFI"DRb::DRbServer;FI"Object;Fo:RDoc::Markup::Document:@parts[
o:RDoc::Markup::Paragraph;[I".Class representing a drb server instance.;Fo:RDoc::Markup::BlankLine o;	;[I"IA DRbServer must be running in the local process before any incoming;FI"GdRuby calls can be accepted, or any local objects can be passed as;FI"JdRuby references to remote processes, even if those local objects are;FI"Inever actually called remotely. You do not need to start a DRbServer;FI"Ein the local process if you are only making outgoing dRuby calls;FI"#passing marshalled parameters.;Fo;
 o;	;[I"LUnless multiple servers are being used, the local DRbServer is normally;FI"*started by calling DRb.start_service.;F[
[I"config;FI"R;F[I"
front;FI"R;F[I"safe_level;FI"R;F[I"thread;FI"R;F[I"uri;FI"R;F[[I"INSECURE_METHOD;Fo;;[o;	;[I"List of insecure methods.;Fo;
 o;	;[I".These methods are not callable via dRuby.;F[ [[I"
class;F[[:public[I"default_acl;FI"default_argc_limit;FI"default_id_conv;FI"default_load_limit;FI"default_safe_level;FI"new;FI"verbose;FI"verbose=;F[:protected[ [:private[ [I"instance;F[[;[I"alive?;FI"check_insecure_method;FI"stop_service;FI"
to_id;FI"to_obj;FI"verbose;FI"verbose=;F[;[ [;[
I"any_to_s;FI"insecure_method?;FI"kill_sub_thread;FI"main_loop;FI"run;F