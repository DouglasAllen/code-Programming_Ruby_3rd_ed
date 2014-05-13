U:RDoc::AnyMethod[iI"write_nonblock:EFI"StringIO#write_nonblock;FF:publico:RDoc::Markup::Document:@parts[o:RDoc::Markup::Paragraph;	[	I"IAppends the given string to the underlying buffer string of *strio*.;FI"EThe stream must be opened for writing.  If the argument is not a;FI"Fstring, it will be converted to a string using <code>to_s</code>.;FI"8Returns the number of bytes written.  See IO#write.;FI"Istrio.write(string)    -> integer
strio.syswrite(string) -> integer
;F0[ I"	(p1);F