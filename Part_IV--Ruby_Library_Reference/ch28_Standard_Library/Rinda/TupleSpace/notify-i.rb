U:RDoc::AnyMethod[iI"notify:EFI"Rinda::TupleSpace#notify;FF:publico:RDoc::Markup::Document:@parts[
o:RDoc::Markup::Paragraph;	[I"LRegisters for notifications of +event+.  Returns a NotifyTemplateEntry.;FI"MSee NotifyTemplateEntry for examples of how to listen for notifications.;Fo:RDoc::Markup::BlankLine o;
;	[I"+event+ can be:;Fo:RDoc::Markup::List:
@type:	NOTE:@items[o:RDoc::Markup::ListItem:@labelI"'write';F;	[o;
;	[I"A tuple was added;Fo;;I"'take';F;	[o;
;	[I"A tuple was taken or moved;Fo;;I"'delete';F;	[o;
;	[I"9A tuple was lost after being overwritten or expiring;Fo; o;
;	[I"FThe TupleSpace will also notify you of the 'close' event when the;FI"%NotifyTemplateEntry has expired.;F00[ I"(event, tuple, sec=nil);F