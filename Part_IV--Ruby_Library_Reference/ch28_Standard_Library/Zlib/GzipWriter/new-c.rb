U:RDoc::AnyMethod[iI"new:EFI"Zlib::GzipWriter::new;FT:publico:RDoc::Markup::Document:@parts[o:RDoc::Markup::Paragraph;	[	I"MCreates a GzipWriter object associated with +io+. +level+ and +strategy+;FI"Nshould be the same as the arguments of Zlib::Deflate.new.  The GzipWriter;FI"Lobject writes gzipped data to +io+.  At least, +io+ must respond to the;FI"B+write+ method that behaves same as write method in IO class.;FI"0 Zlib::GzipWriter.new(io, level, strategy)
;F0[ I"
(...);F