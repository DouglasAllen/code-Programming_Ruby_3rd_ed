U:RDoc::AnyMethod[iI"[]=:EFI"WIN32OLE_VARIANT#[]=;FF:publico:RDoc::Markup::Document:@parts[	o:RDoc::Markup::Paragraph;	[I"BSet the element of WIN32OLE_VARIANT object(OLE array) to val.;FI";This method is available only when the variant type of;FI")WIN32OLE_VARIANT object is VT_ARRAY.;Fo:RDoc::Markup::BlankLine o;
;	[I"REMARK:;Fo:RDoc::Markup::Verbatim;	[ I"   ;FI"7The all indicies should be 0 or natural number and;FI"
;FI"   ;FI")lower than or equal to max indicies.;FI"
;FI"   ;FI"8(This point is different with Ruby Array indicies.);FI"
;FI"
;FI"   ;FI"2obj = WIN32OLE_VARIANT.new([[1,2,3],[4,5,6]]);FI"
;FI"   ;FI"obj[0,0] = 7;FI"
;FI"   ;FI"obj[1,0] = 8;FI"
;FI"   ;FI"(p obj.value # => [[7,2,3], [8,5,6]];FI"
;FI"   ;FI"+obj[2,0] = 9 # => WIN32OLERuntimeError;FI"
;FI"   ;FI"-obj[0, -1] = 9 # => WIN32OLERuntimeError;FI"FWIN32OLE_VARIANT[i,j,...] = val #=> set the element of OLE array
;F0[ I"
(...);F