U:RDoc::AnyMethod[iI"
chunk:EFI"Enumerable#chunk;FF:publico:RDoc::Markup::Document:@parts[o:RDoc::Markup::Paragraph;	[I"5Creates an enumerator for each chunked elements.;FI"FThe consecutive elements which have same block value are chunked.;Fo:RDoc::Markup::BlankLine o;
;	[I"SThe result enumerator yields the block value and an array of chunked elements.;FI"/So "each" method can be called as follows.;Fo; o:RDoc::Markup::Verbatim;	[I"  ;FI"3enum.chunk {|elt| key }.each {|key, ary| ... };FI"
;FI"  ;FI"Ienum.chunk(initial_state) {|elt, state| key }.each {|key, ary| ... };FI"
;Fo;
;	[I"AFor example, consecutive even numbers and odd numbers can be;FI"splitted as follows.;Fo; o;;	[#I"  ;FI"'[3,1,4,1,5,9,2,6,5,3,5].chunk {|n|;FI"
;FI"	    ;FI"n.even?;FI"
;FI"  ;FI"}.each {|even, ary|;FI"
;FI"	    ;FI"p [even, ary];FI"
;FI"  ;FI"};FI"
;FI"  ;FI"#=> [false, [3, 1]];FI"
;FI"  ;FI"#   [true, [4]];FI"
;FI"  ;FI"#   [false, [1, 5, 9]];FI"
;FI"  ;FI"#   [true, [2, 6]];FI"
;FI"  ;FI"#   [false, [5, 3, 5]];FI"
;Fo;
;	[I"DThis method is especially useful for sorted series of elements.;FI"@The following example counts words for each initial letter.;Fo; o;;	[ I"  ;FI"7open("/usr/share/dict/words", "r:iso-8859-1") {|f|;FI"
;FI"	    ;FI"Lf.chunk {|line| line.ord }.each {|ch, lines| p [ch.chr, lines.length] };FI"
;FI"  ;FI"};FI"
;FI"  ;FI"#=> ["\n", 1];FI"
;FI"  ;FI"#   ["A", 1327];FI"
;FI"  ;FI"#   ["B", 1372];FI"
;FI"  ;FI"#   ["C", 1507];FI"
;FI"  ;FI"#   ["D", 791];FI"
;FI"  ;FI"#   ...;FI"
;Fo;
;	[I"2The following key values has special meaning:;Fo:RDoc::Markup::List:
@type:BULLET:@items[o:RDoc::Markup::ListItem:@label0;	[o;
;	[I"Anil and :_separator specifies that the elements are dropped.;Fo;;0;	[o;
;	[I"I:_alone specifies that the element should be chunked as a singleton.;Fo;
;	[I";Other symbols which begins an underscore are reserved.;Fo; o;
;	[I"=nil and :_separator can be used to ignore some elements.;FI"RFor example, the sequence of hyphens in svn log can be eliminated as follows.;Fo; o;;	[8I"  ;FI"sep = "-"*72 + "\n";FI"
;FI"  ;FI"$IO.popen("svn log README") {|f|;FI"
;FI"	    ;FI"f.chunk {|line|;FI"
;FI"      ;FI"line != sep || nil;FI"
;FI"	    ;FI"}.each {|_, lines|;FI"
;FI"      ;FI"pp lines;FI"
;FI"	    ;FI"};FI"
;FI"  ;FI"};FI"
;FI"  ;FI"T#=> ["r20018 | knu | 2008-10-29 13:20:42 +0900 (Wed, 29 Oct 2008) | 2 lines\n",;FI"
;FI"  ;FI"#    "\n",;FI"
;FI"  ;FI"C#    "* README, README.ja: Update the portability section.\n",;FI"
;FI"  ;FI"#    "\n"];FI"
;FI"  ;FI"T#   ["r16725 | knu | 2008-05-31 23:34:23 +0900 (Sat, 31 May 2008) | 2 lines\n",;FI"
;FI"  ;FI"#    "\n",;FI"
;FI"  ;FI"E#    "* README, README.ja: Add a note about default C flags.\n",;FI"
;FI"  ;FI"#    "\n"];FI"
;FI"  ;FI"#   ...;FI"
;Fo;
;	[I"Bparagraphs separated by empty lines can be parsed as follows.;Fo; o;;	[I"  ;FI")File.foreach("README").chunk {|line|;FI"
;FI"	    ;FI"/\A\s*\z/ !~ line || nil;FI"
;FI"  ;FI"}.each {|_, lines|;FI"
;FI"	    ;FI"pp lines;FI"
;FI"  ;FI"};FI"
;Fo;
;	[I";:_alone can be used to pass through bunch of elements.;FI">For example, sort consecutive lines formed as Foo#bar and;FI"4pass other lines, chunk can be used as follows.;Fo; o;;	[#I"  ;FI"#pat = /\A[A-Z][A-Za-z0-9_]+\#/;FI"
;FI"  ;FI"open(filename) {|f|;FI"
;FI"	    ;FI"Df.chunk {|line| pat =~ line ? $& : :_alone }.each {|key, lines|;FI"
;FI"      ;FI"if key != :_alone;FI"
;FI"        ;FI"print lines.sort.join('');FI"
;FI"      ;FI"	else;FI"
;FI"        ;FI"print lines.join('');FI"
;FI"      ;FI"end;FI"
;FI"	    ;FI"};FI"
;FI"  ;FI"};FI"
;Fo;
;	[
I"AIf the block needs to maintain state over multiple elements,;FI"*_initial_state_ argument can be used.;FI"If non-nil value is given,;FI"Jit is duplicated for each "each" method invocation of the enumerator.;FI"UThe duplicated object is passed to 2nd argument of the block for "chunk" method.;FI"~enum.chunk {|elt| ... }                       -> an_enumerator
enum.chunk(initial_state) {|elt, state| ... } -> an_enumerator
;F0[ I"
(...);F