=begin

Comparable

(from ruby core)
------------------------------------------------------------------------------
The Comparable mixin is used by classes whose objects may be ordered.
The class must define the <=> operator, which compares the receiver
against another object, returning -1, 0, or +1 depending on whether the
receiver is less than, equal to, or greater than the other object. If the other
object is not comparable then the <=> operator should return
nil. Comparable uses <=> to implement the conventional comparison
operators(<, <=, ==, >=,and >) and the method between?.

       class SizeMatters
         include Comparable
         attr :str
         def <=>(anOther)
           str.size <=> anOther.str.size
         end
         def initialize(str)
           @str = str
         end
         def inspect
           @str
         end
       end

       s1 = SizeMatters.new("Z")
       s2 = SizeMatters.new("YY")
       s3 = SizeMatters.new("XXX")
       s4 = SizeMatters.new("WWWW")
       s5 = SizeMatters.new("VVVVV")

       s1 < s2                       #=> true
       s4.between?(s1, s3)           #=> false
       s4.between?(s3, s5)           #=> true
       [ s3, s2, s5, s4, s1 ].sort   #=> [Z, YY, XXX, WWWW, VVVVV]
       
      class CompareOnSize
        include Comparable
        attr :str
        def <=>(other)
          str.length <=> other.str.length
        end
        def initialize(str)
          @str = str
        end
      end
      
      s1 = CompareOnSize.new("Z")
      s2 = CompareOnSize.new([1,2])
      s3 = CompareOnSize.new("XXX")
      s1 < s2 # => true
      s2.between?(s1, s3) # => true
      s3.between?(s1, s2) # => false
      [ s3, s2, s1 ].sort # => ["Z", [1, 2], "XXX"]

------------------------------------------------------------------------------
Instance methods:

  <, <=, ==, >, >=, between?

=end

class SizeMatters
  include Comparable
  attr :str
  def <=>(anOther)
    str.size <=> anOther.str.size
  end
  def initialize(str)
    @str = str
  end
  def inspect
    @str
  end
end

s1 = SizeMatters.new("Z")
s2 = SizeMatters.new("YY")
s3 = SizeMatters.new("XXX")
s4 = SizeMatters.new("WWWW")
s5 = SizeMatters.new("VVVVV")

puts s1 < s2                       #=> true
puts s4.between?(s1, s3)           #=> false
puts s4.between?(s3, s5)           #=> true
puts [ s3, s2, s5, s4, s1 ].sort   #=> [Z, YY, XXX, WWWW, VVVVV]

class CompareOnSize
  include Comparable
  attr :str
  def <=>(other)
    str.length <=> other.str.length
  end
  def initialize(str)
    @str = str
  end
end

s1 = CompareOnSize.new("Z")
s2 = CompareOnSize.new([1,2])
s3 = CompareOnSize.new("XXX")
puts s1 < s2 # => true
puts s2.between?(s1, s3) # => true
puts s3.between?(s1, s2) # => false
puts [ s3, s2, s1 ].sort # => ["Z", [1, 2], "XXX"]