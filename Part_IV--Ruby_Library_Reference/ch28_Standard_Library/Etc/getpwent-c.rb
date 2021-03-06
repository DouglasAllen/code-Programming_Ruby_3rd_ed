U:RDoc::AnyMethod[iI"getpwent:EFI"Etc::getpwent;FT:publico:RDoc::Markup::Document:@parts[o:RDoc::Markup::Paragraph;	[I"OReturns an entry from the /etc/passwd file. The first time it is called it;FI"Mopens the file and returns the first entry; each successive call returns;FI"Dthe next entry, or nil if the end of the file has been reached.;Fo:RDoc::Markup::BlankLine o;
;	[I"BTo close the file when processing is complete, call endpwent.;Fo; o;
;	[I"0Each entry is returned as a Struct::Passwd:;Fo; o:RDoc::Markup::List:
@type:BULLET:@items[o:RDoc::Markup::ListItem:@label0;	[o;
;	[I"GPasswd#name contains the short login name of the user as a String.;Fo; o;;0;	[o;
;	[I"KPasswd#passwd contains the encrypted password of the user as a String.;FI"Jan 'x' is returned if shadow passwords are in use. An '*' is returned;FI"0if the user cannot log in using a password.;Fo; o;;0;	[o;
;	[I"?Passwd#uid contains the integer user ID (uid) of the user.;Fo; o;;0;	[o;
;	[I"PPasswd#gid contains the integer group ID (gid) of the user's primary group.;Fo; o;;0;	[o;
;	[I"KPasswd#gecos contains a longer String description of the user, such as;FI"Ia full name. Some Unix systems provide structured information in the;FI"/gecos field, but this is system-dependent.;Fo; o;;0;	[o;
;	[I"PPasswd#dir contains the path to the home directory of the user as a String.;Fo; o;;0;	[o;
;	[I"OPasswd#shell contains the path to the login shell of the user as a String.;F00[ I"();F