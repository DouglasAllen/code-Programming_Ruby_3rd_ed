U:RDoc::AnyMethod[iI"open_and_lock_file:EFI"PStore#open_and_lock_file;FF:privateo:RDoc::Markup::Document:@parts[
o:RDoc::Markup::Paragraph;	[I"@Open the specified filename (either in read-only mode or in;FI"9read-write mode) and lock it for reading or writing.;Fo:RDoc::Markup::BlankLine o;
;	[I"EThe opened File object will be returned. If _read_only_ is true,;FI"<and the file does not exist, then nil will be returned.;Fo; o;
;	[I"#All exceptions are propagated.;F00[ I"(filename, read_only);F