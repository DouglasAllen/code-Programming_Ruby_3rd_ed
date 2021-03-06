U:RDoc::AnyMethod[iI"classify:EFI"Set#classify;FF:publico:RDoc::Markup::Document:@parts[
o:RDoc::Markup::Paragraph;	[	I"BClassifies the set by the return value of the given block and;FI"Freturns a hash of {value => set of elements} pairs.  The block is;FI"Dcalled once for each element of the set, passing the element as;FI"parameter.;Fo:RDoc::Markup::BlankLine o;
;	[I"
e.g.:;Fo; o:RDoc::Markup::Verbatim;	[I"  ;FI"require 'set';FI"
;FI"  ;FI"&files = Set.new(Dir.glob("*.rb"));FI"
;FI"  ;FI"5hash = files.classify { |f| File.mtime(f).year };FI"
;FI"  ;FI"4p hash    # => {2000=>#<Set: {"a.rb", "b.rb"}>,;FI"
;FI"            ;FI"2#     2001=>#<Set: {"c.rb", "d.rb", "e.rb"}>,;FI"
;FI"            ;FI""#     2002=>#<Set: {"f.rb"}>};F0I"o;F[ I"();F