U:RDoc::AnyMethod[iI"children:EFI"Pathname#children;FF:publico:RDoc::Markup::Document:@parts[o:RDoc::Markup::Paragraph;	[
I"IReturns the children of the directory (files and subdirectories, not;FI"Jrecursive) as an array of Pathname objects.  By default, the returned;FI"Lpathnames will have enough information to access the files.  If you set;FI"N+with_directory+ to +false+, then the returned pathnames will contain the;FI"filename only.;Fo:RDoc::Markup::BlankLine o;
;	[I"For example:;Fo:RDoc::Markup::Verbatim;	[I"  ;FI"'pn = Pathname("/usr/lib/ruby/1.8");FI"
;FI"  ;FI"pn.children;FI"
;FI"      ;FI"2# -> [ Pathname:/usr/lib/ruby/1.8/English.rb,;FI"
;FI"             ;FI"'Pathname:/usr/lib/ruby/1.8/Env.rb,;FI"
;FI"             ;FI"0Pathname:/usr/lib/ruby/1.8/abbrev.rb, ... ];FI"
;FI"  ;FI"pn.children(false);FI"
;FI"      ;FI"K# -> [ Pathname:English.rb, Pathname:Env.rb, Pathname:abbrev.rb, ... ];FI"
;Fo;
;	[I"QNote that the result never contain the entries <tt>.</tt> and <tt>..</tt> in;FI"1the directory because they are not children.;Fo; o;
;	[I")This method has existed since 1.8.1.;F00[ I"(with_directory=true);F