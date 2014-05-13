Encoding::UndefinedConversionError.public_methods(false).sort.each do |method| 
  puts method
end
puts
Encoding::UndefinedConversionError.public_instance_methods(false).sort.each do |method| 
  puts method
end
puts
Encoding::UndefinedConversionError.constants.sort.each do |constant| 
  puts constant
end
puts
puts Encoding::UndefinedConversionError.superclass