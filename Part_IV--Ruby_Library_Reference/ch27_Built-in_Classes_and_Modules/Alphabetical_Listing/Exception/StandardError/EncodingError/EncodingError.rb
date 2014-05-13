EncodingError.public_methods(false).sort.each do |method| 
  puts method
end
puts
EncodingError.public_instance_methods(false).sort.each do |method| 
  puts method
end
puts
EncodingError.constants.sort.each do |constant| 
  puts constant
end
puts
puts EncodingError.superclass