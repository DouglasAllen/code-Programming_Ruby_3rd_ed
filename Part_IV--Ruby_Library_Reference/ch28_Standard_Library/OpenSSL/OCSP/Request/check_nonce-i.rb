U:RDoc::AnyMethod[iI"check_nonce:EFI"'OpenSSL::OCSP::Request#check_nonce;FF:publico:RDoc::Markup::Document:@parts[
o:RDoc::Markup::Paragraph;	[I"4Check nonce validity in a request and response.;FI""Return value reflects result:;Fo:RDoc::Markup::Verbatim;	[I" ;FI"!1: nonces present and equal.;FI"
;FI" ;FI"2: nonces both absent.;FI"
;FI" ;FI"'3: nonce present in response only.;FI"
;FI" ;FI"*0: nonces both present and not equal.;FI"
;Fo;
;	[I"-1: nonce in request only.;Fo:RDoc::Markup::BlankLine o;;	[I" ;FI"6For most responders clients can check return > 0.;FI"
;FI" ;FI":If responder doesn't handle nonces return != 0 may be;FI"
;FI" ;FI"/necessary. return == 0 is always an error.;F00[ I"	(p1);F