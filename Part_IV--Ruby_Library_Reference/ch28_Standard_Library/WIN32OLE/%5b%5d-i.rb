U:RDoc::AnyMethod[iI"[]:EFI"WIN32OLE#[];FF:publico:RDoc::Markup::Document:@parts[
o:RDoc::Markup::Paragraph;	[I"=Returns the value of Collection specified by a1, a2,....;Fo:RDoc::Markup::BlankLine o:RDoc::Markup::Verbatim;	[I"   ;FI"0dict = WIN32OLE.new('Scripting.Dictionary');FI"
;FI"   ;FI"dict.add('ruby', 'Ruby');FI"
;FI"   ;FI"Eputs dict['ruby'] # => 'Ruby' (same as `puts dict.item('ruby')');FI"
;Fo;
;	[I"=Remark: You can not use this method to get the property.;Fo;;	[I"   ;FI".excel = WIN32OLE.new('Excel.Application');FI"
;FI"   ;FI"/# puts excel['Visible']  This is error !!!;FI"
;FI"   ;FI"Kputs excel.Visible # You should to use this style to get the property.;FI"WIN32OLE[a1,a2,...]
;F0[ I"
(...);F