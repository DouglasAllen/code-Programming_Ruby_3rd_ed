TrueClass.public_methods(false).sort.each do |method| 
  puts method
end
puts
TrueClass.public_instance_methods(false).sort.each do |method| 
  puts method
end
puts
TrueClass.constants.sort.each do |constant| 
  puts constant
end

puts TrueClass.superclass