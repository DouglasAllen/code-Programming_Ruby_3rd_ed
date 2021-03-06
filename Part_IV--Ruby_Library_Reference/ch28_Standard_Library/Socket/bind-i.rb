U:RDoc::AnyMethod[iI"	bind:EFI"Socket#bind;FF:publico:RDoc::Markup::Document:@parts[o:RDoc::Markup::Paragraph;	[I"&Binds to the given local address.;Fo:RDoc::Markup::BlankLine S:RDoc::Markup::Heading:
leveli:	textI"Parameter;Fo:RDoc::Markup::List:
@type:BULLET:@items[o:RDoc::Markup::ListItem:@label0;	[o;
;	[I"Y+local_sockaddr+ - the +struct+ sockaddr contained in a string or an Addrinfo object;Fo; S;;i;I"Example;Fo:RDoc::Markup::Verbatim;	[%I"
     ;FI"require 'socket';FI"
;FI"
;FI"
     ;FI"# use Addrinfo;FI"
;FI"
     ;FI"+socket = Socket.new(:INET, :STREAM, 0);FI"
;FI"
     ;FI"1socket.bind(Addrinfo.tcp("127.0.0.1", 2222));FI"
;FI"
     ;FI"?p socket.local_address #=> #<Addrinfo: 127.0.0.1:2222 TCP>;FI"
;FI"
;FI"
     ;FI"# use struct sockaddr;FI"
;FI"
     ;FI"include Socket::Constants;FI"
;FI"
     ;FI"3socket = Socket.new( AF_INET, SOCK_STREAM, 0 );FI"
;FI"
     ;FI"<sockaddr = Socket.pack_sockaddr_in( 2200, 'localhost' );FI"
;FI"
     ;FI"socket.bind( sockaddr );FI"
;FS;;i;I"Unix-based Exceptions;Fo;
;	[I"QOn unix-based based systems the following system exceptions may be raised if;FI"the call to _bind_ fails:;Fo;;;;[o;;0;	[o;
;	[I"JErrno::EACCES - the specified _sockaddr_ is protected and the current;FI"0user does not have permission to bind to it;Fo;;0;	[o;
;	[I"CErrno::EADDRINUSE - the specified _sockaddr_ is already in use;Fo;;0;	[o;
;	[I"NErrno::EADDRNOTAVAIL - the specified _sockaddr_ is not available from the;FI"local machine;Fo;;0;	[o;
;	[I"NErrno::EAFNOSUPPORT - the specified _sockaddr_ is not a valid address for;FI"'the family of the calling +socket+;Fo;;0;	[o;
;	[I"KErrno::EBADF - the _sockaddr_ specified is not a valid file descriptor;Fo;;0;	[o;
;	[I"?Errno::EFAULT - the _sockaddr_ argument cannot be accessed;Fo;;0;	[o;
;	[I"IErrno::EINVAL - the +socket+ is already bound to an address, and the;FI"Lprotocol does not support binding to the new _sockaddr_ or the +socket+;FI"has been shut down.;Fo;;0;	[o;
;	[I"MErrno::EINVAL - the address length is not a valid length for the address;FI"family;Fo;;0;	[o;
;	[I"LErrno::ENAMETOOLONG - the pathname resolved had a length which exceeded;FI"PATH_MAX;Fo;;0;	[o;
;	[I"2Errno::ENOBUFS - no buffer space is available;Fo;;0;	[o;
;	[I"JErrno::ENOSR - there were insufficient STREAMS resources available to;FI"complete the operation;Fo;;0;	[o;
;	[I">Errno::ENOTSOCK - the +socket+ does not refer to a socket;Fo;;0;	[o;
;	[I"IErrno::EOPNOTSUPP - the socket type of the +socket+ does not support;FI"binding to an address;Fo; o;
;	[I"QOn unix-based based systems if the address family of the calling +socket+ is;FI"NSocket::AF_UNIX the follow exceptions may be raised if the call to _bind_;FI"fails:;Fo;;;;[o;;0;	[o;
;	[I"NErrno::EACCES - search permission is denied for a component of the prefix;FI"3path or write access to the +socket+ is denied;Fo;;0;	[o;
;	[I"DErrno::EDESTADDRREQ - the _sockaddr_ argument is a null pointer;Fo;;0;	[o;
;	[I"0Errno::EISDIR - same as Errno::EDESTADDRREQ;Fo;;0;	[o;
;	[I"'Errno::EIO - an i/o error occurred;Fo;;0;	[o;
;	[I"KErrno::ELOOP - too many symbolic links were encountered in translating;FI"the pathname in _sockaddr_;Fo;;0;	[o;
;	[I"GErrno::ENAMETOOLLONG - a component of a pathname exceeded NAME_MAX;FI"Ccharacters, or an entire pathname exceeded PATH_MAX characters;Fo;;0;	[o;
;	[I"OErrno::ENOENT - a component of the pathname does not name an existing file;FI"'or the pathname is an empty string;Fo;;0;	[o;
;	[I"RErrno::ENOTDIR - a component of the path prefix of the pathname in _sockaddr_;FI"is not a directory;Fo;;0;	[o;
;	[I"CErrno::EROFS - the name would reside on a read only filesystem;Fo; S;;i;I"Windows Exceptions;Fo;
;	[I"HOn Windows systems the following system exceptions may be raised if;FI"the call to _bind_ fails:;Fo;;;;[o;;0;	[o;
;	[I"*Errno::ENETDOWN-- the network is down;Fo;;0;	[o;
;	[I"FErrno::EACCES - the attempt to connect the datagram socket to the;FI"broadcast address failed;Fo;;0;	[o;
;	[I"EErrno::EADDRINUSE - the socket's local address is already in use;Fo;;0;	[o;
;	[I"QErrno::EADDRNOTAVAIL - the specified address is not a valid address for this;FI"computer;Fo;;0;	[o;
;	[I"NErrno::EFAULT - the socket's internal address or address length parameter;FI"Dis too small or is not a valid part of the user space addressed;Fo;;0;	[o;
;	[I"@Errno::EINVAL - the +socket+ is already bound to an address;Fo;;0;	[o;
;	[I"2Errno::ENOBUFS - no buffer space is available;Fo;;0;	[o;
;	[I"GErrno::ENOTSOCK - the +socket+ argument does not refer to a socket;Fo; S;;i;I"See;Fo;;;;[o;;0;	[o;
;	[I",bind manual pages on unix-based systems;Fo;;0;	[o;
;	[I"=bind function in Microsoft's Winsock functions reference;FI"&socket.bind(local_sockaddr) => 0
;F0[ I"	(p1);F