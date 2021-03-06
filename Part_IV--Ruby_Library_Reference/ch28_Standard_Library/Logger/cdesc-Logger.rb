U:RDoc::NormalClass[i I"Logger:EF@I"Object;Fo:RDoc::Markup::Document:@parts[;S:RDoc::Markup::Heading:
leveli:	textI"Description;Fo:RDoc::Markup::BlankLine o:RDoc::Markup::Paragraph;[I"NThe Logger class provides a simple but sophisticated logging utility that;FI"Manyone can use because it's included in the Ruby 1.8.x standard library.;Fo; o;;[
I"QThe HOWTOs below give a code-based overview of Logger's usage, but the basic;FI"Lconcept is as follows.  You create a Logger object (output to a file or;FI"Lelsewhere), and use it to log messages.  The messages will have varying;FI"Mlevels (+info+, +error+, etc), reflecting their varying importance.  The;FI"%levels, and their meanings, are:;Fo; o:RDoc::Markup::List:
@type:	NOTE:@items[
o:RDoc::Markup::ListItem:@labelI"+FATAL+;F;[o;;[I":an unhandleable error that results in a program crash;Fo;;I"+ERROR+;F;[o;;[I"!a handleable error condition;Fo;;I"+WARN+;F;[o;;[I"a warning;Fo;;I"+INFO+;F;[o;;[I"8generic (useful) information about system operation;Fo;;I"+DEBUG+;F;[o;;[I")low-level information for developers;Fo; o;;[I"OSo each message has a level, and the Logger itself has a level, which acts;FI"Oas a filter, so you can control the amount of information emitted from the;FI"5logger without having to remove actual messages.;Fo; o;;[
I"MFor instance, in a production system, you may have your logger(s) set to;FI"I+INFO+ (or +WARN+ if you don't want the log files growing large with;FI"Orepetitive information).  When you are developing it, though, you probably;FI"Kwant to know about the program's internal state, and would set them to;FI"+DEBUG+.;Fo; S;	;
i;I"Example;Fo; o;;[I"9A simple example demonstrates the above explanation:;Fo; o:RDoc::Markup::Verbatim;[4I"  ;FI"log = Logger.new(STDOUT);FI"
;FI"  ;FI"log.level = Logger::WARN;FI"
;FI"
;FI"  ;FI" log.debug("Created logger");FI"
;FI"  ;FI" log.info("Program started");FI"
;FI"  ;FI"log.warn("Nothing to do!");FI"
;FI"
;FI"  ;FI"
begin;FI"
;FI"	    ;FI"#File.each_line(path) do |line|;FI"
;FI"      ;FI"$unless line =~ /^(\w+) = (.*)$/;FI"
;FI"        ;FI"/log.error("Line in wrong format: #{line}");FI"
;FI"      ;FI"end;FI"
;FI"	    ;FI"end;FI"
;FI"  ;FI"rescue => err;FI"
;FI"	    ;FI"+log.fatal("Caught exception; exiting");FI"
;FI"	    ;FI"log.fatal(err);FI"
;FI"  ;FI"end;FI"
;Fo;;[I"NBecause the Logger's level is set to +WARN+, only the warning, error, and;FI"Kfatal messages are recorded.  The debug and info messages are silently;FI"discarded.;Fo; S;	;
i;I"Features;Fo; o;;[	I"FThere are several interesting features that Logger provides, like;FI"Gauto-rolling of log files, setting the format of log messages, and;FI"Qspecifying a program name in conjunction with the message.  The next section;FI"+shows you how to achieve these things.;Fo; S;	;
i;I"HOWTOs;Fo; S;	;
i;I"How to create a logger;Fo; o;;[I"KThe options below give you various choices, in more or less increasing;FI"complexity.;Fo; o;;:NUMBER;[
o;;0;[o;;[I":Create a logger which logs messages to STDERR/STDOUT.;Fo; o;;[I"  ;FI" logger = Logger.new(STDERR);FI"
;FI"  ;FI" logger = Logger.new(STDOUT);FI"
;Fo;;0;[o;;[I"?Create a logger for the file which has the specified name.;Fo; o;;[I"  ;FI"'logger = Logger.new('logfile.log');FI"
;Fo;;0;[o;;[I",Create a logger for the specified file.;Fo; o;;[I"  ;FI"=file = File.open('foo.log', File::WRONLY | File::APPEND);FI"
;FI"  ;FI"G# To create new (and to remove old) logfile, add File::CREAT like;;FI"
;FI"  ;FI"J#   file = open('foo.log', File::WRONLY | File::APPEND | File::CREAT);FI"
;FI"  ;FI"logger = Logger.new(file);FI"
;Fo;;0;[o;;[I"NCreate a logger which ages logfile once it reaches a certain size.  Leave;FI"?10 "old log files" and each file is about 1,024,000 bytes.;Fo; o;;[I"  ;FI"0logger = Logger.new('foo.log', 10, 1024000);FI"
;Fo;;0;[o;;[I"=Create a logger which ages logfile daily/weekly/monthly.;Fo; o;;[I"  ;FI",logger = Logger.new('foo.log', 'daily');FI"
;FI"  ;FI"-logger = Logger.new('foo.log', 'weekly');FI"
;FI"  ;FI".logger = Logger.new('foo.log', 'monthly');FI"
;FS;	;
i;I"How to log a message;Fo; o;;[	I"NNotice the different methods (+fatal+, +error+, +info+) being used to log;FI"Mmessages of various levels.  Other methods in this family are +warn+ and;FI"L+debug+.  +add+ is used below to log a message of an arbitrary (perhaps;FI"dynamic) level.;Fo; o;;;;[	o;;0;[o;;[I"Message in block.;Fo; o;;[I"  ;FI"1logger.fatal { "Argument 'foo' not given." };FI"
;Fo;;0;[o;;[I"Message as a string.;Fo; o;;[I"  ;FI"0logger.error "Argument #{ @foo } mismatch.";FI"
;Fo;;0;[o;;[I"With progname.;Fo; o;;[I"  ;FI"4logger.info('initialize') { "Initializing..." };FI"
;Fo;;0;[o;;[I"With severity.;Fo; o;;[I"  ;FI"1logger.add(Logger::FATAL) { 'Fatal error!' };FI"
;FS;	;
i;I"How to close a logger;Fo; o;;[I"
     ;FI"logger.close;FI"
;FS;	;
i;I"Setting severity threshold;Fo; o;;;;[o;;0;[o;;[I"Original interface.;Fo; o;;[I"  ;FI"(logger.sev_threshold = Logger::WARN;FI"
;Fo;;0;[o;;[I"+Log4r (somewhat) compatible interface.;Fo; o;;[I"  ;FI" logger.level = Logger::INFO;FI"
;FI"
;FI"  ;FI"2DEBUG < INFO < WARN < ERROR < FATAL < UNKNOWN;FI"
;FS;	;
i;I"Format;Fo; o;;[I"JLog messages are rendered in the output stream in a certain format by;FI"?default.  The default format and a sample are shown below:;Fo; o;;[I"Log format:;Fo;;[I"  ;FI"ISeverityID, [Date Time mSec #pid] SeverityLabel -- ProgName: message;FI"
;Fo;;[I"Log sample:;Fo;;[I"  ;FI"II, [Wed Mar 03 02:34:24 JST 1999 895701 #19074]  INFO -- Main: info.;FI"
;Fo;;[I"<You may change the date and time format in this manner:;Fo; o;;[I"  ;FI"1logger.datetime_format = "%Y-%m-%d %H:%M:%S";FI"
;FI"        ;FI"!# e.g. "2004-01-03 00:54:26";FI"
;Fo;;[I"EYou may change the overall format with Logger#formatter= method.;Fo; o;;[I"  ;FI"Blogger.formatter = proc { |severity, datetime, progname, msg|;FI"
;FI"	    ;FI""#{datetime}: #{msg}\n";FI"
;FI"  ;FI"};FI"
;FI"        ;FI"<# e.g. "Thu Sep 22 08:51:08 GMT+9:00 2005: hello world";F[[I"formatter;FI"RW;F[I"
level;FI"RW;F[I"progname;FI"RW;F[[I"VERSION;Fo;;[ [I"ProgName;Fo;;[ [I"SEV_LABEL;Fo;;[o;;[I"-Severity label for logging. (max 5 char);F[[I"Severity;Fo;;[ [[I"
class;F[[:public[I"new;F[:protected[ [:private[ [I"instance;F[[;["<<I"add;FI"
close;FI"datetime_format;FI"datetime_format=;FI"
debug;FI"debug?;FI"
error;FI"error?;FI"
fatal;FI"fatal?;FI"	info;FI"
info?;FI"log;FI"unknown;FI"	warn;FI"
warn?;F[;[ [;[I"format_message;FI"format_severity;F