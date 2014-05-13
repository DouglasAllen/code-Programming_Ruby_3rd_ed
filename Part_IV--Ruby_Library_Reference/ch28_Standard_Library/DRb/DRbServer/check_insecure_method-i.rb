U:RDoc::AnyMethod[iI"check_insecure_method:EFI")DRb::DRbServer#check_insecure_method;FF:publico:RDoc::Markup::Document:@parts[
o:RDoc::Markup::Paragraph;	[I"/Check that a method is callable via dRuby.;Fo:RDoc::Markup::BlankLine o;
;	[I"I+obj+ is the object we want to invoke the method on. +msg_id+ is the;FI"method name, as a Symbol.;Fo; o;
;	[I"BIf the method is an insecure method (see #insecure_method?) a;FI"ESecurityError is thrown.  If the method is private or undefined,;FI"a NameError is thrown.;F00[ I"(obj, msg_id);F