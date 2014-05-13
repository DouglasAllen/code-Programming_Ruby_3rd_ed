FloatDomainError.public_methods(false).sort.each do |method| 
  puts method
end
puts
FloatDomainError.public_instance_methods(false).sort.each do |method| 
  puts method
end
puts
FloatDomainError.constants.sort.each do |constant| 
  puts constant
end
puts
puts FloatDomainError.superclass