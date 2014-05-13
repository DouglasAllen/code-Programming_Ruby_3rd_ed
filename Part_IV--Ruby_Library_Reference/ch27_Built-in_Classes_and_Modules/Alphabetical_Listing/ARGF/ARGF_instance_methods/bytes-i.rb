text = <<ET

= ARGF#bytes

(from ~/.ri)
------------------------------------------------------------------------------
  ARGF.bytes     {|byte| block }  -> ARGF
  ARGF.bytes                      -> an_enumerator
  ARGF.each_byte {|byte| block }  -> ARGF
  ARGF.each_byte                  -> an_enumerator

------------------------------------------------------------------------------

  Iterates over each byte of each file in +ARGV+.
  A byte is returned as a +Fixnum+ in the range 0..255.

  This method allows you to treat the files supplied on the command line as
  a single file consisting of the concatenation of each named file. After
  the last byte of the first file has been returned, the first byte of the
  second file is returned. The +ARGF.filename+ method can be used to
  determine the filename of the current byte.

  If no block is given, an enumerator is returned instead.

For example:

  ARGF.bytes.to_a  #=> [35, 32, ... 95, 10]

ET
