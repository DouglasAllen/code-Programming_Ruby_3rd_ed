text = <<ET

= ARGF#chars

(from ~/.ri)
------------------------------------------------------------------------------
  ARGF.chars      {|char| block }  -> ARGF
  ARGF.chars                       -> an_enumerator
  ARGF.each_char  {|char| block }  -> ARGF
  ARGF.each_char                   -> an_enumerator

------------------------------------------------------------------------------

Iterates over each character of each file in ARGF.

This method allows you to treat the files supplied on the command line as a
single file consisting of the concatenation of each named file. After the last
character of the first file has been returned, the first character of the
second file is returned. The ARGF.filename method can be used to determine the
name of the file in which the current character appears.

If no block is given, an enumerator is returned instead.


ET



