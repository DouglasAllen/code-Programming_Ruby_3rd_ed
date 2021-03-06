U:RDoc::AnyMethod[iI"[]=:EFI"WIN32OLE#[]=;FF:publico:RDoc::Markup::Document:@parts[o:RDoc::Markup::Paragraph;	[I"?Sets the value to WIN32OLE object specified by a1, a2, ...;Fo:RDoc::Markup::BlankLine o:RDoc::Markup::Verbatim;	[I"   ;FI"0dict = WIN32OLE.new('Scripting.Dictionary');FI"
;FI"   ;FI"dict.add('ruby', 'RUBY');FI"
;FI"   ;FI"dict['ruby'] = 'Ruby';FI"
;FI"   ;FI""puts dict['ruby'] # => 'Ruby';FI"
;Fo;
;	[I"CRemark: You can not use this method to set the property value.;Fo; o;;	[I"   ;FI".excel = WIN32OLE.new('Excel.Application');FI"
;FI"   ;FI"2# excel['Visible'] = true # This is error !!!;FI"
;FI"   ;FI"Mexcel.Visible = true # You should to use this style to set the property.;FI"WIN32OLE[a1, a2, ...]=val
;F0[ I"
(...);F