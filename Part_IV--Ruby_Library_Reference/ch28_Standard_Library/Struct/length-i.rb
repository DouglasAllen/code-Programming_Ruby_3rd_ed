U:RDoc::AnyMethod[iI"length:EFI"Struct#length;FF:publico:RDoc::Markup::Document:@parts[o:RDoc::Markup::Paragraph;	[I".Returns the number of instance variables.;Fo:RDoc::Markup::BlankLine o:RDoc::Markup::Verbatim;	[I"   ;FI"1Customer = Struct.new(:name, :address, :zip);FI"
;FI"   ;FI"Djoe = Customer.new("Joe Smith", "123 Maple, Anytown NC", 12345);FI"
;FI"   ;FI"joe.length   #=> 3;FI";struct.length    -> fixnum
struct.size      -> fixnum
;F0[ I"();F