U:RDoc::AnyMethod[iI"getpwnam:EFI"Etc::getpwnam;FT:publico:RDoc::Markup::Document:@parts[
o:RDoc::Markup::Paragraph;	[I"PReturns the /etc/passwd information for the user with specified login name.;Fo:RDoc::Markup::BlankLine o;
;	[I"LThe information is returned as a Struct::Passwd; see getpwent above for;FI"details.;Fo; o;
;	[I"Ie.g.  * Etc.getpwnam('root') -> #<struct Struct::Passwd name="root",;FI"Kpasswd="x", uid=0, gid=0, gecos="root",dir="/root", shell="/bin/bash">;F00[ I"	(p1);F