Exception.public_methods(false).sort.each do |method| 
  puts method
end
puts
Exception.public_instance_methods(false).sort.each do |method| 
  puts method
end
puts
Exception.constants.sort.each do |constant| 
  puts constant
end
puts
puts Exception.superclass