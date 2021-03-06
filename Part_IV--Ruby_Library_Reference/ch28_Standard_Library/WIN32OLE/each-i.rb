U:RDoc::AnyMethod[iI"	each:EFI"WIN32OLE#each;FF:publico:RDoc::Markup::Document:@parts[o:RDoc::Markup::Paragraph;	[I"PIterates over each item of OLE collection which has IEnumVARIANT interface.;Fo:RDoc::Markup::BlankLine o:RDoc::Markup::Verbatim;	[I"   ;FI".excel = WIN32OLE.new('Excel.Application');FI"
;FI"   ;FI"book = excel.workbooks.add;FI"
;FI"   ;FI" sheets = book.worksheets(1);FI"
;FI"   ;FI""cells = sheets.cells("A1:A5");FI"
;FI"   ;FI"cells.each do |cell|;FI"
;FI"
     ;FI"cell.value = 10;FI"
;FI"   ;FI"end;FI"WIN32OLE#each {|i|...}
;F0[ I"();F