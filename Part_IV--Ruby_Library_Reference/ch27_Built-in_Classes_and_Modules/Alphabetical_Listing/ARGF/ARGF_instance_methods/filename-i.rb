text = <<ET

= ARGF#filename

(from ~/.ri)
------------------------------------------------------------------------------
  ARGF.filename  -> String
  ARGF.path      -> String

------------------------------------------------------------------------------

Returns the current filename. "-" is returned when the current file is STDIN.

For example:

  $ echo "foo" > foo
  $ echo "bar" > bar
  $ echo "glark" > glark

  $ ruby argf.rb foo bar glark

  ARGF.filename  #=> "foo"
  ARGF.read(5)   #=> "foo\nb"
  ARGF.filename  #=> "bar"
  ARGF.skip
  ARGF.filename  #=> "glark"
 
ET

# echo "foo" > foo
# echo "bar" > bar
# echo "glark" > glark

# ruby ARGF#filename.rb foo bar glark.txt

p ARGF.filename  #=> "foo"
p ARGF.read(5)   #=> "foo\nb"
p ARGF.filename  #=> "bar"
p ARGF.skip
p ARGF.filename  #=> "glark.txt"
 
