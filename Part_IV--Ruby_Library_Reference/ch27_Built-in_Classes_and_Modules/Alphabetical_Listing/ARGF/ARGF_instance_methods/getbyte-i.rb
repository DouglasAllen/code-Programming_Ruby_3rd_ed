text = <<ET

= ARGF#getbyte

(from ~/.ri)
------------------------------------------------------------------------------
  ARGF.getbyte  -> Fixnum or nil

------------------------------------------------------------------------------

Gets the next 8-bit byte (0..255) from ARGF. Returns nil if called at the end
of the stream.

For example:

  $ echo "foo" > file
  $ ruby argf.rb file

  ARGF.getbyte #=> 102
  ARGF.getbyte #=> 111
  ARGF.getbyte #=> 111
  ARGF.getbyte #=> 10
  ARGF.getbyte #=> nil
 
ET

# echo "foo" > file
# ruby ARGF#getbyte.rb file

p ARGF.getbyte #=> 102
p ARGF.getbyte #=> 111
p ARGF.getbyte #=> 111
p ARGF.getbyte #=> 10
p ARGF.getbyte #=> nil 
