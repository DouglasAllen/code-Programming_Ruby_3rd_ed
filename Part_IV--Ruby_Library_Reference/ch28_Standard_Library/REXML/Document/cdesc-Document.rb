U:RDoc::NormalClass[i I"Document:EFI"REXML::Document;FI"Element;Fo:RDoc::Markup::Document:@parts[o:RDoc::Markup::Paragraph;[
I"FRepresents a full XML document, including PIs, a doctype, etc.  A;FI"@Document has a single child that can be accessed by root().;FI"LNote that if you want to have an XML declaration written for a document;FI"Iyou create, you must add one; REXML documents do not write a default;FI"9declaration for you.  See |DECLARATION| and |write|.;F[[I"entity_expansion_count;FI"R;F[[I"DECLARATION;Fo;;[o;	;[	I"KA convenient default XML declaration.  If you want an XML declaration,;FI"Athe easiest way to add one is mydoc << Document::DECLARATION;FI"+DEPRECATED+;FI""Use: mydoc << XMLDecl.default;F[ [[I"
class;F[[:public[	I"entity_expansion_limit;FI"entity_expansion_limit=;FI"new;FI"parse_stream;F[:protected[ [:private[ [I"instance;F[[;
[I"<<;FI"add;FI"add_element;FI"
clone;FI"doctype;FI"encoding;FI"expanded_name;FI"	name;FI"node_type;FI"record_entity_expansion;FI"	root;FI"stand_alone?;FI"version;FI"
write;FI"xml_decl;F[;[ [;[I"
build;F