SystemStackError.public_methods(false).sort.each do |method| 
  puts method
end
puts
SystemStackError.public_instance_methods(false).sort.each do |method| 
  puts method
end
puts
SystemStackError.constants.sort.each do |constant| 
  puts constant
end
puts
puts SystemStackError.superclass