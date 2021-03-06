U:RDoc::AnyMethod[iI"	open:EFI"PTY::open;FT:publico:RDoc::Markup::Document:@parts[o:RDoc::Markup::Paragraph;	[I"'Allocates a pty (pseudo-terminal).;Fo:RDoc::Markup::BlankLine o;
;	[I"GIt returns an array which contains an IO object and a File object.;FI")The former is the master of the pty.;FI"(The latter is the slave of the pty.;Fo; o;
;	[I"@If a block is given, it yields the array instead of return.;FI"(The value of the block is returned.;FI"Kmaster_io and slave_file is closed when return if they are not closed.;Fo; o;
;	[I"KThe path name of the terminal device can be gotten by slave_file.path.;Fo; o:RDoc::Markup::Verbatim;	[VI"  ;FI"PTY.open {|m, s|;FI"
;FI"	    ;FI",p m      #=> #<IO:masterpty:/dev/pts/1>;FI"
;FI"	    ;FI"$p s      #=> #<File:/dev/pts/1>;FI"
;FI"	    ;FI"p s.path #=> "/dev/pts/1";FI"
;FI"  ;FI"};FI"
;FI"
;FI"  ;FI"3# Change the buffering type in factor command,;FI"
;FI"  ;FI"<# assuming that factor uses stdio for stdout buffering.;FI"
;FI"  ;FI".# If IO.pipe is used instead of PTY.open,;FI"
;FI"  ;FI"E# this code deadlocks because factor's stdout is fully buffered.;FI"
;FI"  ;FI"m, s = PTY.open;FI"
;FI"  ;FI"=system("stty raw", :in=>s) # disable newline conversion.;FI"
;FI"  ;FI"r, w = IO.pipe;FI"
;FI"  ;FI"+pid = spawn("factor", :in=>r, :out=>s);FI"
;FI"  ;FI"r.close;FI"
;FI"  ;FI"s.close;FI"
;FI"  ;FI"w.puts "42";FI"
;FI"  ;FI"p m.gets #=> "42: 2 3 7\n";FI"
;FI"  ;FI"w.puts "144";FI"
;FI"  ;FI"&p m.gets #=> "144: 2 2 2 2 3 3\n";FI"
;FI"  ;FI"w.close;FI"
;FI"  ;FI"S# The result of read operation when pty slave is closed is platform dependnet.;FI"
;FI"  ;FI"ret = begin;FI"
;FI"          ;FI"+m.gets          # FreeBSD returns nil.;FI"
;FI"        ;FI".rescue Errno::EIO # GNU/Linux raises EIO.;FI"
;FI"          ;FI"nil;FI"
;FI"        ;FI"end;FI"
;FI"  ;FI"p ret #=> nil;FI"ePTY.open   => [master_io, slave_file]
PTY.open {|master_io, slave_file| ... }    => block value
;F0[ I"();F