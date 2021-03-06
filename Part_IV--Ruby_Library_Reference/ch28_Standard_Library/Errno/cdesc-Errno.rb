U:RDoc::NormalModule[i I"
Errno:EF@0o:RDoc::Markup::Document:@parts[o:RDoc::Markup::Paragraph;[I"ERuby exception objects are subclasses of <code>Exception</code>.;FI"CHowever, operating systems typically report errors using plain;FI"Fintegers. Module <code>Errno</code> is created dynamically to map;FI"Cthese operating system errors to Ruby classes, with each error;FI"Hnumber generating its own subclass of <code>SystemCallError</code>.;FI"FAs the subclass is created in module <code>Errno</code>, its name;FI"%will start <code>Errno::</code>.;Fo:RDoc::Markup::BlankLine o;	;[
I"<The names of the <code>Errno::</code> classes depend on;FI"Ethe environment in which Ruby runs. On a typical Unix or Windows;FI";platform, there are <code>Errno</code> classes such as;FI"<<code>Errno::EACCES</code>, <code>Errno::EAGAIN</code>,;FI"*<code>Errno::EINTR</code>, and so on.;Fo;
 o;	;[I"AThe integer operating system error number corresponding to a;FI"8particular error is available as the class constant;FI"<<code>Errno::</code><em>error</em><code>::Errno</code>.;Fo;
 o:RDoc::Markup::Verbatim;[I"   ;FI""Errno::EACCES::Errno   #=> 13;FI"
;FI"   ;FI""Errno::EAGAIN::Errno   #=> 11;FI"
;FI"   ;FI"!Errno::EINTR::Errno    #=> 4;FI"
;Fo;	;[I"IThe full list of operating system errors on your particular platform;FI":are available as the constants of <code>Errno</code>.;Fo;
 o;;[I"   ;FI"LErrno.constants   #=> :E2BIG, :EACCES, :EADDRINUSE, :EADDRNOTAVAIL, ...;FI"
;FS:RDoc::Markup::Rule:weightio;	;[I".compat.rb -- cross platform compatibility;Fo;
 o;	;[	I"=Author: IPR -- Internet Programming with Ruby -- writers;FI"$Copyright (c) 2002 GOTOU Yuuzou;FI"JCopyright (c) 2002 Internet Programming with Ruby writers. All rights;FI"reserved.;Fo;
 o;	;[I"=$IPR: compat.rb,v 1.6 2002/10/01 17:16:32 gotoyuzo Exp $;F[ [ [ [[I"
class;F[[:public[ [:protected[ [:private[ [I"instance;F[[;[ [;[ [;[ 