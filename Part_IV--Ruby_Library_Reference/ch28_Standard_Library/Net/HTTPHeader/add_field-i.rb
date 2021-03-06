U:RDoc::AnyMethod[iI"add_field:EFI"Net::HTTPHeader#add_field;FF:publico:RDoc::Markup::Document:@parts[	o:RDoc::Markup::List:
@type:
LABEL:@items[o:RDoc::Markup::ListItem:@labelI"Ruby 1.8.3;F;	[o:RDoc::Markup::BlankLine o:RDoc::Markup::Paragraph;	[I"*Adds header field instead of replace.;FI",Second argument +val+ must be a String.;FI"(See also #[]=, #[] and #get_fields.;Fo; o:RDoc::Markup::Verbatim;	[I"  ;FI")request.add_field 'X-My-Header', 'a';FI"
;FI"  ;FI"2p request['X-My-Header']              #=> "a";FI"
;FI"  ;FI"4p request.get_fields('X-My-Header')   #=> ["a"];FI"
;FI"  ;FI")request.add_field 'X-My-Header', 'b';FI"
;FI"  ;FI"5p request['X-My-Header']              #=> "a, b";FI"
;FI"  ;FI"9p request.get_fields('X-My-Header')   #=> ["a", "b"];FI"
;FI"  ;FI")request.add_field 'X-My-Header', 'c';FI"
;FI"  ;FI"8p request['X-My-Header']              #=> "a, b, c";FI"
;FI"  ;FI">p request.get_fields('X-My-Header')   #=> ["a", "b", "c"];F00[ I"(key, val);F