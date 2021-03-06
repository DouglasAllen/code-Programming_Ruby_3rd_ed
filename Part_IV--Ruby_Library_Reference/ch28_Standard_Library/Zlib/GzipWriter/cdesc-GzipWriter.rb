U:RDoc::NormalClass[i I"GzipWriter:EFI"Zlib::GzipWriter;FI"Zlib::GzipFile;Fo:RDoc::Markup::Document:@parts[o:RDoc::Markup::Paragraph;[I"NZlib::GzipWriter is a class for writing gzipped files.  GzipWriter should;FI"8be used with an instance of IO, or IO-like, object.;Fo:RDoc::Markup::BlankLine o;	;[I"For example:;Fo;
 o:RDoc::Markup::Verbatim;[%I"  ;FI"-Zlib::GzipWriter.open('hoge.gz') do |gz|;FI"
;FI"	    ;FI"2gz.write 'jugemu jugemu gokou no surikire...';FI"
;FI"  ;FI"end;FI"
;FI"
;FI"  ;FI"%File.open('hoge.gz', 'w') do |f|;FI"
;FI"	    ;FI"!gz = Zlib::GzipWriter.new(f);FI"
;FI"	    ;FI"2gz.write 'jugemu jugemu gokou no surikire...';FI"
;FI"	    ;FI"gz.close;FI"
;FI"  ;FI"end;FI"
;FI"
;FI"  ;FI"I# TODO: test these.  Are they equivalent?  Can GzipWriter.new take a;FI"
;FI"  ;FI"# block?;FI"
;Fo;	;[	I"ONOTE: Due to the limitation of Ruby's finalizer, you must explicitly close;FI"MGzipWriter objects by Zlib::GzipWriter#close etc.  Otherwise, GzipWriter;FI"Nwill be not able to write the gzip footer and will generate a broken gzip;FI"
file.;F[ [ [ [[I"
class;F[[:public[I"new;FI"	open;F[:protected[ [:private[ [I"instance;F[[;[I"<<;FI"comment=;FI"
flush;FI"mtime=;FI"orig_name=;FI"pos;FI"
print;FI"printf;FI"	putc;FI"	puts;FI"	tell;FI"
write;F[;[ [;[ 