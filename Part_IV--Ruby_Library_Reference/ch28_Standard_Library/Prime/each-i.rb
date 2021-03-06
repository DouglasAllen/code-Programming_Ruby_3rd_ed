U:RDoc::AnyMethod[iI"	each:EFI"Prime#each;FF:publico:RDoc::Markup::Document:@parts[o:RDoc::Markup::Paragraph;	[I"5Iterates the given block over all prime numbers.;Fo:RDoc::Markup::BlankLine S:RDoc::Markup::Heading:
leveli:	textI"Parameters;Fo:RDoc::Markup::List:
@type:	NOTE:@items[o:RDoc::Markup::ListItem:@labelI"+ubound+;F;	[o;
;	[I",Optional. An arbitrary positive number.;FI":The upper bound of enumeration. The method enumerates;FI"1prime numbers infinitely if +ubound+ is nil.;Fo;;I"+generator+;F;	[o;
;	[I";Optional. An implementation of pseudo-prime generator.;Fo; S;;i;I"Return value;Fo;
;	[I"<An evaluated value of the given block at the last time.;FI"<Or an enumerator which is compatible to an +Enumerator+;FI"if no block given.;Fo; S;;i;I"Description;Fo;
;	[I"CCalls +block+ once for each prime number, passing the prime as;FI"a parameter.;Fo; o;;;;[o;;I"+ubound+;F;	[o;
;	[I";Upper bound of prime numbers. The iterator stops after;FI",yields all prime numbers p <= +ubound+.;Fo; S;;i;I"	Note;Fo;
;	[I"K+Prime+.+new+ returns a object extended by +Prime+::+OldCompatibility+;FI"Kin order to compatibility to Ruby 1.8, and +Prime+#each is overwritten;FI"+by +Prime+::+OldCompatibility+#+each+.;Fo; o;
;	[I"K+Prime+.+new+ is now obsolete. Use +Prime+.+instance+.+each+ or simply;FI"+Prime+.+each+.;F00[ I"B(ubound = nil, generator = EratosthenesGenerator.new, &block);F