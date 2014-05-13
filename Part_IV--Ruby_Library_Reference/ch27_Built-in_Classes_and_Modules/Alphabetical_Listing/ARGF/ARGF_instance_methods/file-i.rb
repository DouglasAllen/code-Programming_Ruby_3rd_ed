text = <<ET

= ARGF#file

(from ~/.ri)
------------------------------------------------------------------------------
  ARGF.file  -> IO or File object

------------------------------------------------------------------------------

Returns the current file as an IO or File object. #<IO:<STDIN>> is returned
when the current file is STDIN.

For example:

  $ echo "foo" > foo
  $ echo "bar" > bar

  $ ruby argf.rb foo bar

  ARGF.file      #=> #<File:foo>
  ARGF.read(5)   #=> "foo\nb"
  ARGF.file      #=> #<File:bar>

ET
 
 # echo "foo" > foo
 # echo "bar" > bar

 # ruby ARGF#file.rb foo bar

p ARGF.file      #=> #<File:foo>
p ARGF.read(5)   #=> "foo\nb"
ARGF.close
p ARGF.file      #=> #<File:bar>

