U:RDoc::AnyMethod[iI"each_with_index:EFI"Enumerable#each_with_index;FF:publico:RDoc::Markup::Document:@parts[
o:RDoc::Markup::Paragraph;	[I"ECalls <em>block</em> with two arguments, the item and its index,;FI"Ffor each item in <i>enum</i>.  Given arguments are passed through;FI"to #each().;Fo:RDoc::Markup::BlankLine o;
;	[I"=If no block is given, an enumerator is returned instead.;Fo; o:RDoc::Markup::Verbatim;	[I"   ;FI"hash = Hash.new;FI"
;FI"   ;FI"6%w(cat dog wombat).each_with_index {|item, index|;FI"
;FI"
     ;FI"hash[item] = index;FI"
;FI"   ;FI"};FI"
;FI"   ;FI"1hash   #=> {"cat"=>0, "dog"=>1, "wombat"=>2};FI"{enum.each_with_index(*args) {|obj, i| block }   ->  enum
enum.each_with_index(*args)                     ->  an_enumerator
;F0[ I"
(...);F