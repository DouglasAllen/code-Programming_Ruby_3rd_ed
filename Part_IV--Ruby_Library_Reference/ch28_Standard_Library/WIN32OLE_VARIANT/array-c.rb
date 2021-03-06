U:RDoc::AnyMethod[iI"
array:EFI"WIN32OLE_VARIANT::array;FT:publico:RDoc::Markup::Document:@parts[
o:RDoc::Markup::Paragraph;	[	I"MReturns Ruby object wrapping OLE variant whose variant type is VT_ARRAY.;FI"IThe first argument should be Array object which specifies dimensions;FI".and each size of dimensions of OLE array.;FI"LThe second argument specifies variant type of the element of OLE array.;Fo:RDoc::Markup::BlankLine o;
;	[I"KThe following create 2 dimensions OLE array. The first dimensions size;FI"is 3, and the second is 4.;Fo; o:RDoc::Markup::Verbatim;	[
I"   ;FI"3ole_ary = WIN32OLE_VARIANT.array([3,4], VT_I4);FI"
;FI"   ;FI"Mruby_ary = ole_ary.value # => [[0, 0, 0, 0], [0, 0, 0, 0], [0, 0, 0, 0]];FI"%WIN32OLE_VARIANT.array(ary, vt)
;F0[ I"(p1, p2);F