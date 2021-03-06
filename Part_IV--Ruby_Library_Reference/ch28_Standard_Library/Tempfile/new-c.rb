U:RDoc::AnyMethod[iI"new:EFI"Tempfile::new;FT:publico:RDoc::Markup::Document:@parts[o:RDoc::Markup::Paragraph;	[I"HCreates a temporary file with permissions 0600 (= only readable and;FI"8writable by the owner) and opens it with mode "w+".;Fo:RDoc::Markup::BlankLine o;
;	[I"BThe +basename+ parameter is used to determine the name of the;FI"Btemporary file. You can either pass a String or an Array with;FI"E2 String elements. In the former form, the temporary file's base;FI"?name will begin with the given string. In the latter form,;FI"Ethe temporary file's base name will begin with the array's first;FI";element, and end with the second element. For example:;Fo; o:RDoc::Markup::Verbatim;	[I"  ;FI"!file = Tempfile.new('hello');FI"
;FI"  ;FI"Dfile.path  # => something like: "/tmp/foo2843-8392-92849382--0";FI"
;FI"
;FI"  ;FI"B# Use the Array form to enforce an extension in the filename:;FI"
;FI"  ;FI"+file = Tempfile.new(['hello', '.jpg']);FI"
;FI"  ;FI"Hfile.path  # => something like: "/tmp/foo2843-8392-92849382--0.jpg";FI"
;Fo;
;	[I"DThe temporary file will be placed in the directory as specified;FI"Aby the +tmpdir+ parameter. By default, this is +Dir.tmpdir+.;FI">When $SAFE > 0 and the given +tmpdir+ is tainted, it uses;FI"C'/tmp' as the temporary directory. Please note that ENV values;FI"Bare tainted by default, and +Dir.tmpdir+'s return value might;FI"=come from environment variables (e.g. <tt>$TMPDIR</tt>).;Fo; o;;	[I"  ;FI"1file = Tempfile.new('hello', '/home/aisaka');FI"
;FI"  ;FI"Lfile.path  # => something like: "/home/aisaka/foo2843-8392-92849382--0";FI"
;Fo;
;	[	I"HYou can also pass an options hash. Under the hood, Tempfile creates;FI"Jthe temporary file using +File.open+. These options will be passed to;FI"?+File.open+. This is mostly useful for specifying encoding;FI"options, e.g.:;Fo; o;;	[I"  ;FI"ETempfile.new('hello', '/home/aisaka', :encoding => 'ascii-8bit');FI"
;FI"
;FI"  ;FI"0# You can also omit the 'tmpdir' parameter:;FI"
;FI"  ;FI"5Tempfile.new('hello', :encoding => 'ascii-8bit');FI"
;FS:RDoc::Markup::Heading:
leveli:	textI"Exceptions;Fo; o;
;	[I"CIf Tempfile.new cannot find a unique filename within a limited;FI"6number of tries, then it will raise an exception.;FI"5new(basename, [tmpdir = Dir.tmpdir], [options])
;F0[ I"(basename, *rest);F