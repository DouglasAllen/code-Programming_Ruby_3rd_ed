U:RDoc::NormalClass[i I"OpenStruct:EF@I"Object;Fo:RDoc::Markup::Document:@parts[o:RDoc::Markup::Paragraph;[I"OOpenStruct allows you to create data objects and set arbitrary attributes.;FI"For example:;Fo:RDoc::Markup::BlankLine o:RDoc::Markup::Verbatim;[I"  ;FI"require 'ostruct';FI"
;FI"
;FI"  ;FI"record = OpenStruct.new;FI"
;FI"  ;FI""record.name    = "John Smith";FI"
;FI"  ;FI"record.age     = 70;FI"
;FI"  ;FI"record.pension = 300;FI"
;FI"
;FI"  ;FI"+puts record.name     # -> "John Smith";FI"
;FI"  ;FI""puts record.address  # -> nil;FI"
;Fo;	;[I"OIt is like a hash with a different way to access the data.  In fact, it is;FI"Aimplemented with a hash, and you can initialize it with one.;Fo;
 o;;[I"  ;FI"Chash = { "country" => "Australia", :population => 20_000_000 };FI"
;FI"  ;FI" data = OpenStruct.new(hash);FI"
;FI"
;FI"  ;FI"Lp data        # -> <OpenStruct country="Australia" population=20000000>;F[ [ [ [[I"
class;F[[:public[I"new;F[:protected[ [:private[ [I"instance;F[[;["==I"delete_field;FI"initialize_copy;FI"inspect;FI"marshal_dump;FI"marshal_load;FI"new_ostruct_member;FI"	to_s;F[;[I"modifiable;F[;[ 