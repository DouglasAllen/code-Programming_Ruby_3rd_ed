Rational.public_methods(false).sort.each do |method| 
  puts method
end
puts
Rational.public_instance_methods(false).sort.each do |method| 
  puts method
end
puts
Rational.constants.sort.each do |constant| 
  puts constant
end

puts
puts Rational.superclass