U:RDoc::AnyMethod[iI"inflate:EFI"Zlib::Inflate#inflate;FF:publico:RDoc::Markup::Document:@parts[
o:RDoc::Markup::Paragraph;	[	I"LInputs +string+ into the inflate stream and returns the output from the;FI"Nstream.  Calling this method, both the input and the output buffer of the;FI"Nstream are flushed.  If string is +nil+, this method finishes the stream,;FI"$just like Zlib::ZStream#finish.;Fo:RDoc::Markup::BlankLine o;
;	[I"JRaises a Zlib::NeedDict exception if a preset dictionary is needed to;FI"Mdecompress.  Set the dictionary by Zlib::Inflate#set_dictionary and then;FI"?call this method again with an empty string.  (<i>???</i>);Fo; o;
;	[I"TODO: document better!;FI" inflate(string)
;F0[ I"	(p1);F