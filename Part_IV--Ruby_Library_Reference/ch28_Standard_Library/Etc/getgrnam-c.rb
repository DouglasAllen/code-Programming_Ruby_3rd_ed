U:RDoc::AnyMethod[iI"getgrnam:EFI"Etc::getgrnam;FT:publico:RDoc::Markup::Document:@parts[
o:RDoc::Markup::Paragraph;	[I"MReturns information about the group with specified String name, as found;FI"in /etc/group.;Fo:RDoc::Markup::BlankLine o;
;	[I"KThe information is returned as a Struct::Group; see getgrent above for;FI"details.;Fo; o;
;	[I"He.g.  Etc.getgrnam('users') -> #<struct Struct::Group name="users",;FI"/passwd="x", gid=100, mem=["meta", "root"]>;F00[ I"	(p1);F