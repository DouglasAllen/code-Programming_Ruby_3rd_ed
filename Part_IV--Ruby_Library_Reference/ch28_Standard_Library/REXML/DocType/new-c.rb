U:RDoc::AnyMethod[iI"new:EFI"REXML::DocType::new;FT:publico:RDoc::Markup::Document:@parts[o:RDoc::Markup::Paragraph;	[I"Constructor;Fo:RDoc::Markup::BlankLine o:RDoc::Markup::Verbatim;	[I"  ;FI"8dt = DocType.new( 'foo', '-//I/Hate/External/IDs' );FI"
;FI"  ;FI".# <!DOCTYPE foo '-//I/Hate/External/IDs'>;FI"
;FI"  ;FI")dt = DocType.new( doctype_to_clone );FI"
;FI"  ;FI",# Incomplete.  Shallow clone of doctype;FI"
;Fo;
;	[I"!+Note+ that the constructor:;Fo; o;;	[I" ;FI"8Doctype.new( Source.new( "<!DOCTYPE foo 'bar'>" ) );FI"
;Fo;
;	[I"Bis _deprecated_.  Do not use it.  It will probably disappear.;F00[ I"( first, parent=nil );F