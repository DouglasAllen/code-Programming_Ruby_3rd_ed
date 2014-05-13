Enumerator::Yielder.public_methods(false).sort.each do |method| 
  puts method
end
puts
Enumerator::Yielder.public_instance_methods(false).sort.each do |method| 
  puts method
end
puts
Enumerator::Yielder.constants.sort.each do |constant| 
  puts constant
end

puts
puts Enumerator::Yielder.superclass