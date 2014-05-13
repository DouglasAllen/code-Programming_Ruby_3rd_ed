text = <<ET

=====================================================
class StandardError

The most standard error types are subclasses of StandardError. 
A rescue clause without an explicit Exception class will rescue all StandardErrors (and only those).

def foo
  raise "Oups"
end
foo rescue "Hello"   #=> "Hello"

On the other hand:

require 'does/not/exist' rescue "Hi"

raises the exception:

LoadError: no such file to load -- does/not/exist

In Files
error.c 

Parent
Exception

==================================================
ET

puts text

StandardError.public_methods(false).sort.each do |method| 
  puts method
end
puts
StandardError.public_instance_methods(false).sort.each do |method| 
  puts method
end
puts
StandardError.constants.sort.each do |constant| 
  puts constant
end
puts
puts StandardError.superclass
