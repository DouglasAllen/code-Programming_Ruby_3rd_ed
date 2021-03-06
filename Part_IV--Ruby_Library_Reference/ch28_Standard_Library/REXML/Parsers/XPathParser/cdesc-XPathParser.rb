U:RDoc::NormalClass[i I"XPathParser:EFI" REXML::Parsers::XPathParser;FI"Object;Fo:RDoc::Markup::Document:@parts[o:RDoc::Markup::Paragraph;[	I"NYou don't want to use this class.  Really.  Use XPath, which is a wrapper;FI"Ifor this class.  Believe me.  You don't want to poke around in here.;FI"NThere is strange, dark magic at work in this code.  Beware.  Go back!  Go;FI"back while you still can!;F[ [[I"LITERAL;Fo;;[ [I"	AXIS;Fo;;[o;	;[I"RelativeLocationPath;Fo:RDoc::Markup::Verbatim;[I"  ;FI">|                                                    Step;FI"
;FI"	    ;FI"D| (AXIS_NAME '::' | '@' | '')                     AxisSpecifier;FI"
;FI"      ;FI"NodeTest;FI"
;FI"        ;FI"Predicate;FI"
;FI"	    ;FI"F| '.' | '..'                                      AbbreviatedStep;FI"
;FI"  ;FI"%|  RelativeLocationPath '/' Step;FI"
;FI"  ;FI"%| RelativeLocationPath '//' Step;F[I"NCNAMETEST;Fo;;[o;
;[I" ;FI"%Returns a 1-1 map of the nodeset;FI"
;FI" ;FI"4The contents of the resulting array are either:;FI"
;FI"   ;FI"$true/false, if a positive match;FI"
;FI"   ;FI"String, if a name match;FI"
;Fo;	;[I"NodeTest;Fo;
;[I"  ;FI"=| ('*' | NCNAME ':' '*' | QNAME)                NameTest;FI"
;FI"  ;FI">| NODE_TYPE '(' ')'                              NodeType;FI"
;FI"  ;FI"7| PI '(' LITERAL ')'                            PI;FI"
;FI"	    ;FI"<| '[' expr ']'                                Predicate;F[I"
QNAME;Fo;;[ [I"NODE_TYPE;Fo;;[ [I"PI;Fo;;[ [I"VARIABLE_REFERENCE;Fo;;[o;	;[
I"| VARIABLE_REFERENCE;FI"| '(' expr ')';FI"| LITERAL;FI"| NUMBER;FI"| FunctionCall;F[I"NUMBER;Fo;;[ [I"NT;Fo;;[ [[I"XMLTokens;Fo;;[ [[I"
class;F[[:public[ [:protected[ [:private[ [I"instance;F[[;[I"abbreviate;FI"expand;FI"namespaces=;FI"
parse;FI"predicate;FI"predicate_to_string;F[;[ [;[I"AdditiveExpr;FI"AndExpr;FI"EqualityExpr;FI"FilterExpr;FI"FunctionCall;FI"LocationPath;FI"MultiplicativeExpr;FI"NodeTest;FI"OrExpr;FI"PathExpr;FI"Predicate;FI"PrimaryExpr;FI"RelationalExpr;FI"RelativeLocationPath;FI"UnaryExpr;FI"UnionExpr;FI"get_group;FI"parse_args;F