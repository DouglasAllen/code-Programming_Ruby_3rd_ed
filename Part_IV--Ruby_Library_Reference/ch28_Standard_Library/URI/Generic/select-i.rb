U:RDoc::AnyMethod[iI"select:EFI"URI::Generic#select;FF:publico:RDoc::Markup::Document:@parts[S:RDoc::Markup::Heading:
leveli:	textI"	Args;Fo:RDoc::Markup::BlankLine o:RDoc::Markup::List:
@type:	NOTE:@items[o:RDoc::Markup::ListItem:@labelI"+components+;F;	[o:RDoc::Markup::Paragraph;	[I"3Multiple Symbol arguments defined in URI::HTTP;Fo; S;
;i;I"Description;Fo; o;;	[I"*Selects specified components from URI;Fo; S;
;i;I"
Usage;Fo; o:RDoc::Markup::Verbatim;	[I"  ;FI"require 'uri';FI"
;FI"
;FI"  ;FI"Duri = URI.parse('http://myuser:mypass@my.example.com/test.rbx');FI"
;FI"  ;FI"*p uri.select(:userinfo, :host, :path);FI"
;FI"  ;FI":# => ["myuser:mypass", "my.example.com", "/test.rbx"];F00[ I"(*components);F