U:RDoc::AnyMethod[iI"new:EFI"Zlib::GzipReader::new;FT:publico:RDoc::Markup::Document:@parts[o:RDoc::Markup::Paragraph;	[I"RCreates a GzipReader object associated with +io+. The GzipReader object reads;FI"Tgzipped data from +io+, and parses/decompresses them.  At least, +io+ must have;FI"Ha +read+ method that behaves same as the +read+ method in IO class.;Fo:RDoc::Markup::BlankLine o;
;	[I"JIf the gzip file header is incorrect, raises an Zlib::GzipFile::Error;FI"exception.;FI" Zlib::GzipReader.new(io)
;F0[ I"
(...);F