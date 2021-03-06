U:RDoc::AnyMethod[iI"
abort:EFI"PStore#abort;FF:publico:RDoc::Markup::Document:@parts[o:RDoc::Markup::Paragraph;	[I"LEnds the current PStore#transaction, discarding any changes to the data;FI"store.;Fo:RDoc::Markup::BlankLine S:RDoc::Markup::Heading:
leveli:	textI"Example:;Fo; o:RDoc::Markup::Verbatim;	[ I" ;FI"require "pstore";FI"
;FI"
;FI" ;FI"+store = PStore.new("data_file.pstore");FI"
;FI" ;FI".store.transaction do  # begin transaction;FI"
;FI"   ;FI"Cstore[:one] = 1     # this change is not applied, see below...;FI"
;FI"   ;FI"Cstore[:two] = 2     # this change is not applied, see below...;FI"
;FI"
;FI"   ;FI"Dstore.abort         # end transaction here, discard all changes;FI"
;FI"
;FI"   ;FI"7store[:three] = 3   # this change is never reached;FI"
;FI" ;FI"end;FI"
;Fo;
;	[I"L*WARNING*:  This method is only valid in a PStore#transaction.  It will;FI"5raise PStore::Error if called at any other time.;F00[ I"();F