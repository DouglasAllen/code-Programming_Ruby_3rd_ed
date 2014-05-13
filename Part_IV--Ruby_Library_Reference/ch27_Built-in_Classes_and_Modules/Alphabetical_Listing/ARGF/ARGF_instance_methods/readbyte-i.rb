text = <<ET

= ARGF#readbyte

(from ~/.ri)
------------------------------------------------------------------------------
  ARGF.readbyte  -> Fixnum

------------------------------------------------------------------------------

Reads the next 8-bit byte from ARGF and returns it as a Fixnum. Raises an
EOFError after the last byte of the last file has been read.

For example:

  $ echo "foo" > file
  $ ruby argf.rb file

  ARGF.readbyte  #=> 102
  ARGF.readbyte  #=> 111
  ARGF.readbyte  #=> 111
  ARGF.readbyte  #=> 10
  ARGF.readbyte  #=> end of file reached (EOFError)

ET

# echo "foo" > file
# ruby ARGF#readbyte.rb

p ARGF.readbyte  #=> 102
p ARGF.readbyte  #=> 111
p ARGF.readbyte  #=> 111
p ARGF.readbyte  #=> 10
p ARGF.readbyte  #=> end of file reached (EOFError) 
