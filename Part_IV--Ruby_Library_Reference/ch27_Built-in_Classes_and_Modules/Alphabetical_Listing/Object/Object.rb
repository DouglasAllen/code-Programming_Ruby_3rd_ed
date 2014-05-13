Object.public_methods(false).sort.each do |method| 
  puts method
end
puts
Object.public_instance_methods().sort.each do |method| 
  puts method
end
puts
Object.constants.sort.each do |constant| 
  puts constant
end
puts
puts Object.superclass