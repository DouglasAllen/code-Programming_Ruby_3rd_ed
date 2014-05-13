# Regexp#options.rb

=begin

= Regexp#options

(from ~/.ri)
------------------------------------------------------------------------------
  rxp.options   -> fixnum

------------------------------------------------------------------------------

Returns the set of bits corresponding to the options used when creating this
Regexp (see Regexp::new for details. Note that additional bits may be set in
the returned options: these are used internally by the regular expression
code. These extra bits are ignored if the options are passed to Regexp::new.

  Regexp::IGNORECASE                  #=> 1
  Regexp::EXTENDED                    #=> 2
  Regexp::MULTILINE                   #=> 4

  /cat/.options                       #=> 0
  /cat/ix.options                     #=> 3
  Regexp.new('cat', true).options     #=> 1
  /\xa1\xa2/e.options                 #=> 16

  r = /cat/ix
  Regexp.new(r.source, r.options)     #=> /cat/ix

=end

# ruby Regexp#options.rb

p Regexp::IGNORECASE                  #=> 1
p Regexp::EXTENDED                    #=> 2
p Regexp::MULTILINE                   #=> 4

p /cat/.options                       #=> 0
p /cat/ix.options                     #=> 3
p Regexp.new('cat', true).options     #=> 1
p /\xa1\xa2/e.options                 #=> 16

p r = /cat/ix
p Regexp.new(r.source, r.options)     #=> /cat/ix
 
