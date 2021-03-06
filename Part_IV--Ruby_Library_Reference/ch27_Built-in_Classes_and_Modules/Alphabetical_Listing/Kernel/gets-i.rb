U:RDoc::AnyMethod[iI"	gets:EFI"Kernel#gets;FF:publico:RDoc::Markup::Document:@parts[o:RDoc::Markup::Paragraph;	[I"IReturns (and assigns to <code>$_</code>) the next line from the list;FI"Gof files in +ARGV+ (or <code>$*</code>), or from standard input if;FI"Fno files are present on the command line. Returns +nil+ at end of;FI"Dfile. The optional argument specifies the record separator. The;FI"Hseparator is included with the contents of each record. A separator;FI"Dof +nil+ reads the entire contents, and a zero-length separator;FI"Breads the input one paragraph at a time, where paragraphs are;FI"Fdivided by two consecutive newlines.  If the first argument is an;FI"Hinteger, or optional second argument is given, the returning string;FI"Dwould not be longer than the given value in bytes.  If multiple;FI"Hfilenames are present in +ARGV+, +gets(nil)+ will read the contents;FI"one file at a time.;Fo:RDoc::Markup::BlankLine o:RDoc::Markup::Verbatim;	[I"   ;FI"ARGV << "testfile";FI"
;FI"   ;FI"print while gets;FI"
;Fo;
;	[I"<em>produces:</em>;Fo; o;;	[I"   ;FI"This is line one;FI"
;FI"   ;FI"This is line two;FI"
;FI"   ;FI"This is line three;FI"
;FI"   ;FI"And so on...;FI"
;Fo;
;	[I"BThe style of programming using <code>$_</code> as an implicit;FI"?parameter is gradually losing favor in the Ruby community.;FI"hgets(sep=$/)    -> string or nil
gets(limit)     -> string or nil
gets(sep,limit) -> string or nil
;F0[ I"
(...);F