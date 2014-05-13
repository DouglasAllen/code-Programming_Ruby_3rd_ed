U:RDoc::AnyMethod[iI"entitydecl:EFI"#REXML::SAX2Listener#entitydecl;FF:publico:RDoc::Markup::Document:@parts[o:RDoc::Markup::Paragraph;	[	I"<!ENTITY ...>;FI"AThe argument passed to this method is an array of the entity;FI"Fdeclaration.  It can be in a number of formats, but in general it;FI"returns (example, result):;Fo:RDoc::Markup::Verbatim;	[.I" ;FI"<!ENTITY % YN '"Yes"'>;FI"
;FI" ;FI"#["%", "YN", "'\"Yes\"'", "\""];FI" ;FI"
;FI" ;FI"<!ENTITY % YN 'Yes'>;FI"
;FI" ;FI"["%", "YN", "'Yes'", "s"];FI" ;FI"
;FI" ;FI"(<!ENTITY WhatHeSaid "He said %YN;">;FI"
;FI" ;FI"-["WhatHeSaid", "\"He said %YN;\"", "YN"];FI" ;FI"
;FI" ;FI"V<!ENTITY open-hatch SYSTEM "http://www.textuality.com/boilerplate/OpenHatch.xml">;FI"
;FI" ;FI"X["open-hatch", "SYSTEM", "\"http://www.textuality.com/boilerplate/OpenHatch.xml\""];FI" ;FI"
;FI" ;FI"�<!ENTITY open-hatch PUBLIC "-//Textuality//TEXT Standard open-hatch boilerplate//EN" "http://www.textuality.com/boilerplate/OpenHatch.xml">;FI"
;FI" ;FI"�["open-hatch", "PUBLIC", "\"-//Textuality//TEXT Standard open-hatch boilerplate//EN\"", "\"http://www.textuality.com/boilerplate/OpenHatch.xml\""];FI" ;FI"
;FI" ;FI"C<!ENTITY hatch-pic SYSTEM "../grafix/OpenHatch.gif" NDATA gif>;FI"
;FI" ;FI"_["hatch-pic", "SYSTEM", "\"../grafix/OpenHatch.gif\"", "\n\t\t\t\t\t\t\tNDATA gif", "gif"];FI" ;F00[ I"(name, decl);F