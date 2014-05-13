U:RDoc::NormalClass[i I"BaseParser:EFI"REXML::Parsers::BaseParser;FI"Object;Fo:RDoc::Markup::Document:@parts[S:RDoc::Markup::Heading:
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
;Fo;;[I"3Nat Price gave me some good ideas for the API.;F[[I"source;FI"R;F[E[I"LETTER;Fo;;[ [I"
DIGIT;Fo;;[ [I"COMBININGCHAR;Fo;;[ [I"EXTENDER;Fo;;[ [I"NCNAME_STR;Fo;;[ [I"NAME_STR;Fo;;[ [I"UNAME_STR;Fo;;[ [I"NAMECHAR;Fo;;[ [I"	NAME;Fo;;[ [I"NMTOKEN;Fo;;[ [I"NMTOKENS;Fo;;[ [I"REFERENCE;Fo;;[ [I"REFERENCE_RE;Fo;;[ [I"DOCTYPE_START;Fo;;[ [I"DOCTYPE_PATTERN;Fo;;[ [I"ATTRIBUTE_PATTERN;Fo;;[ [I"COMMENT_START;Fo;;[ [I"COMMENT_PATTERN;Fo;;[ [I"CDATA_START;Fo;;[ [I"CDATA_END;Fo;;[ [I"CDATA_PATTERN;Fo;;[ [I"XMLDECL_START;Fo;;[ [I"XMLDECL_PATTERN;Fo;;[ [I"INSTRUCTION_START;Fo;;[ [I"INSTRUCTION_PATTERN;Fo;;[ [I"TAG_MATCH;Fo;;[ [I"CLOSE_MATCH;Fo;;[ [I"VERSION;Fo;;[ [I"ENCODING;Fo;;[ [I"STANDALONE;Fo;;[ [I"ENTITY_START;Fo;;[ [I"IDENTITY;Fo;;[ [I"ELEMENTDECL_START;Fo;;[ [I"ELEMENTDECL_PATTERN;Fo;;[ [I"SYSTEMENTITY;Fo;;[ [I"ENUMERATION;Fo;;[ [I"NOTATIONTYPE;Fo;;[ [I"ENUMERATEDTYPE;Fo;;[ [I"ATTTYPE;Fo;;[ [I"ATTVALUE;Fo;;[ [I"DEFAULTDECL;Fo;;[ [I"ATTDEF;Fo;;[ [I"ATTDEF_RE;Fo;;[ [I"ATTLISTDECL_START;Fo;;[ [I"ATTLISTDECL_PATTERN;Fo;;[ [I"NOTATIONDECL_START;Fo;;[ [I"PUBLIC;Fo;;[ [I"SYSTEM;Fo;;[ [I"TEXT_PATTERN;Fo;;[ [I"PUBIDCHAR;Fo;;[o;;[I"Entity constants;F[I"SYSTEMLITERAL;Fo;;[ [I"PUBIDLITERAL;Fo;;[ [I"EXTERNALID;Fo;;[ [I"NDATADECL;Fo;;[ [I"PEREFERENCE;Fo;;[ [I"ENTITYVALUE;Fo;;[ [I"
PEDEF;Fo;;[ [I"ENTITYDEF;Fo;;[ [I"PEDECL;Fo;;[ [I"GEDECL;Fo;;[ [I"ENTITYDECL;Fo;;[ [I"EREFERENCE;Fo;;[ [I"DEFAULT_ENTITIES;Fo;;[ [I"MISSING_ATTRIBUTE_QUOTES;Fo;;[o;;[I"I                                                                    ;FI"
;Fo;;[I"EThese are patterns to identify common markup errors, to make the;FI"%error messages more informative.;Fo;;[I"I                                                                    ;F[ [[I"
class;F[[:public[I"new;F[:protected[ [:private[ [I"instance;F[[;[I"add_listener;FI"empty?;FI"entity;FI"has_next?;FI"normalize;FI"	peek;FI"position;FI"	pull;FI"stream=;FI"unnormalize;FI"unshift;F[;[ [;[ 