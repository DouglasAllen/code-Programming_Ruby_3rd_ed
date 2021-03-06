U:RDoc::AnyMethod[iI"
spawn:EFI"PTY::spawn;FT:publico:RDoc::Markup::Document:@parts[o:RDoc::Markup::Paragraph;	[I";spawns the specified command on a newly allocated pty.;Fo:RDoc::Markup::BlankLine o;
;	[I"IThe command's controlling tty is set to the slave device of the pty.;FI"LAlso its standard input/output/error is redirected to the slave device.;Fo; o;
;	[
I".PTY.spawn returns two IO objects and PID.;FI"*PID is the process ID of the command.;FI"FThe two IO objects are connected to the master device of the pty.;FI"3The first IO object is opened as read mode and;FI"(The second is opened as write mode.;Fo; o;
;	[I"<If a block is given, two IO objects and PID is yielded.;FI"�PTY.spawn(command...) {|r, w, pid| ... }   => nil
PTY.spawn(command...)                      => r, w, pid
PTY.getpty(command...) {|r, w, pid| ... }  => nil
PTY.getpty(command...)                     => r, w, pid
;F0[ I"
(...);F