text = <<ET

= ARGF#getc

(from ~/.ri)
------------------------------------------------------------------------------
  ARGF.getc  -> String or nil

------------------------------------------------------------------------------

Reads the next character from ARGF and returns it as a String. Returns nil at
the end of the stream.

ARGF treats the files named on the command line as a single file created by
concatenating their contents. After returning the last character of the first
file, it returns the first character of the second file, and so on.

For example:

  $ echo "foo" > file
  $ ruby argf.rb file

  ARGF.getc  #=> "f"
  ARGF.getc  #=> "o"
  ARGF.getc  #=> "o"
  ARGF.getc  #=> "\n"
  ARGF.getc  #=> nil
  ARGF.getc  #=> nil
 
ET

# echo "foo" > file
# ruby ARGF#getc.rb file

p ARGF.getc  #=> "f"
p ARGF.getc  #=> "o"
p ARGF.getc  #=> "o"
p ARGF.getc  #=> "\n"
p ARGF.getc  #=> nil
p ARGF.getc  #=> nil
