U:RDoc::AnyMethod[iI"	test:EFI"Kernel#test;FF:publico:RDoc::Markup::Document:@parts[	o:RDoc::Markup::Verbatim;	[I" ;FI"
;FI" ;FI"=Uses the integer <i>aCmd</i> to perform various tests on;FI"
;FI" ;FI"<<i>file1</i> (first table below) or on <i>file1</i> and;FI"
;FI" ;FI"!<i>file2</i> (second table).;FI"
;FI"
;FI" ;FI"!File tests on a single file:;FI"
;FI"
;FI"   ;FI"Test   Returns   Meaning;FI"
;FI"   ;FI"0"A"  | Time    | Last access time for file1;FI"
;FI"   ;FI"5"b"  | boolean | True if file1 is a block device;FI"
;FI"   ;FI"9"c"  | boolean | True if file1 is a character device;FI"
;FI"   ;FI"0"C"  | Time    | Last change time for file1;FI"
;FI"   ;FI"="d"  | boolean | True if file1 exists and is a directory;FI"
;FI"   ;FI"*"e"  | boolean | True if file1 exists;FI"
;FI"   ;FI"@"f"  | boolean | True if file1 exists and is a regular file;FI"
;FI"   ;FI";"g"  | boolean | True if file1 has the \CF{setgid} bit;FI"
;FI"        ;FI"%|         | set (false under NT);FI"
;FI"   ;FI":"G"  | boolean | True if file1 exists and has a group;FI"
;FI"        ;FI"6|         | ownership equal to the caller's group;FI"
;FI"   ;FI"E"k"  | boolean | True if file1 exists and has the sticky bit set;FI"
;FI"   ;FI"A"l"  | boolean | True if file1 exists and is a symbolic link;FI"
;FI"   ;FI"6"M"  | Time    | Last modification time for file1;FI"
;FI"   ;FI":"o"  | boolean | True if file1 exists and is owned by;FI"
;FI"        ;FI"+|         | the caller's effective uid;FI"
;FI"   ;FI":"O"  | boolean | True if file1 exists and is owned by;FI"
;FI"        ;FI"&|         | the caller's real uid;FI"
;FI"   ;FI"8"p"  | boolean | True if file1 exists and is a fifo;FI"
;FI"   ;FI"@"r"  | boolean | True if file1 is readable by the effective;FI"
;FI"        ;FI"&|         | uid/gid of the caller;FI"
;FI"   ;FI":"R"  | boolean | True if file is readable by the real;FI"
;FI"        ;FI"&|         | uid/gid of the caller;FI"
;FI"   ;FI"A"s"  | int/nil | If file1 has nonzero size, return the size,;FI"
;FI"        ;FI"%|         | otherwise return nil;FI"
;FI"   ;FI":"S"  | boolean | True if file1 exists and is a socket;FI"
;FI"   ;FI":"u"  | boolean | True if file1 has the setuid bit set;FI"
;FI"   ;FI"="w"  | boolean | True if file1 exists and is writable by;FI"
;FI"        ;FI"&|         | the effective uid/gid;FI"
;FI"   ;FI"="W"  | boolean | True if file1 exists and is writable by;FI"
;FI"        ;FI"!|         | the real uid/gid;FI"
;FI"   ;FI"?"x"  | boolean | True if file1 exists and is executable by;FI"
;FI"        ;FI"&|         | the effective uid/gid;FI"
;FI"   ;FI"?"X"  | boolean | True if file1 exists and is executable by;FI"
;FI"        ;FI"!|         | the real uid/gid;FI"
;FI"   ;FI"@"z"  | boolean | True if file1 exists and has a zero length;FI"
;Fo:RDoc::Markup::Paragraph;	[I"Tests that take two files:;Fo:RDoc::Markup::BlankLine o;
;	[I"   ;FI";"-"  | boolean | True if file1 and file2 are identical;FI"
;FI"   ;FI"="="  | boolean | True if the modification times of file1;FI"
;FI"        ;FI"$|         | and file2 are equal;FI"
;FI"   ;FI"<"<"  | boolean | True if the modification time of file1;FI"
;FI"        ;FI"*|         | is prior to that of file2;FI"
;FI"   ;FI"<">"  | boolean | True if the modification time of file1;FI"
;FI"        ;FI"'|         | is after that of file2;FI",test(int_cmd, file1 [, file2] ) -> obj
;F0[ I"
(...);F