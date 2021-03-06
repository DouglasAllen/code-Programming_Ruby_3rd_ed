U:RDoc::AnyMethod[iI"	mode:EFI"File::Stat#mode;FF:publico:RDoc::Markup::Document:@parts[o:RDoc::Markup::Paragraph;	[I";Returns an integer representing the permission bits of;FI"C<i>stat</i>. The meaning of the bits is platform dependent; on;FI",Unix systems, see <code>stat(2)</code>.;Fo:RDoc::Markup::BlankLine o:RDoc::Markup::Verbatim;	[I"   ;FI")File.chmod(0644, "testfile")   #=> 1;FI"
;FI"   ;FI"s = File.stat("testfile");FI"
;FI"   ;FI"0sprintf("%o", s.mode)          #=> "100644";FI"stat.mode   -> fixnum
;F0[ I"();F