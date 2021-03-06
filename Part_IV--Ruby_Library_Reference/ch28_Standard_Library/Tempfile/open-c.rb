U:RDoc::AnyMethod[iI"	open:EFI"Tempfile::open;FT:publico:RDoc::Markup::Document:@parts[o:RDoc::Markup::Paragraph;	[I"Creates a new Tempfile.;Fo:RDoc::Markup::BlankLine o;
;	[I">If no block is given, this is a synonym for Tempfile.new.;Fo; o;
;	[	I"EIf a block is given, then a Tempfile object will be constructed,;FI"Dand the block is run with said object as argument. The Tempfile;FI"Coject will be automatically closed after the block terminates.;FI"-The call returns the value of the block.;Fo; o;
;	[I"IIn any case, all arguments (+*args+) will be passed to Tempfile.new.;Fo; o:RDoc::Markup::Verbatim;	[#I"  ;FI".Tempfile.open('foo', '/home/temp') do |f|;FI"
;FI"
     ;FI" ... do something with f ...;FI"
;FI"  ;FI"end;FI"
;FI"
;FI"  ;FI"# Equivalent:;FI"
;FI"  ;FI"+f = Tempfile.open('foo', '/home/temp');FI"
;FI"  ;FI"
begin;FI"
;FI"
     ;FI" ... do something with f ...;FI"
;FI"  ;FI"ensure;FI"
;FI"
     ;FI"f.close;FI"
;FI"  ;FI"end;F0I"(tempfile);F[ I"(*args);F