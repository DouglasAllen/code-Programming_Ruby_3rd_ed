U:RDoc::AnyMethod[iI"new:EFI"Socket::new;FT:publico:RDoc::Markup::Document:@parts[o:RDoc::Markup::Paragraph;	[I"!Creates a new socket object.;Fo:RDoc::Markup::BlankLine o;
;	[I"S_domain_ should be a communications domain such as: :INET, :INET6, :UNIX, etc.;Fo; o;
;	[I"L_socktype_ should be a socket type such as: :STREAM, :DGRAM, :RAW, etc.;Fo; o;
;	[I";_protocol_ should be a protocol defined in the domain.;FI"This is optional.;FI".If it is not given, 0 is used internally.;Fo; o:RDoc::Markup::Verbatim;	[I"  ;FI",Socket.new(:INET, :STREAM) # TCP socket;FI"
;FI"  ;FI",Socket.new(:INET, :DGRAM)  # UDP socket;FI"
;FI"  ;FI"4Socket.new(:UNIX, :STREAM) # UNIX stream socket;FI"
;FI"  ;FI"6Socket.new(:UNIX, :DGRAM)  # UNIX datagram socket;FI"9Socket.new(domain, socktype [, protocol]) => socket
;F0[ I"
(...);F