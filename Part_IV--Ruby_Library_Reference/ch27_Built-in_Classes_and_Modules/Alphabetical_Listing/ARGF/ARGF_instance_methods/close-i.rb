text = <<ET

= ARGF#close

(from ~/.ri)
------------------------------------------------------------------------------
  ARGF.close  -> ARGF

------------------------------------------------------------------------------

  Closes the current file and skips to the next in the stream. Trying to
  close a file that has already been closed causes an +IOError+ to be
  raised.

For example:

  $ ruby argf.rb foo bar

  ARGF.filename  #=> "foo"
  ARGF.close
  ARGF.filename  #=> "bar"
  ARGF.close
  ARGF.close     #=> closed stream (IOError)


ET

# ruby ARGF#close.rb foo bar
p ARGF.filename  #=> "foo"
ARGF.close
p ARGF.filename  #=> "bar"
ARGF.close
ARGF.close     #=> closed stream (IOError)
