U:RDoc::AnyMethod[iI"const_load:EFI"WIN32OLE::const_load;FT:publico:RDoc::Markup::Document:@parts[o:RDoc::Markup::Paragraph;	[I"GDefines the constants of OLE Automation server as mod's constants.;FI"@The first argument is WIN32OLE object or type library name.;FI"9If 2nd argument is omitted, the default is WIN32OLE.;FI"EThe first letter of Ruby's constant variable name is upper case,;FI"Aso constant variable name of WIN32OLE object is capitalized.;FI"EFor example, the 'xlTop' constant of Excel is changed to 'XlTop';FI"in WIN32OLE.;FI"?If the first letter of constant variabl is not [A-Z], then;FI"7the constant is defined as CONSTANTS hash element.;Fo:RDoc::Markup::BlankLine o:RDoc::Markup::Verbatim;	[*I"   ;FI"module EXCEL_CONST;FI"
;FI"   ;FI"end;FI"
;FI"   ;FI".excel = WIN32OLE.new('Excel.Application');FI"
;FI"   ;FI",WIN32OLE.const_load(excel, EXCEL_CONST);FI"
;FI"   ;FI"'puts EXCEL_CONST::XlTop # => -4160;FI"
;FI"   ;FI"Eputs EXCEL_CONST::CONSTANTS['_xlDialogChartSourceData'] # => 541;FI"
;FI"
;FI"   ;FI"WIN32OLE.const_load(excel);FI"
;FI"   ;FI"$puts WIN32OLE::XlTop # => -4160;FI"
;FI"
;FI"   ;FI"module MSO;FI"
;FI"   ;FI"end;FI"
;FI"   ;FI"DWIN32OLE.const_load('Microsoft Office 9.0 Object Library', MSO);FI"
;FI"   ;FI"#puts MSO::MsoLineSingle # => 1;FI"/WIN32OLE.const_load( ole, mod = WIN32OLE)
;F0[ I"
(...);F