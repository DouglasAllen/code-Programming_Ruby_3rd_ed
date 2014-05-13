LocalJumpError.public_methods(false).sort.each do |method| 
  puts method
end
puts
LocalJumpError.public_instance_methods(false).sort.each do |method| 
  puts method
end
puts
LocalJumpError.constants.sort.each do |constant| 
  puts constant
end
puts
puts LocalJumpError.superclass