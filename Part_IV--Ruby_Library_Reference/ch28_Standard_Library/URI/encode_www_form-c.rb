U:RDoc::AnyMethod[iI"encode_www_form:EFI"URI::encode_www_form;FT:publico:RDoc::Markup::Document:@parts[o:RDoc::Markup::Paragraph;	[I"6Generate URL-encoded form data from given +enum+.;Fo:RDoc::Markup::BlankLine o;
;	[I"KThis generates application/x-www-form-urlencoded data defined in HTML5;FI"%from given an Enumerable object.;Fo; o;
;	[I"=This internally uses URI.encode_www_form_component(str).;Fo; o;
;	[	I"NThis doesn't convert encodings of give items, so convert them before call;FI"Lthis method if you want to send data as other than original encoding or;FI"Omixed encoding data. (strings which is encoded in HTML5 ASCII incompatible;FI"$encoding is converted to UTF-8);Fo; o;
;	[I"MThis doesn't treat files. When you send a file, use multipart/form-data.;Fo; o;
;	[I"LThis refers http://www.w3.org/TR/html5/forms.html#url-encoded-form-data;Fo; o;
;	[I";See URI.encode_www_form_component, URI.decode_www_form;F00[ I"(enum);F