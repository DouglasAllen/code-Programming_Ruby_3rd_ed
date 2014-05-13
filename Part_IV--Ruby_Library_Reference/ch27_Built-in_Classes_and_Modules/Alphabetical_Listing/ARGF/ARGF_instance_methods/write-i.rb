text = <<ET

= ARGF#write

(from ~/.ri)
------------------------------------------------------------------------------
  ARGF.write(string)   -> integer

------------------------------------------------------------------------------

Writes string if inplace mode.

ET

# ruby ARGF#write.rb glark.txt.bak

ARGF.inplace_mode = '.bak'
file = ARGF.filename
File.open(file, "w")
ARGF.write("this is a test") 
