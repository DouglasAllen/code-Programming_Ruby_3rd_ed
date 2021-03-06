U:RDoc::AnyMethod[iI"
count:EFI"Enumerable#count;FF:publico:RDoc::Markup::Document:@parts[o:RDoc::Markup::Paragraph;	[
I"FReturns the number of items in <i>enum</i>, where #size is called;FI"Bif it responds to it, otherwise the items are counted through;FI"Fenumeration.  If an argument is given, counts the number of items;FI"Din <i>enum</i>, for which equals to <i>item</i>.  If a block is;FI"@given, counts the number of elements yielding a true value.;Fo:RDoc::Markup::BlankLine o:RDoc::Markup::Verbatim;	[I"   ;FI"ary = [1, 2, 4, 2];FI"
;FI"   ;FI" ary.count             #=> 4;FI"
;FI"   ;FI" ary.count(2)          #=> 2;FI"
;FI"   ;FI" ary.count{|x|x%2==0}  #=> 3;FI"qenum.count                   -> int
enum.count(item)             -> int
enum.count {| obj | block }  -> int
;F0[ I"
(...);F