# Regexp#===.rb

=begin

= Regexp#===

(from ~/.ri)
------------------------------------------------------------------------------
  rxp === str   -> true or false

------------------------------------------------------------------------------

Case Equality---Synonym for Regexp#=~ used in case statements.

  a = "HELLO"
  case a
  when /^[a-z]*$/; print "Lower case\n"
  when /^[A-Z]*$/; print "Upper case\n"
  else;            print "Mixed case\n"
  end

produces:

  Upper case

=end

# ruby Regexp#===.rb

  a = "HELLO"
  case a
  when /^[a-z]*$/; print "Lower case\n"
  when /^[A-Z]*$/; print "Upper case\n"
  else;            print "Mixed case\n"
  end
   
