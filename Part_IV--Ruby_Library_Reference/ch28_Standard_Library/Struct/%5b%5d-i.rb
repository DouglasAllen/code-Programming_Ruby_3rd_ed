U:RDoc::AnyMethod[iI"[]:EFI"Struct#[];FF:publico:RDoc::Markup::Document:@parts[o:RDoc::Markup::Paragraph;	[
I"EAttribute Reference---Returns the value of the instance variable;FI"8named by <i>symbol</i>, or indexed (0..length-1) by;FI"B<i>fixnum</i>. Will raise <code>NameError</code> if the named;FI"Hvariable does not exist, or <code>IndexError</code> if the index is;FI"out of range.;Fo:RDoc::Markup::BlankLine o:RDoc::Markup::Verbatim;	[I"   ;FI"1Customer = Struct.new(:name, :address, :zip);FI"
;FI"   ;FI"Djoe = Customer.new("Joe Smith", "123 Maple, Anytown NC", 12345);FI"
;FI"
;FI"   ;FI""joe["name"]   #=> "Joe Smith";FI"
;FI"   ;FI""joe[:name]    #=> "Joe Smith";FI"
;FI"   ;FI""joe[0]        #=> "Joe Smith";FI"Astruct[symbol]    -> anObject
struct[fixnum]    -> anObject
;F0[ I"	(p1);F