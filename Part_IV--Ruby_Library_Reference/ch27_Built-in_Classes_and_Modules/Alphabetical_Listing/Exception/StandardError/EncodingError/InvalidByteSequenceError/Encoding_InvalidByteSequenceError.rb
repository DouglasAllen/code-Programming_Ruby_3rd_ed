Encoding::InvalidByteSequenceError.public_methods(false).sort.each do |method| 
  puts method
end
puts
Encoding::InvalidByteSequenceError.public_instance_methods(false).sort.each do |method| 
  puts method
end
puts
Encoding::InvalidByteSequenceError.constants.sort.each do |constant| 
  puts constant
end
puts
puts Encoding::InvalidByteSequenceError.superclass