text =<<ET

 ARGF#readchar

(from ~/.ri)
------------------------------------------------------------------------------
  ARGF.readchar  -> String or nil

------------------------------------------------------------------------------

Reads the next character from ARGF and returns it as a String. Raises an
EOFError after the last character of the last file has been read.

For example:

  $ echo "foo" > file
  $ ruby argf.rb file

  ARGF.readchar  #=> "f"
  ARGF.readchar  #=> "o"
  ARGF.readchar  #=> "o"
  ARGF.readchar  #=> "\n"
  ARGF.readchar  #=> end of file reached (EOFError)

ET