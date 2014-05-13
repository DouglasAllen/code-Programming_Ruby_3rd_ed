text = <<ET

= ARGF#seek

(from ~/.ri)
------------------------------------------------------------------------------
  ARGF.seek(amount, whence=IO::SEEK_SET)  ->  0

------------------------------------------------------------------------------

Seeks to offset amount (an Integer) in the ARGF stream according
to the value of whence. See +IO#seek+ for further details.

ET

# ruby ARGF#seek.rb glark.txt

p ARGF.seek(10) 
