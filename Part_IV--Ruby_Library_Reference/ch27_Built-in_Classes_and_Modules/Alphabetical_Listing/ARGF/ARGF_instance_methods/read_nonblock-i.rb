text = <<ET

= ARGF#read_nonblock

(from ~/.ri)
------------------------------------------------------------------------------
  ARGF.read_nonblock(maxlen)              -> string
  ARGF.read_nonblock(maxlen, outbuf)      -> outbuf

------------------------------------------------------------------------------

Reads at most maxlen bytes from the ARGF stream in non-blocking
mode.

ET

# ruby ARGF#read_nonblock.rb glark.txt

p ARGF.read_nonblock(100)

# ruby ARGF#read_nonblock.rb glark.txt              
#p ARGF.read_nonblock(10)      
