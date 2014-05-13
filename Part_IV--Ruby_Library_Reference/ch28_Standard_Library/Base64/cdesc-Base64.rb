=begin

Base64

(from ruby core)
------------------------------------------------------------------------------
The Base64 module provides for the encoding (#encode64,
#strict_encode64,#urlsafe_encode64) and decoding (#decode64,
#strict_decode64,#urlsafe_decode64) of binary data using a Base64
representation.

Example

A simple encoding and decoding.

        require "base64"

        enc   = Base64.encode64('Send reinforcements')
                            # -> "U2VuZCByZWluZm9yY2VtZW50cw==\n"
        plain = Base64.decode64(enc)
                            # -> "Send reinforcements"

The purpose of using base64 to encode data is that it translates anybinary
data into purely printable characters.

------------------------------------------------------------------------------
Instance methods:

  decode64, encode64, strict_decode64, strict_encode64, urlsafe_decode64,
  urlsafe_encode64
  
=end