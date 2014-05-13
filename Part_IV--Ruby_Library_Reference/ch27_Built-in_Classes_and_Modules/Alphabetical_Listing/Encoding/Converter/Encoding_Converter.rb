Encoding::Converter.public_methods(false).sort.each do |method| 
  puts method
end
puts
Encoding::Converter.public_instance_methods().sort.each do |method| 
  puts method
end
puts
Encoding::Converter.constants.sort.each do |constant| 
  puts constant
end
puts
puts Encoding::Converter.superclass