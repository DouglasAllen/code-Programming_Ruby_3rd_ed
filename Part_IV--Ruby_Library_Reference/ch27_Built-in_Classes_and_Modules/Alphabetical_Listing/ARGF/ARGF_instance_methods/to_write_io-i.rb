text = <<ET

= ARGF#to_write_io

(from ~/.ri)
------------------------------------------------------------------------------
  ARGF.to_write_io  -> io

------------------------------------------------------------------------------

Returns IO instance tied to ARGF for writing if inplace mode is
enabled.

ET

# ruby ARGF#to_write_io.rb glark.txt.bak

ARGF.inplace_mode = '.bak'
file = ARGF.filename
File.open(file, "w")
ARGF.to_write_io