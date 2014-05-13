text = <<ET

= ARGF#each

(from ~/.ri)
------------------------------------------------------------------------------
  ARGF.each(sep=$/)            {|line| block }  -> ARGF
  ARGF.each(sep=$/,limit)      {|line| block }  -> ARGF
  ARGF.each(...)                                -> an_enumerator
  ARGF.each_line(sep=$/)       {|line| block }  -> ARGF
  ARGF.each_line(sep=$/,limit) {|line| block }  -> ARGF
  ARGF.each_line(...)                           -> an_enumerator
  ARGF.lines(sep=$/)           {|line| block }   -> ARGF
  ARGF.lines(sep=$/,limit)     {|line| block }   -> ARGF
  ARGF.lines(...)                                -> an_enumerator

------------------------------------------------------------------------------

Returns an enumerator which iterates over each line (separated by sep,
which defaults to your platform's newline character) of each file in ARGV. If
a block is supplied, each line in turn will be yielded to the block, otherwise
an enumerator is returned. The optional limit argument is a Fixnum
specifying the maximum length of each line; longer lines will be split
according to this limit.

This method allows you to treat the files supplied on the command line as a
single file consisting of the concatenation of each named file. After the last
line of the first file has been returned, the first line of the second file is
returned. The ARGF.filename and ARGF.lineno methods can be used to determine
the filename and line number, respectively, of the current line.

For example, the following code prints out each line of each named file
prefixed with its line number, displaying the filename once per file:

  ARGF.lines do |line|
    puts ARGF.filename if ARGF.lineno == 1
    puts "#{ARGF.lineno}: #{line}"
  end

ET

# ruby ARGF#each.rb glark.txt

 ARGF.lines do |line|
    puts ARGF.filename if ARGF.lineno == 1
    puts "#{ARGF.lineno}: #{line}"
 end