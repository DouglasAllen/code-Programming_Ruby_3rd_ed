Enumerator.public_methods(false).sort.each do |method| 
  puts method
end
puts
Enumerator.public_instance_methods(false).sort.each do |method| 
  puts method
end
puts
Enumerator.constants.sort.each do |constant| 
  puts constant
end

puts
puts Enumerator.superclass