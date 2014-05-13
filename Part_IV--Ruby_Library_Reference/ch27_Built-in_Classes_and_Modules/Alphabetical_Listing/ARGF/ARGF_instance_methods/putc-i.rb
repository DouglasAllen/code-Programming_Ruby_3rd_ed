text = <<ET

= ARGF#putc

(from ~/.ri)
------------------------------------------------------------------------------
  ios.putc(obj)    -> obj

------------------------------------------------------------------------------

If obj is Numeric, write the character whose code is the
least-significant byte of obj, otherwise write the first byte of the
string representation of obj to ios. Note: This method is not safe
for use with multi-byte characters as it will truncate them.

  $stdout.putc "A"
  $stdout.putc 65

produces:

  AA

ET

# ruby ARGF#putc.rb

$stdout.putc "A"
$stdout.putc 65
puts