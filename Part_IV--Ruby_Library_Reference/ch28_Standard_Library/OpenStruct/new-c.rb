U:RDoc::AnyMethod[iI"new:EFI"OpenStruct::new;FT:publico:RDoc::Markup::Document:@parts[	o:RDoc::Markup::Paragraph;	[I"ICreate a new OpenStruct object.  The optional +hash+, if given, will;FI"2generate attributes and values.  For example.;Fo:RDoc::Markup::BlankLine o:RDoc::Markup::Verbatim;	[I"  ;FI"require 'ostruct';FI"
;FI"  ;FI"Chash = { "country" => "Australia", :population => 20_000_000 };FI"
;FI"  ;FI" data = OpenStruct.new(hash);FI"
;FI"
;FI"  ;FI"Lp data        # -> <OpenStruct country="Australia" population=20000000>;FI"
;Fo;
;	[I"IBy default, the resulting OpenStruct object will have no attributes.;F00[ I"(hash=nil);F