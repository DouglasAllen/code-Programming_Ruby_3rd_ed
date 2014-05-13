U:RDoc::NormalClass[i I"AttlistDecl:EFI"REXML::AttlistDecl;FI"
Child;Fo:RDoc::Markup::Document:@parts[
o:RDoc::Markup::Paragraph;[I"This class needs:;Fo:RDoc::Markup::List:
@type:BULLET:@items[o:RDoc::Markup::ListItem:@label0;[o;	;[I"Documentation;Fo;;0;[o;	;[I"JWork!  Not all types of attlists are intelligently parsed, so we just;Fo;	;[I"Ispew back out what we get in.  This works, but it would be better if;FI"'we formatted the output ourselves.;Fo:RDoc::Markup::BlankLine o;	;[
I"BAttlistDecls provide *just* enough support to allow namespace;FI"Ldeclarations.  If you need some sort of generalized support, or have an;FI"Jinteresting idea about how to map the hideous, terrible design of DTD;FI"OAttlistDecls onto an intuitive Ruby interface, let me know.  I'm desperate;FI"/for anything to make DTDs more palateable.;F[[I"element_name;FI"R;F[ [[I"Enumerable;Fo;;[ [[I"
class;F[[:public[I"new;F[:protected[ [:private[ [I"instance;F[[;[
I"[];FI"	each;FI"include?;FI"node_type;FI"
write;F[;[ [;[ 