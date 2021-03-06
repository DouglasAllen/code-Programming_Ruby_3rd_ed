U:RDoc::AnyMethod[iI"
match:EFI"Rinda::Template#match;FF:publico:RDoc::Markup::Document:@parts[o:RDoc::Markup::Paragraph;	[
I"IMatches this template against +tuple+.  The +tuple+ must be the same;FI"Lsize as the template.  An element with a +nil+ value in a template acts;FI"Kas a wildcard, matching any value in the corresponding position in the;FI"Ituple.  Elements of the template match the +tuple+ if the are #== or;FI"
#===.;Fo:RDoc::Markup::BlankLine o:RDoc::Markup::Verbatim;	[I"  ;FI"CTemplate.new([:foo, 5]).match   Tuple.new([:foo, 5]) # => true;FI"
;FI"  ;FI"CTemplate.new([:foo, nil]).match Tuple.new([:foo, 5]) # => true;FI"
;FI"  ;FI"CTemplate.new([String]).match    Tuple.new(['hello']) # => true;FI"
;FI"
;FI"  ;FI"DTemplate.new([:foo]).match      Tuple.new([:foo, 5]) # => false;FI"
;FI"  ;FI"DTemplate.new([:foo, 6]).match   Tuple.new([:foo, 5]) # => false;FI"
;FI"  ;FI"DTemplate.new([:foo, nil]).match Tuple.new([:foo])    # => false;FI"
;FI"  ;FI"DTemplate.new([:foo, 6]).match   Tuple.new([:foo])    # => false;F00[ I"(tuple);F