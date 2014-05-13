U:RDoc::NormalClass[i I"PullParser:EFI"REXML::Parsers::PullParser;FI"Object;Fo:RDoc::Markup::Document:@parts[S:RDoc::Markup::Heading:
leveli:	textI"Using the Pull Parser;Fo:RDoc::Markup::Paragraph;[I"><em>This API is experimental, and subject to change.</em>;Fo:RDoc::Markup::Verbatim;[I" ;FI"?parser = PullParser.new( "<a>text<b att='val'/>txet</a>" );FI"
;FI" ;FI"while parser.has_next?;FI"
;FI"   ;FI"res = parser.next;FI"
;FI"   ;FI";puts res[1]['att'] if res.start_tag? and res[0] == 'b';FI"
;FI" ;FI"end;FI"
;Fo;;[I"KSee the PullEvent class for information on the content of the results.;FI"LThe data is identical to the arguments passed for the various events to;FI"the StreamListener API.;Fo:RDoc::Markup::BlankLine o;;[I"Notice that:;Fo;;[I" ;FI"1parser = PullParser.new( "<a>BAD DOCUMENT" );FI"
;FI" ;FI"while parser.has_next?;FI"
;FI"   ;FI"res = parser.next;FI"
;FI"   ;FI"raise res[1] if res.error?;FI"
;FI" ;FI"end;FI"
;Fo;;[I"3Nat Price gave me some good ideas for the API.;F[ [ [[I"XMLTokens;Fo;;[ [[I"
class;F[[:public[I"new;F[:protected[ [:private[ [I"instance;F[[;[
I"add_listener;FI"	each;FI"	peek;FI"	pull;FI"unshift;F[;[ [;[ 