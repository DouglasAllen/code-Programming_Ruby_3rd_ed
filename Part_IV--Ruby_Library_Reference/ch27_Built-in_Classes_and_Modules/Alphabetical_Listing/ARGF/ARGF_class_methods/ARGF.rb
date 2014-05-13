# ARGF.rb

text = <<ET

  = ARGF < Object

  ------------------------------------------------------------------------------
  = Includes:
  Enumerable (from ~/.ri)

  (from ~/.ri)
  ------------------------------------------------------------------------------
  ARGF is a stream designed for use in scripts that process files given as
  command-line arguments or passed in via STDIN.

  The arguments passed to your script are stored in the ARGV Array, one argument
  per element. ARGF assumes that any arguments that aren't filenames have been
  removed from ARGV. For example:

    $ ruby argf.rb --verbose file1 file2

    ARGV  #=> ["--verbose", "file1", "file2"]
    option = ARGV.shift #=> "--verbose"
    ARGV  #=> ["file1", "file2"]

  You can now use ARGF to work with a concatenation of each of these named
  files. For instance, ARGF.read will return the contents of file1
  followed by the contents of file2.

  After a file in ARGV has been read ARGF removes it from the Array. Thus, after
  all files have been read ARGV will be empty.

  You can manipulate ARGV yourself to control what ARGF operates on. If you
  remove a file from ARGV, it is ignored by ARGF; if you add files to ARGV, they
  are treated as if they were named on the command line. For example:

    ARGV.replace ["file1"]
    ARGF.readlines # Returns the contents of file1 as an Array
    ARGV           #=> []
    ARGV.replace ["file2", "file3"]
    ARGF.read      # Returns the contents of file2 and file3

  If ARGV is empty, ARGF acts as if it contained STDIN, i.e. the data piped to
  your script. For example:

    $ echo "glark" | ruby -e 'p ARGF.read'
    "glark\n"
  ------------------------------------------------------------------------------
  = Instance methods:

    argv, binmode, binmode?, bytes, chars, close, closed?, each, each_byte,
    each_char, each_line, eof, eof?, external_encoding, file, filename, fileno,
    getbyte, getc, gets, inplace_mode, inplace_mode=, internal_encoding, lineno,
    lineno=, lines, path, pos, pos=, print, printf, putc, puts, read,
    read_nonblock, readbyte, readchar, readline, readlines, readpartial, rewind,
    seek, set_encoding, skip, tell, to_a, to_i, to_io, to_s, to_write_io, write


  run
  ruby ARGF.rb

  ARGV.replace ["glark.txt"]
  #{ARGV.replace ["glark.txt"]}

  ARGV
  #{ARGV}

  ARGV[0]
  #{ARGV[0]}

  ARGF.readlines # Returns the contents of file as an Array and clears ARGV
  #{ARGF.readlines}

  ARGV.replace ["foo", "bar"]
  #{ARGV.replace ["foo", "bar"]}

  ARGF.read      # Returns the contents of file foo and file bar
  #{ARGF.read}

  methods = ARGF.public_methods(false)
  methods.each { | method_name | puts method_name }
  #{methods = ARGF.public_methods(false).sort}
	

ET

puts text
puts
ARGF.public_methods(false).sort.each do |method| 
  puts method
end


