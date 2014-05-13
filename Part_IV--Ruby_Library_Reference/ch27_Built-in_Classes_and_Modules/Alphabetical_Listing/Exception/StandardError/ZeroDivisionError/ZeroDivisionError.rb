ZeroDivisionError.public_methods(false).sort.each do |method| 
  puts method
end
puts
ZeroDivisionError.public_instance_methods(false).sort.each do |method| 
  puts method
end
puts
ZeroDivisionError.constants.sort.each do |constant| 
  puts constant
end
puts
puts ZeroDivisionError.superclass