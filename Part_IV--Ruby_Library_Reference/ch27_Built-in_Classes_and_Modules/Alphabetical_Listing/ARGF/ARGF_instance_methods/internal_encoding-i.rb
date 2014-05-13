text = <<ET

= ARGF#internal_encoding

(from ~/.ri)
------------------------------------------------------------------------------
  ARGF.internal_encoding   -> encoding

------------------------------------------------------------------------------

Returns the internal encoding for strings read from ARGF as an Encoding
object.

If ARGF.set_encoding has been called with two encoding names, the second is
returned. Otherwise, if Encoding.default_external has been set, that value is
returned. Failing that, if a default external encoding was specified on the
command-line, that value is used. If the encoding is unknown, nil is returned.

ET

# ruby ARGF#internal_encoding.rb

p ARGF.internal_encoding 
