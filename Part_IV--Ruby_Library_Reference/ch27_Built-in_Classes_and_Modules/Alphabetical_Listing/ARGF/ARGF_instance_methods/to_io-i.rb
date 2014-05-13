text = <<ET

= ARGF#to_io

(from ~/.ri)
------------------------------------------------------------------------------
  ARGF.to_io     -> IO

------------------------------------------------------------------------------

Returns an IO object representing the current file. This will be a File object
unless the current file is a stream such as STDIN.

For example:

  ARGF.to_io    #=> #<File:glark.txt>
  ARGF.to_io    #=> #<IO:<STDIN>>

ET

# ruby ARGF#to_io.rb glark.txt

p ARGF.to_io    #=> #<File:glark.txt>
p $stdin.to_io

