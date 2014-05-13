U:RDoc::AnyMethod[iI"grpowned?:EFI"File::Stat#grpowned?;FF:publico:RDoc::Markup::Document:@parts[o:RDoc::Markup::Paragraph;	[I"IReturns true if the effective group id of the process is the same as;FI"Lthe group id of <i>stat</i>. On Windows NT, returns <code>false</code>.;Fo:RDoc::Markup::BlankLine o:RDoc::Markup::Verbatim;	[
I"   ;FI"2File.stat("testfile").grpowned?      #=> true;FI"
;FI"   ;FI"3File.stat("/etc/passwd").grpowned?   #=> false;FI"'stat.grpowned?   -> true or false
;F0[ I"();F