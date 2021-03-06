U:RDoc::AnyMethod[iI"timestamp:EFI"$Socket::AncillaryData#timestamp;FF:publico:RDoc::Markup::Document:@parts[	o:RDoc::Markup::Paragraph;	[I",returns the timestamp as a time object.;Fo:RDoc::Markup::BlankLine o;
;	[I"5_ancillarydata_ should be one of following type:;Fo:RDoc::Markup::List:
@type:BULLET:@items[o:RDoc::Markup::ListItem:@label0;	[o;
;	[I"bSOL_SOCKET/SCM_TIMESTAMP (micro second) GNU/Linux, FreeBSD, NetBSD, OpenBSD, Solaris, MacOS X;Fo;;0;	[o;
;	[I"7SOL_SOCKET/SCM_TIMESTAMPNS (nano second) GNU/Linux;Fo;;0;	[
o;
;	[I"5SOL_SOCKET/SCM_BINTIME (2**(-64) second) FreeBSD;Fo; o;
;	[I",Addrinfo.udp("127.0.0.1", 0).bind {|s1|;Fo:RDoc::Markup::Verbatim;	[#I"  ;FI",Addrinfo.udp("127.0.0.1", 0).bind {|s2|;FI"
;FI"	    ;FI"-s1.setsockopt(:SOCKET, :TIMESTAMP, true);FI"
;FI"	    ;FI"%s2.send "a", 0, s1.local_address;FI"
;FI"	    ;FI"ctl = s1.recvmsg.last;FI"
;FI"	    ;FI"\p ctl    #=> #<Socket::AncillaryData: INET SOCKET TIMESTAMP 2009-02-24 17:35:46.775581>;FI"
;FI"	    ;FI"t = ctl.timestamp;FI"
;FI"	    ;FI"+p t      #=> 2009-02-24 17:35:46 +0900;FI"
;FI"	    ;FI"p t.usec #=> 775581;FI"
;FI"	    ;FI"p t.nsec #=> 775581000;FI"
;FI"  ;FI"};FI"
;Fo;
;	[I"};FI"%ancillarydata.timestamp => time
;F0[ I"();F