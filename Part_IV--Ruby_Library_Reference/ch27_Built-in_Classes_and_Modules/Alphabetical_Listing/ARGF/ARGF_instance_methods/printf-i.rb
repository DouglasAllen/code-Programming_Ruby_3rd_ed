text = <<ET

= ARGF#printf

(from ~/.ri)
------------------------------------------------------------------------------
  ios.printf(format_string [, obj, ...])   -> nil

------------------------------------------------------------------------------

Formats and writes to ios, converting parameters under control of the
format string. See Kernel#sprintf for details.

ET

# ruby ARGF#printf.rb

$stdout.printf("%020d" %[123]) 
puts
