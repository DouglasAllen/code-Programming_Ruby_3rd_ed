U:RDoc::NormalModule[i I"DRb:EF@0o:RDoc::Markup::Document:@parts[GS:RDoc::Markup::Heading:
leveli:	textI"Overview;Fo:RDoc::Markup::BlankLine o:RDoc::Markup::Paragraph;[
I"EdRuby is a distributed object system for Ruby.  It is written in;FI"Hpure Ruby and uses its own protocol.  No add-in services are needed;FI"Hbeyond those provided by the Ruby runtime, such as TCP sockets.  It;FI"Cdoes not rely on or interoperate with other distributed object;FI")systems such as CORBA, RMI, or .NET.;Fo; o;;[I"FdRuby allows methods to be called in one Ruby process upon a Ruby;FI"Eobject located in another Ruby process, even on another machine.;FI"CReferences to objects can be passed between processes.  Method;FI"Darguments and return values are dumped and loaded in marshalled;FI"Iformat.  All of this is done transparently to both the caller of the;FI"9remote method and the object that it is called upon.;Fo; o;;[I">An object in a remote process is locally represented by a;FI"CDRb::DRbObject instance.  This acts as a sort of proxy for the;FI"Dremote object.  Methods called upon this DRbObject instance are;FI"Iforwarded to its remote object.  This is arranged dynamically at run;FI"Btime.  There are no statically declared interfaces for remote;FI""objects, such as CORBA's IDL.;Fo; o;;[I"DdRuby calls made into a process are handled by a DRb::DRbServer;FI"Ginstance within that process.  This reconstitutes the method call,;FI"Iinvokes it upon the specified local object, and returns the value to;FI"Hthe remote caller.  Any object can receive calls over dRuby.  There;FI"Bis no need to implement a special interface, or mixin special;FI"Efunctionality.  Nor, in the general case, does an object need to;FI"Dexplicitly register itself with a DRbServer in order to receive;FI"dRuby calls.;Fo; o;;[I"FOne process wishing to make dRuby calls upon another process must;FI"Csomehow obtain an initial reference to an object in the remote;FI"Eprocess by some means other than as the return value of a remote;FI"Imethod call, as there is initially no remote object reference it can;FI"Finvoke a method upon.  This is done by attaching to the server by;FI"7URI.  Each DRbServer binds itself to a URI such as;FI"I'druby://example.com:8787'.  A DRbServer can have an object attached;FI"Gto it that acts as the server's *front* *object*.  A DRbObject can;FI"Cbe explicitly created from the server's URI.  This DRbObject's;FI"Hremote object will be the server's front object.  This front object;FI"Hcan then return references to other Ruby objects in the DRbServer's;FI"process.;Fo; o;;[
I"HMethod calls made over dRuby behave largely the same as normal Ruby;FI"Fmethod calls made within a process.  Method calls with blocks are;FI"Esupported, as are raising exceptions.  In addition to a method's;FI"<standard errors, a dRuby call may also raise one of the;FI"IdRuby-specific errors, all of which are subclasses of DRb::DRbError.;Fo; o;;[I"GAny type of object can be passed as an argument to a dRuby call or;FI"Greturned as its return value.  By default, such objects are dumped;FI"Gor marshalled at the local end, then loaded or unmarshalled at the;FI"Gremote end.  The remote end therefore receives a copy of the local;FI"Iobject, not a distributed reference to it; methods invoked upon this;FI"Gcopy are executed entirely in the remote process, not passed on to;FI"Fthe local original.  This has semantics similar to pass-by-value.;Fo; o;;[I"HHowever, if an object cannot be marshalled, a dRuby reference to it;FI"His passed or returned instead.  This will turn up at the remote end;FI"Ias a DRbObject instance.  All methods invoked upon this remote proxy;FI"Iare forwarded to the local object, as described in the discussion of;FI"?DRbObjects.  This has semantics similar to the normal Ruby;FI"pass-by-reference.;Fo; o;;[	I"EThe easiest way to signal that we want an otherwise marshallable;FI"Eobject to be passed or returned as a DRbObject reference, rather;FI":than marshalled and sent as a copy, is to include the;FI"#DRb::DRbUndumped mixin module.;Fo; o;;[I"FdRuby supports calling remote methods with blocks.  As blocks (or;FI"Grather the Proc objects that represent them) are not marshallable,;FI"Dthe block executes in the local, not the remote, context.  Each;FI"Gvalue yielded to the block is passed from the remote object to the;FI"Elocal block, then the value returned by each block invocation is;FI"Hpassed back to the remote execution context to be collected, before;FI"Fthe collected values are finally returned to the local context as;FI"/the return value of the method invocation.;Fo; S;	;
i;I"Examples of usage;Fo; o;;[I"DFor more dRuby samples, see the +samples+ directory in the full;FI"dRuby distribution.;Fo; S;	;
i;I" dRuby in client/server mode;Fo; o;;[I";This illustrates setting up a simple client-server drb;FI"Dsystem.  Run the server and client code in different terminals,;FI"$starting the server code first.;Fo; S;	;
i	;I"Server code;Fo; o:RDoc::Markup::Verbatim;[6I"  ;FI"require 'drb/drb';FI"
;FI"
;FI"  ;FI"+# The URI for the server to connect to;FI"
;FI"  ;FI"!URI="druby://localhost:8787";FI"
;FI"
;FI"  ;FI"class TimeServer;FI"
;FI"
;FI"	    ;FI"def get_current_time;FI"
;FI"      ;FI"return Time.now;FI"
;FI"	    ;FI"end;FI"
;FI"
;FI"  ;FI"end;FI"
;FI"
;FI"  ;FI"5# The object that handles requests on the server;FI"
;FI"  ;FI" FRONT_OBJECT=TimeServer.new;FI"
;FI"
;FI"  ;FI"-$SAFE = 1   # disable eval() and friends;FI"
;FI"
;FI"  ;FI")DRb.start_service(URI, FRONT_OBJECT);FI"
;FI"  ;FI"?# Wait for the drb server thread to finish before exiting.;FI"
;FI"  ;FI"DRb.thread.join;FI"
;FS;	;
i	;I"Client code;Fo; o;;[)I"  ;FI"require 'drb/drb';FI"
;FI"
;FI"  ;FI"# The URI to connect to;FI"
;FI"  ;FI"(SERVER_URI="druby://localhost:8787";FI"
;FI"
;FI"  ;FI"3# Start a local DRbServer to handle callbacks.;FI"
;FI"  ;FI"#;FI"
;FI"  ;FI"A# Not necessary for this small example, but will be required;FI"
;FI"  ;FI"B# as soon as we pass a non-marshallable object as an argument;FI"
;FI"  ;FI"# to a dRuby call.;FI"
;FI"  ;FI"DRb.start_service;FI"
;FI"
;FI"  ;FI"4timeserver = DRbObject.new_with_uri(SERVER_URI);FI"
;FI"  ;FI"%puts timeserver.get_current_time;FI"
;FS;	;
i;I"Remote objects under dRuby;Fo; o;;[
I"@This example illustrates returning a reference to an object;FI"@from a dRuby call.  The Logger instances live in the server;FI"Eprocess.  References to them are returned to the client process,;FI"?where methods can be invoked upon them.  These methods are;FI"$executed in the server process.;Fo; S;	;
i	;I"Server code;Fo; o;;[�I"  ;FI"require 'drb/drb';FI"
;FI"
;FI"  ;FI"!URI="druby://localhost:8787";FI"
;FI"
;FI"  ;FI"class Logger;FI"
;FI"
;FI"      ;FI"<# Make dRuby send Logger instances as dRuby references,;FI"
;FI"      ;FI"# not copies.;FI"
;FI"      ;FI"include DRb::DRbUndumped;FI"
;FI"
;FI"      ;FI"def initialize(n, fname);FI"
;FI"          ;FI"@name = n;FI"
;FI"          ;FI"@filename = fname;FI"
;FI"      ;FI"end;FI"
;FI"
;FI"      ;FI"def log(message);FI"
;FI"          ;FI"%File.open(@filename, "a") do |f|;FI"
;FI"              ;FI"0f.puts("#{Time.now}: #{@name}: #{message}");FI"
;FI"          ;FI"end;FI"
;FI"      ;FI"end;FI"
;FI"
;FI"  ;FI"end;FI"
;FI"
;FI"  ;FI"D# We have a central object for creating and retrieving loggers.;FI"
;FI"  ;FI"C# This retains a local reference to all loggers created.  This;FI"
;FI"  ;FI"B# is so an existing logger can be looked up by name, but also;FI"
;FI"  ;FI"@# to prevent loggers from being garbage collected.  A dRuby;FI"
;FI"  ;FI"C# reference to an object is not sufficient to prevent it being;FI"
;FI"  ;FI"# garbage collected!;FI"
;FI"  ;FI"class LoggerFactory;FI"
;FI"
;FI"      ;FI"def initialize(bdir);FI"
;FI"          ;FI"@basedir = bdir;FI"
;FI"          ;FI"@loggers = {};FI"
;FI"      ;FI"end;FI"
;FI"
;FI"      ;FI"def get_logger(name);FI"
;FI"          ;FI"if !@loggers.has_key? name;FI"
;FI"              ;FI"7# make the filename safe, then declare it to be so;FI"
;FI"              ;FI",fname = name.gsub(/[.\/]/, "_").untaint;FI"
;FI"              ;FI">@loggers[name] = Logger.new(name, @basedir + "/" + fname);FI"
;FI"          ;FI"end;FI"
;FI"          ;FI"return @loggers[name];FI"
;FI"      ;FI"end;FI"
;FI"
;FI"  ;FI"end;FI"
;FI"
;FI"  ;FI"0FRONT_OBJECT=LoggerFactory.new("/tmp/dlog");FI"
;FI"
;FI"  ;FI"-$SAFE = 1   # disable eval() and friends;FI"
;FI"
;FI"  ;FI")DRb.start_service(URI, FRONT_OBJECT);FI"
;FI"  ;FI"DRb.thread.join;FI"
;FS;	;
i	;I"Client code;Fo; o;;[*I"  ;FI"require 'drb/drb';FI"
;FI"
;FI"  ;FI"(SERVER_URI="druby://localhost:8787";FI"
;FI"
;FI"  ;FI"DRb.start_service;FI"
;FI"
;FI"  ;FI"3log_service=DRbObject.new_with_uri(SERVER_URI);FI"
;FI"
;FI"  ;FI"/["loga", "logb", "logc"].each do |logname|;FI"
;FI"
;FI"      ;FI"+logger=log_service.get_logger(logname);FI"
;FI"
;FI"      ;FI" logger.log("Hello, world!");FI"
;FI"      ;FI""logger.log("Goodbye, world!");FI"
;FI"      ;FI"logger.log("=== EOT ===");FI"
;FI"
;FI"  ;FI"end;FI"
;FS;	;
i;I"Security;Fo; o;;[
I"GAs with all network services, security needs to be considered when;FI"Husing dRuby.  By allowing external access to a Ruby object, you are;FI"Cnot only allowing outside clients to call the methods you have;FI"Fdefined for that object, but by default to execute arbitrary Ruby;FI"2code on your server.  Consider the following:;Fo; o;;[I"   ;FI"# !!! UNSAFE CODE !!!;FI"
;FI"   ;FI"Aro = DRbObject::new_with_uri("druby://your.server.com:8989");FI"
;FI"   ;FI"class << ro;FI"
;FI"
     ;FI"Eundef :instance_eval  # force call to be passed to remote object;FI"
;FI"   ;FI"end;FI"
;FI"   ;FI"#ro.instance_eval("`rm -rf *`");FI"
;Fo;;[
I"CThe dangers posed by instance_eval and friends are such that a;FI"ADRbServer should generally be run with $SAFE set to at least;FI"Dlevel 1.  This will disable eval() and related calls on strings;FI"Gpassed across the wire.  The sample usage code given above follows;FI"this practice.;Fo; o;;[
I"AA DRbServer can be configured with an access control list to;FI"Gselectively allow or deny access from specified IP addresses.  The;FI"Imain druby distribution provides the ACL class for this purpose.  In;FI"Ggeneral, this mechanism should only be used alongside, rather than;FI"+as a replacement for, a good firewall.;Fo; S;	;
i;I"dRuby internals;Fo; o;;[
I"FdRuby is implemented using three main components: a remote method;FI"?call marshaller/unmarshaller; a transport protocol; and an;FI"HID-to-object mapper.  The latter two can be directly, and the first;FI"Findirectly, replaced, in order to provide different behaviour and;FI"capabilities.;Fo; o;;[I"IMarshalling and unmarshalling of remote method calls is performed by;FI"Fa DRb::DRbMessage instance.  This uses the Marshal module to dump;FI"Ethe method call before sending it over the transport layer, then;FI"Dreconstitute it at the other end.  There is normally no need to;FI"Dreplace this component, and no direct way is provided to do so.;FI"DHowever, it is possible to implement an alternative marshalling;FI"@scheme as part of an implementation of the transport layer.;Fo; o;;[I"EThe transport layer is responsible for opening client and server;FI"Bnetwork connections and forwarding dRuby request across them.;FI"GNormally, it uses DRb::DRbMessage internally to manage marshalling;FI":and unmarshalling.  The transport layer is managed by;FI">DRb::DRbProtocol.  Multiple protocols can be installed in;FI"IDRbProtocol at the one time; selection between them is determined by;FI"Bthe scheme of a dRuby URI.  The default transport protocol is;FI"8selected by the scheme 'druby:', and implemented by;FI";DRb::DRbTCPSocket.  This uses plain TCP/IP sockets for;FI"Hcommunication.  An alternative protocol, using UNIX domain sockets,;FI"Fis implemented by DRb::DRbUNIXSocket in the file drb/unix.rb, and;FI"Eselected by the scheme 'drbunix:'.  A sample implementation over;FI"AHTTP can be found in the samples accompanying the main dRuby;FI"distribution.;Fo; o;;[I"DThe ID-to-object mapping component maps dRuby object ids to the;FI"Fobjects they refer to, and vice versa.  The implementation to use;FI"Gcan be specified as part of a DRb::DRbServer's configuration.  The;FI"Fdefault implementation is provided by DRb::DRbIdConv.  It uses an;FI"Hobject's ObjectSpace id as its dRuby id.  This means that the dRuby;FI"Ireference to that object only remains meaningful for the lifetime of;FI"Dthe object's process and the lifetime of the object within that;FI"Hprocess.  A modified implementation is provided by DRb::TimerIdConv;FI"Iin the file drb/timeridconv.rb.  This implementation retains a local;FI"Dreference to all objects exported over dRuby for a configurable;FI"Fperiod of time (defaulting to ten minutes), to prevent them being;FI"Ggarbage-collected within this time.  Another sample implementation;FI"His provided in sample/name.rb in the main dRuby distribution.  This;FI"Iallows objects to specify their own id or "name".  A dRuby reference;FI"Ccan be made persistent across processes by having each process;FI"2register an object using the same dRuby name.;FS:RDoc::Markup::Rule:weightio;;[I"for ruby-1.8.0;F[[I"primary_server;FI"RW;F[@@[ [ [[I"
class;F[[:public[I"config;FI"current_server;FI"fetch_server;FI"
front;FI"
here?;FI"install_acl;FI"install_id_conv;FI"
mutex;FI"regist_server;FI"remove_server;FI"start_service;FI"stop_service;FI"thread;FI"
to_id;FI"to_obj;FI"uri;F[:protected[ [:private[ [I"instance;F[[;[ [;[ [;[@@@@@@@@@@@@@@@@