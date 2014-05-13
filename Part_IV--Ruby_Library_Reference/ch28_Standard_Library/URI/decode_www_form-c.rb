U:RDoc::AnyMethod[iI"decode_www_form:EFI"URI::decode_www_form;FT:publico:RDoc::Markup::Document:@parts[o:RDoc::Markup::Paragraph;	[I"3Decode URL-encoded form data from given +str+.;Fo:RDoc::Markup::BlankLine o;
;	[I"8This decodes application/x-www-form-urlencoded data;FI"*and returns array of key-value array.;FI"8This internally uses URI.decode_www_form_component.;Fo; o;
;	[I"O_charset_ hack is not supported now because the mapping from given charset;FI")to Ruby's encoding is not clear yet.;FI"Jsee also http://www.w3.org/TR/html5/syntax.html#character-encodings-0;Fo; o;
;	[I"LThis refers http://www.w3.org/TR/html5/forms.html#url-encoded-form-data;Fo; o;
;	[I"-ary = URI.decode_www_form("a=1&a=2&b=3");FI"Dp ary                  #=> [['a', '1'], ['a', '2'], ['b', '3']];FI"#p ary.assoc('a').last  #=> '1';FI"#p ary.assoc('b').last  #=> '3';FI"#p ary.rassoc('a').last #=> '2';FI"5p Hash[ary]            # => {"a"=>"2", "b"=>"3"};Fo; o;
;	[I";See URI.decode_www_form_component, URI.encode_www_form;F00[ I"(str, enc=Encoding::UTF_8);F