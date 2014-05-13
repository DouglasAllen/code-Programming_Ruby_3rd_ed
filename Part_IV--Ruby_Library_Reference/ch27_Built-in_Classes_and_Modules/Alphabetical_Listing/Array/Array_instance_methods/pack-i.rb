# Array#pack.rb

=begin

Array#pack

------------------------------------------------------------------------------
  arr.pack ( aTemplateString ) -> aBinaryString

------------------------------------------------------------------------------

Packs the contents of array into a binary sequence according to the
directives in TemplateString (see the table below) Directives `A,'
`a,' and `Z' may be followed by a count, which gives the width of the
resulting field. The remaining directives also may take a count, indicating
the number of array elements to convert. If the count is an asterisk
(`*'), all remaining array elements will be converted. Any of the
directives `sSiIlL' may be followed by an underscore (`_')
or exclamation mark (`!') to use the underlying platform's native
size for the specified type; otherwise, they use a platform-independent size.
Spaces are ignored in the template string. See also String#unpack.

  a = [ "a", "b", "c" ]
  n = [ 65, 66, 67 ]
  a.pack("A3A3A3")   #=> "a  b  c  "
  a.pack("a3a3a3")   #=> "a\000\000b\000\000c\000\000"
  n.pack("ccc")      #=> "ABC"

Directives for pack

  Integer      | Array   |
  Directive    | Element | Meaning
  ---------------------------------------------------------------------------
     C         | Integer | 8-bit unsigned (unsigned char)
     S         | Integer | 16-bit unsigned, native endian (uint16_t)
     L         | Integer | 32-bit unsigned, native endian (uint32_t)
     Q         | Integer | 64-bit unsigned, native endian (uint64_t)
               |         |
     c         | Integer | 8-bit signed (signed char)
     s         | Integer | 16-bit signed, native endian (int16_t)
     l         | Integer | 32-bit signed, native endian (int32_t)
     q         | Integer | 64-bit signed, native endian (int64_t)
               |         |
     S_, S!    | Integer | unsigned short, native endian
     I, I_, I! | Integer | unsigned int, native endian
     L_, L!    | Integer | unsigned long, native endian
               |         |
     s_, s!    | Integer | signed short, native endian
     i, i_, i! | Integer | signed int, native endian
     l_, l!    | Integer | signed long, native endian
               |         |
     S> L> Q>  | Integer | same as the directives without ">" except
     s> l> q>  |         | big endian
     S!> I!>   |         | (available since Ruby 1.9.3)
     L!>       |         | "S>" is same as "n"
     s!> i!>   |         | "L>" is same as "N"
     l!>       |         |
               |         |
     S< L< Q<  | Integer | same as the directives without "<" except
     s< l< q<  |         | little endian
     S!< I!<   |         | (available since Ruby 1.9.3)
     L!<       |         | "S<" is same as "v"
     s!< i!<   |         | "L<" is same as "V"
     l!<       |         |
               |         |
     n         | Integer | 16-bit unsigned, network (big-endian) byte order
     N         | Integer | 32-bit unsigned, network (big-endian) byte order
     v         | Integer | 16-bit unsigned, VAX (little-endian) byte order
     V         | Integer | 32-bit unsigned, VAX (little-endian) byte order
               |         |
     U         | Integer | UTF-8 character
     w         | Integer | BER-compressed integer

  Float        |         |
  Directive    |         | Meaning
  ---------------------------------------------------------------------------
     D, d      | Float   | double-precision, native format
     F, f      | Float   | single-precision, native format
     E         | Float   | double-precision, little-endian byte order
     e         | Float   | single-precision, little-endian byte order
     G         | Float   | double-precision, network (big-endian) byte order
     g         | Float   | single-precision, network (big-endian) byte order

  String       |         |
  Directive    |         | Meaning
  ---------------------------------------------------------------------------
     A         | String  | arbitrary binary string (space padded, count is width)
     a         | String  | arbitrary binary string (null padded, count is width)
     Z         | String  | same as ``a'', except that null is added with *
     B         | String  | bit string (MSB first)
     b         | String  | bit string (LSB first)
     H         | String  | hex string (high nibble first)
     h         | String  | hex string (low nibble first)
     u         | String  | UU-encoded string
     M         | String  | quoted printable, MIME encoding (see RFC2045)
     m         | String  | base64 encoded string (see RFC 2045, count is width)
               |         | (if count is 0, no line feed are added, see RFC 4648)
     P         | String  | pointer to a structure (fixed-length string)
     p         | String  | pointer to a null-terminated string

  Misc.        |         |
  Directive    |         | Meaning
  ---------------------------------------------------------------------------
     @         | ---     | moves to absolute position
     X         | ---     | back up a byte
     x         | ---     | null byte

=end

# ruby Array#pack.rb

a = [ "a", "b", "c" ]
c = [2.0, 3.0, 4.0]
n = [ 65, 66, 67 ]

p a.pack("A3A3A3")   #=> "a  b  c  "
p a.pack("a3a3a3")   #=> "a\000\000b\000\000c\000\000"
c_packed = c.pack("d*")
p c_packed
p n.pack("ccc")      #=> "ABC"
