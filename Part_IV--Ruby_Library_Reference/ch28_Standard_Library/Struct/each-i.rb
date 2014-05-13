U:RDoc::AnyMethod[iI"	each:EFI"Struct#each;FF:publico:RDoc::Markup::Document:@parts[o:RDoc::Markup::Paragraph;	[I"DCalls <i>block</i> once for each instance variable, passing the;FI"value as a parameter.;Fo:RDoc::Markup::BlankLine o;
;	[I"=If no block is given, an enumerator is returned instead.;Fo; o:RDoc::Markup::Verbatim;	[I"   ;FI"1Customer = Struct.new(:name, :address, :zip);FI"
;FI"   ;FI"Djoe = Customer.new("Joe Smith", "123 Maple, Anytown NC", 12345);FI"
;FI"   ;FI"joe.each {|x| puts(x) };FI"
;Fo;
;	[I"<em>produces:</em>;Fo; o;;	[I"   ;FI"Joe Smith;FI"
;FI"   ;FI"123 Maple, Anytown NC;FI"
;FI"   ;FI"
12345;FI"Xstruct.each {|obj| block }  -> struct
struct.each                 -> an_enumerator
;F0[ I"();F