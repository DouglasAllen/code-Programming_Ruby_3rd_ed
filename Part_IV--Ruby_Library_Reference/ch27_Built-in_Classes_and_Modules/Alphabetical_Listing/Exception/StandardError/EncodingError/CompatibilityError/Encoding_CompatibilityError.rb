Encoding::CompatibilityError.public_methods(false).sort.each do |method| 
  puts method
end
puts
Encoding::CompatibilityError.public_instance_methods(false).sort.each do |method| 
  puts method
end
puts
Encoding::CompatibilityError.constants.sort.each do |constant| 
  puts constant
end
puts
puts Encoding::CompatibilityError.superclass