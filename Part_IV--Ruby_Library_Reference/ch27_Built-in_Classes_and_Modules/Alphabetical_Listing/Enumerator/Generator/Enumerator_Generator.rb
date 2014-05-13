Enumerator::Generator.public_methods(false).sort.each do |method| 
  puts method
end
puts
Enumerator::Generator.public_instance_methods(false).sort.each do |method| 
  puts method
end
puts
Enumerator::Generator.constants.sort.each do |constant| 
  puts constant
end

puts
puts Enumerator::Generator.superclass