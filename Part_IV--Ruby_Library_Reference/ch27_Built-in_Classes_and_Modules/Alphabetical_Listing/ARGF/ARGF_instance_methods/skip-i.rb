text = <<ET

= ARGF#skip

(from ~/.ri)
------------------------------------------------------------------------------
  ARGF.skip  -> ARGF

------------------------------------------------------------------------------

  Sets the current file to the next file in ARGV. If there aren't any more
  files it has no effect.

For example:

  $ ruby argf.rb foo bar
  ARGF.filename  #=> "foo"
  ARGF.skip
  ARGF.filename  #=> "bar"

ET

# ruby ARGF#skip.rb foo bar

p ARGF.filename  #=> "foo"
ARGF.skip
p ARGF.filename  #=> "bar"
ARGF.skip
p ARGF.filename 
