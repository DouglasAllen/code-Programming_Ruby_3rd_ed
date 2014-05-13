text = <<ET

= ARGF#set_encoding

(from ~/.ri)
------------------------------------------------------------------------------
  ARGF.set_encoding(ext_enc)                -> ARGF
  ARGF.set_encoding("ext_enc:int_enc")      -> ARGF
  ARGF.set_encoding(ext_enc, int_enc)       -> ARGF
  ARGF.set_encoding("ext_enc:int_enc", opt) -> ARGF
  ARGF.set_encoding(ext_enc, int_enc, opt)  -> ARGF

------------------------------------------------------------------------------

If single argument is specified, strings read from ARGF are tagged with the
encoding specified.

If two encoding names separated by a colon are given, e.g. "ascii:utf-8", the
read string is converted from the first encoding (external encoding) to the
second encoding (internal encoding), then tagged with the second encoding.

If two arguments are specified, they must be encoding objects or encoding
names. Again, the first specifies the external encoding; the second specifies
the internal encoding.

If the external encoding and the internal encoding are specified, the optional
Hash argument can be used to adjust the conversion process. The structure of
this hash is explained in the +String#encode+ documentation.

For example:

  ARGF.set_encoding('ascii')         # Tag the input as US-ASCII text
  ARGF.set_encoding(Encoding::UTF_8) # Tag the input as UTF-8 text
  ARGF.set_encoding('utf-8','ascii') # Transcode the input from US-ASCII
                                     # to UTF-8.
ET

# ruby ARGF#set_encoding.rb glark.txt

p ARGF.set_encoding('ascii')         # Tag the input as US-ASCII text
p ARGF.set_encoding(Encoding::UTF_8) # Tag the input as UTF-8 text
p ARGF.set_encoding('utf-8','ascii') # Transcode the input from US-ASCII
                                     # to UTF-8. 
