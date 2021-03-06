U:RDoc::AnyMethod[iI"scan_until:EFI"StringScanner#scan_until;FF:publico:RDoc::Markup::Document:@parts[o:RDoc::Markup::Paragraph;	[I"QScans the string _until_ the +pattern+ is matched.  Returns the substring up;FI"Nto and including the end of the match, advancing the scan pointer to that;FI"7location. If there is no match, +nil+ is returned.;Fo:RDoc::Markup::BlankLine o:RDoc::Markup::Verbatim;	[I"  ;FI"3s = StringScanner.new("Fri Dec 12 1975 14:39");FI"
;FI"  ;FI".s.scan_until(/1/)        # -> "Fri Dec 1";FI"
;FI"  ;FI"-s.pre_match              # -> "Fri Dec ";FI"
;FI"  ;FI"&s.scan_until(/XYZ/)      # -> nil;FI" scan_until(pattern)
;F0[ I"	(p1);F