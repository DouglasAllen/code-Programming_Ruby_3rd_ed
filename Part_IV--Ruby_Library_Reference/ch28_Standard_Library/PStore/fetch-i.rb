U:RDoc::AnyMethod[iI"
fetch:EFI"PStore#fetch;FF:publico:RDoc::Markup::Document:@parts[o:RDoc::Markup::Paragraph;	[
I"IThis method is just like PStore#[], save that you may also provide a;FI"N_default_ value for the object.  In the event the specified _name_ is not;FI"Qfound in the data store, your _default_ will be returned instead.  If you do;FI"Mnot specify a default, PStore::Error will be raised if the object is not;FI"found.;Fo:RDoc::Markup::BlankLine o;
;	[I"L*WARNING*:  This method is only valid in a PStore#transaction.  It will;FI"5raise PStore::Error if called at any other time.;F00[ I""(name, default=PStore::Error);F