U:RDoc::AnyMethod[iI"post_match:EFI"StringScanner#post_match;FF:publico:RDoc::Markup::Document:@parts[o:RDoc::Markup::Paragraph;	[I"\Return the <i><b>post</b>-match</i> (in the regular expression sense) of the last scan.;Fo:RDoc::Markup::BlankLine o:RDoc::Markup::Verbatim;	[I"  ;FI")s = StringScanner.new('test string');FI"
;FI"  ;FI"(s.scan(/\w+/)           # -> "test";FI"
;FI"  ;FI"%s.scan(/\s+/)           # -> " ";FI"
;FI"  ;FI"(s.pre_match             # -> "test";FI"
;FI"  ;FI"*s.post_match            # -> "string";F00[ I"();F