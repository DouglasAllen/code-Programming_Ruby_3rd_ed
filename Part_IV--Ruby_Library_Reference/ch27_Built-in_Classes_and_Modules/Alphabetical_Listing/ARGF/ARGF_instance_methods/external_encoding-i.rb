text = <<ET= ARGF#external_encoding(from ~/.ri)------------------------------------------------------------------------------  ARGF.external_encoding   -> encoding------------------------------------------------------------------------------  Returns the external encoding for files read from +ARGF+ as an +Encoding+  object. The external encoding is the encoding of the text as stored in a  file. Contrast with +ARGF.internal_encoding+, which is the encoding used  to represent this text within Ruby.  To set the external encoding use +ARGF.set_encoding+.For example:  ARGF.external_encoding  #=>  #<Encoding:UTF-8> ETp ARGF.external_encoding