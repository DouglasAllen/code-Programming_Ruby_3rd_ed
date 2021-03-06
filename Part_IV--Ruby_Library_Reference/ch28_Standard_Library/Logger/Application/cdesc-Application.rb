U:RDoc::NormalClass[i I"Application:EFI"Logger::Application;FI"Object;Fo:RDoc::Markup::Document:@parts[S:RDoc::Markup::Heading:
leveli:	textI"Description;Fo:RDoc::Markup::BlankLine o:RDoc::Markup::Paragraph;[I"<Application -- Add logging support to your application.;Fo; S;	;
i;I"
Usage;Fo; o:RDoc::Markup::List:
@type:NUMBER:@items[o:RDoc::Markup::ListItem:@label0;[o;;[I"@Define your application class as a sub-class of this class.;Fo;;0;[o;;[I";Override 'run' method in your class to do many things.;Fo;;0;[o;;[I"'Instantiate it and invoke 'start'.;Fo; S;	;
i;I"Example;Fo; o:RDoc::Markup::Verbatim;[-I"  ;FI"class FooApp < Application;FI"
;FI"	    ;FI"=def initialize(foo_app, application_specific, arguments);FI"
;FI"      ;FI"/super('FooApp') # Name of the application.;FI"
;FI"	    ;FI"end;FI"
;FI"
;FI"	    ;FI"def run;FI"
;FI"      ;FI"...;FI"
;FI"      ;FI"'log(WARN, 'warning', 'my_method1');FI"
;FI"      ;FI"...;FI"
;FI"      ;FI"*@log.error('my_method2') { 'Error!' };FI"
;FI"      ;FI"...;FI"
;FI"	    ;FI"end;FI"
;FI"  ;FI"end;FI"
;FI"
;FI"  ;FI"$status = FooApp.new(....).start;F[[I"appname;FI"R;F[ [[I"Logger::Severity;Fo;;[ [[I"
class;F[[:public[I"new;F[:protected[ [:private[ [I"instance;F[[;[I"level=;FI"log;FI"	log=;FI"logger;FI"logger=;FI"set_log;FI"
start;F[;[ [;[I"run;F